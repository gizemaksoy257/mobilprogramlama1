// Görselin ekranda kapladığı alan ile RAM tüketimini hesaplayan yardımcı sınıf
// Formül: piksel genişliği * piksel yüksekliği * 4 bayt (RGBA8888)
class DecodeCalculator {
  static const int bytesPerPixel = 4; // RGBA8888 renk formatı

  // Orijinal görselin belleğe tam açıldığında kaplayacağı tahmini RAM
  static int calculateRawRamBytes({
    required int pixelWidth,
    required int pixelHeight,
  }) {
    return pixelWidth * pixelHeight * bytesPerPixel;
  }

  // Hedef boyuta (cacheWidth) göre decode edildiğinde harcanacak RAM
  static int calculateOptimizedRamBytes({
    required int originalWidth,
    required int originalHeight,
    required int targetWidthPx,
  }) {
    if (originalWidth <= 0 || originalHeight <= 0) return 0;
    final aspectRatio = originalHeight / originalWidth;
    final targetHeightPx = (targetWidthPx * aspectRatio).round();
    return targetWidthPx * targetHeightPx * bytesPerPixel;
  }

  // RAM tasarruf oranı
  static double calculateSavingsPercent({
    required int rawBytes,
    required int optimizedBytes,
  }) {
    if (rawBytes <= 0) return 0.0;
    final saved = (rawBytes - optimizedBytes) / rawBytes * 100.0;
    return saved.clamp(0.0, 99.9);
  }

  // Bayt değerini MB veya KB olarak formatlama
  static String formatBytes(int bytes) {
    if (bytes >= 1024 * 1024) {
      final mb = bytes / (1024 * 1024);
      return '${mb.toStringAsFixed(1)} MB';
    } else if (bytes >= 1024) {
      final kb = bytes / 1024;
      return '${kb.toStringAsFixed(1)} KB';
    }
    return '$bytes B';
  }
}
