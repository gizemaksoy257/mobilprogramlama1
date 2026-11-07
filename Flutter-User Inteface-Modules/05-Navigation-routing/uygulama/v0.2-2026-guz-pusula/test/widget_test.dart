import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuzak_avcisi/data/scenarios.dart';
import 'package:tuzak_avcisi/main.dart';
import 'package:tuzak_avcisi/state/progress_repository.dart';

void main() {
  testWidgets('Ana sayfadan senaryolar listesine geçilir', (tester) async {
    await tester.pumpWidget(TuzakAvcisiApp(repository: MemoryProgressRepository()));
    await tester.pumpAndSettle();
    expect(find.text('Dolandırıcılığı fark edebilir misin?'), findsOneWidget);
    await tester.tap(find.text('Senaryolara başla'));
    await tester.pumpAndSettle();
    expect(find.text('Senaryolar'), findsOneWidget);
    expect(find.text('Kargon teslim edilemedi'), findsOneWidget);
  });

  testWidgets('Tamamlanan senaryoda alıştırma puanı değiştirmez', (tester) async {
    final s = scenarios.first;
    final repository = MemoryProgressRepository(<int, int>{s.id: s.correctIndex});
    await tester.pumpWidget(TuzakAvcisiApp(repository: repository));
    await tester.pumpAndSettle();

    // Use the always-visible primary CTA instead of an offscreen, lazy-list tile.
    await tester.tap(find.text('Senaryolara başla'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(s.title));
    await tester.pumpAndSettle();
    // The practice action may be below the viewport in widget tests.
    await tester.scrollUntilVisible(
      find.text('Alıştırma modunda tekrar dene'),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text('Alıştırma modunda tekrar dene'));
    await tester.pumpAndSettle();
    // The information banner is above the practice choices.
    await tester.scrollUntilVisible(
      find.textContaining('Alıştırma modu:'),
      -200,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.textContaining('Alıştırma modu:'), findsOneWidget);

    final wrongOption = s.options[(s.correctIndex + 1) % s.options.length];
    await tester.scrollUntilVisible(
      find.text(wrongOption),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text(wrongOption));
    await tester.pumpAndSettle();
    expect(find.text('Alıştırma tamamlandı · Puanın değişmedi'), findsOneWidget);
    expect((await repository.loadAnswers())[s.id], s.correctIndex);
  });
}
