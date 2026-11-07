import 'package:flutter_test/flutter_test.dart';
import 'package:tuzak_avcisi/data/scenarios.dart';
import 'package:tuzak_avcisi/state/progress_repository.dart';
import 'package:tuzak_avcisi/state/progress_store.dart';

void main() {
  test('12 senaryo, her biri 3 seçenek ve geçerli doğru indeks', () {
    expect(scenarios.length, 12);
    expect(scenarios.map((s) => s.id).toSet().length, 12);
    for (final s in scenarios) {
      expect(s.options.length, 3);
      expect(s.correctIndex, inInclusiveRange(0, 2));
      expect(s.clues, isNotEmpty);
    }
  });

  test('İlk doğru cevap +10 puan; aynı senaryo ikinci kez puan üretmez', () async {
    final repository = MemoryProgressRepository();
    final progress = ProgressStore(repository: repository);
    await progress.load();
    final s = scenarios.first;
    expect(progress.submit(s, s.correctIndex), isTrue);
    expect(progress.points, 10);
    expect(progress.completedCount, 1);
    expect(progress.submit(s, (s.correctIndex + 1) % s.options.length), isFalse);
    expect(progress.points, 10);
    expect(progress.correctCount, 1);
    await progress.waitForPendingWrites();
    expect((await repository.loadAnswers())[s.id], s.correctIndex);
    progress.dispose();
  });

  test('Yanlış ilk cevap 0 puandır; sıfırlama kalıcı veriyi de temizler', () async {
    final repository = MemoryProgressRepository();
    final progress = ProgressStore(repository: repository);
    await progress.load();
    final s = scenarios.first;
    final wrong = (s.correctIndex + 1) % s.options.length;
    progress.submit(s, wrong);
    expect(progress.points, 0);
    expect(progress.incorrectCount, 1);
    progress.reset();
    expect(progress.completedCount, 0);
    expect(progress.points, 0);
    await progress.waitForPendingWrites();
    expect(await repository.loadAnswers(), isEmpty);
    progress.dispose();
  });

  test('İlerleme yeni bir uygulama oturumunda geri yüklenir', () async {
    final repository = MemoryProgressRepository();
    final firstRun = ProgressStore(repository: repository);
    await firstRun.load();
    final firstScenario = scenarios.first;
    firstRun.submit(firstScenario, firstScenario.correctIndex);
    await firstRun.waitForPendingWrites();
    firstRun.dispose();

    final secondRun = ProgressStore(repository: repository);
    await secondRun.load();
    expect(secondRun.isReady, isTrue);
    expect(secondRun.choiceFor(firstScenario.id), firstScenario.correctIndex);
    expect(secondRun.points, 10);
    expect(secondRun.completedCount, 1);
    secondRun.dispose();
  });

  test('Artık var olmayan / geçersiz senaryo yanıtları yüklenmez', () async {
    final s = scenarios.first;
    final repository = MemoryProgressRepository(<int, int>{
      99999: 0,
      s.id: 99,
      scenarios[1].id: scenarios[1].correctIndex,
    });
    final progress = ProgressStore(repository: repository);
    await progress.load();
    expect(progress.completedCount, 1);
    expect(progress.choiceFor(s.id), isNull);
    progress.dispose();
  });
}
