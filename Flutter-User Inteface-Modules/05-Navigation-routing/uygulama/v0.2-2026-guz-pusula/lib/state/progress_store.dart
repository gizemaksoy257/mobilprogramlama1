import 'package:flutter/foundation.dart';

import '../data/scenarios.dart';
import '../models/scenario.dart';
import 'progress_repository.dart';

/// First attempts are immutable; practice answers are never recorded here.
class ProgressStore extends ChangeNotifier {
  ProgressStore({ProgressRepository? repository})
      : _repository = repository ?? MemoryProgressRepository();

  final ProgressRepository _repository;
  final Map<int, int> _answers = <int, int>{};
  Future<void> _pendingSave = Future<void>.value();
  bool _ready = false;
  String? _storageWarning;

  bool get isReady => _ready;
  String? get storageWarning => _storageWarning;

  Future<void> load() async {
    try {
      final stored = await _repository.loadAnswers();
      _answers
        ..clear()
        ..addEntries(stored.entries.where((entry) {
          for (final scenario in scenarios) {
            if (scenario.id == entry.key) {
              return entry.value >= 0 && entry.value < scenario.options.length;
            }
          }
          return false;
        }));
      _storageWarning = null;
    } catch (_) {
      _storageWarning = 'Kayıtlı ilerleme okunamadı. Bu oturumun kaydını kontrol et.';
    } finally {
      _ready = true;
      notifyListeners();
    }
  }

  int? choiceFor(int scenarioId) => _answers[scenarioId];

  bool isCompleted(int scenarioId) => _answers.containsKey(scenarioId);

  /// Returns false if this scenario already has a scored first attempt.
  bool submit(Scenario scenario, int choiceIndex) {
    if (_answers.containsKey(scenario.id)) return false;
    if (choiceIndex < 0 || choiceIndex >= scenario.options.length) {
      throw RangeError.index(choiceIndex, scenario.options);
    }
    _answers[scenario.id] = choiceIndex;
    notifyListeners();
    _queueSave();
    return true;
  }

  void _queueSave() {
    final snapshot = Map<int, int>.of(_answers);
    // Sequential writes ensure that an older answer cannot overwrite Reset.
    _pendingSave = _pendingSave.then((_) async {
      try {
        await _repository.saveAnswers(snapshot);
        if (_storageWarning != null) {
          _storageWarning = null;
          notifyListeners();
        }
      } catch (_) {
        _storageWarning = 'İlerleme kaydedilemedi. Cihazın depolamasını kontrol et.';
        notifyListeners();
      }
    });
  }

  /// Intended for tests / deterministic state checks.
  Future<void> waitForPendingWrites() => _pendingSave;

  int get completedCount => _answers.length;

  int get correctCount => scenarios
      .where((scenario) => _answers[scenario.id] == scenario.correctIndex)
      .length;

  int get incorrectCount => completedCount - correctCount;
  int get points => correctCount * 10;
  double get completionRate => scenarios.isEmpty ? 0 : completedCount / scenarios.length;
  double get accuracy => completedCount == 0 ? 0 : correctCount / completedCount;

  void reset() {
    _answers.clear();
    notifyListeners();
    _queueSave();
  }
}
