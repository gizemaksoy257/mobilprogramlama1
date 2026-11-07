import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Keeps persistent storage separate from scoring and widget logic.
abstract class ProgressRepository {
  Future<Map<int, int>> loadAnswers();
  Future<void> saveAnswers(Map<int, int> answers);
}

/// Lightweight test repository; no device plugins are required in tests.
class MemoryProgressRepository implements ProgressRepository {
  MemoryProgressRepository([Map<int, int>? initial])
      : _answers = Map<int, int>.of(initial ?? const <int, int>{});

  Map<int, int> _answers;

  @override
  Future<Map<int, int>> loadAnswers() async => Map<int, int>.of(_answers);

  @override
  Future<void> saveAnswers(Map<int, int> answers) async {
    _answers = Map<int, int>.of(answers);
  }
}

/// Local, non-sensitive progress storage; no login, network or tracking.
class SharedPreferencesProgressRepository implements ProgressRepository {
  SharedPreferencesProgressRepository({SharedPreferencesAsync? preferences})
      : _preferences = preferences ?? SharedPreferencesAsync();

  static const String storageKey = 'tuzak_avcisi.progress.v2';
  final SharedPreferencesAsync _preferences;

  @override
  Future<Map<int, int>> loadAnswers() async {
    final value = await _preferences.getString(storageKey);
    if (value == null || value.isEmpty) return <int, int>{};

    final decoded = jsonDecode(value);
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('İlerleme verisinin biçimi geçersiz.');
    }

    final result = <int, int>{};
    for (final entry in decoded.entries) {
      final id = int.tryParse(entry.key);
      final answer = entry.value;
      if (id != null && answer is int) result[id] = answer;
    }
    return result;
  }

  @override
  Future<void> saveAnswers(Map<int, int> answers) async {
    final jsonMap = answers.map((id, answer) => MapEntry('$id', answer));
    await _preferences.setString(storageKey, jsonEncode(jsonMap));
  }
}
