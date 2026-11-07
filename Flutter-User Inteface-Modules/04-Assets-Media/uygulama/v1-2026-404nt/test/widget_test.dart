import 'package:flutter_test/flutter_test.dart';
import 'package:dijital_muze/main.dart';
import 'package:dijital_muze/core/utils/decode_calculator.dart';
import 'package:dijital_muze/features/gallery/models/artwork.dart';

void main() {
  group('404nt Dijital Müze & Adli Bilişim Mimari Testleri', () {
    testWidgets('Uygulama açılış ve başlık testi (Smoke Test)',
        (WidgetTester tester) async {
      await tester.pumpWidget(const DijitalMuzeApp());
      await tester.pump();

      // Müze başlığı ve küratör alt başlığı başarıyla ekranda bulunmalı
      expect(find.text('ARS VISION • DİJİTAL MÜZE'), findsOneWidget);
      expect(find.text('Küratör & Sanat Koleksiyonu Rehberi'), findsOneWidget);
    });

    test('Adli Bilişim Decode Math Formül Doğrulaması (W x H x 4 RGBA8888)', () {
      // 1. Ham 4K Görsel: 3840 x 2560 x 4 bayt = 39.321.600 bayt (~39.3 MB RAM)
      final rawBytes = DecodeCalculator.calculateRawRamBytes(
        pixelWidth: 3840,
        pixelHeight: 2560,
      );
      expect(rawBytes, equals(39321600));

      // 2. Optimize Edilmiş Boyut (360 px hedef genişlik)
      final optimizedBytes = DecodeCalculator.calculateOptimizedRamBytes(
        originalWidth: 3840,
        originalHeight: 2560,
        targetWidthPx: 360,
      );
      // Hedef Yükseklik: (360 * 2560 / 3840) = 240 px -> 360 x 240 x 4 = 345.600 bayt (~337.5 KB)
      expect(optimizedBytes, equals(345600));

      // 3. Tasarruf Oranı: (39.321.600 - 345.600) / 39.321.600 * 100 > %90
      final savings = DecodeCalculator.calculateSavingsPercent(
        rawBytes: rawBytes,
        optimizedBytes: optimizedBytes,
      );
      expect(savings, greaterThan(90.0));
    });

    test('Müze Koleksiyon Veri Modeli Bütünlüğü', () {
      expect(Artwork.sampleMasterpieces.isNotEmpty, isTrue);
      final monaLisa = Artwork.sampleMasterpieces.first;
      expect(monaLisa.id, equals('mona_lisa'));
      expect(monaLisa.originalWidthPx, equals(3840));
      expect(monaLisa.originalHeightPx, equals(2560));
      expect(monaLisa.diskSizeMb, equals(3.8));
    });
  });
}
