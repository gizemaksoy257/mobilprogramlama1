import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../utils/decode_calculator.dart';

// Kart altında görselin bellek ve boyut analizini gösteren bilgi şeridi ve canlı RAM barı
class ForensicsHud extends StatelessWidget {
  final int originalWidth;
  final int originalHeight;
  final double diskSizeMb;
  final int? targetDecodeWidth;
  final bool isOptimizedMode;
  final bool isFromDiskCache;

  const ForensicsHud({
    super.key,
    required this.originalWidth,
    required this.originalHeight,
    required this.diskSizeMb,
    required this.targetDecodeWidth,
    required this.isOptimizedMode,
    this.isFromDiskCache = false,
  });

  @override
  Widget build(BuildContext context) {
    final rawBytes = DecodeCalculator.calculateRawRamBytes(
      pixelWidth: originalWidth,
      pixelHeight: originalHeight,
    );

    final optimizedBytes = isOptimizedMode && targetDecodeWidth != null
        ? DecodeCalculator.calculateOptimizedRamBytes(
            originalWidth: originalWidth,
            originalHeight: originalHeight,
            targetWidthPx: targetDecodeWidth!,
          )
        : rawBytes;

    final savingsPercent = isOptimizedMode && targetDecodeWidth != null
        ? DecodeCalculator.calculateSavingsPercent(
            rawBytes: rawBytes,
            optimizedBytes: optimizedBytes,
          )
        : 0.0;

    // Tek kart için teorik risk eşiği (40 MB baz alınarak bar doluluk oranı)
    final double ramLoadRatio = (optimizedBytes / (40 * 1024 * 1024)).clamp(0.05, 1.0);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.95),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        border: Border.all(
          color: isOptimizedMode
              ? AppColors.statusSuccess.withValues(alpha: 0.35)
              : AppColors.statusDanger.withValues(alpha: 0.45),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    isOptimizedMode
                        ? Icons.check_circle_rounded
                        : Icons.warning_rounded,
                    color: isOptimizedMode
                        ? AppColors.statusSuccess
                        : AppColors.statusDanger,
                    size: 13,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    isOptimizedMode ? 'OPTİMİZE DECODE' : 'HAM 4K DECODE',
                    style: TextStyle(
                      fontSize: 9.5,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                      color: isOptimizedMode
                          ? AppColors.statusSuccess
                          : AppColors.statusDanger,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: isFromDiskCache
                      ? AppColors.statusInfo.withValues(alpha: 0.18)
                      : Colors.deepPurple.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  isFromDiskCache ? 'DİSK ÖNBELLEĞİ' : 'AĞ AKIŞI',
                  style: TextStyle(
                    fontSize: 8.5,
                    fontWeight: FontWeight.w600,
                    color: isFromDiskCache
                        ? AppColors.statusInfo
                        : Colors.purpleAccent,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          // Canlı RAM Gösterge Barı (Visual RAM Gauge)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isOptimizedMode ? 'BELLEK YÜKÜ: GÜVENLİ' : 'BELLEK YÜKÜ: KRİTİK SEVİYE',
                    style: TextStyle(
                      fontSize: 7.5,
                      fontWeight: FontWeight.bold,
                      color: isOptimizedMode ? AppColors.statusSuccess : AppColors.statusDanger,
                    ),
                  ),
                  Text(
                    DecodeCalculator.formatBytes(optimizedBytes),
                    style: TextStyle(
                      fontSize: 8.5,
                      fontWeight: FontWeight.bold,
                      color: isOptimizedMode ? AppColors.statusSuccess : AppColors.statusDanger,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Stack(
                  children: [
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: AppColors.surfaceCard,
                    ),
                    AnimatedFractionallySizedBox(
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeOutCubic,
                      widthFactor: ramLoadRatio,
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: isOptimizedMode
                                ? [AppColors.statusSuccess, Colors.lightGreenAccent]
                                : [AppColors.statusWarning, AppColors.statusDanger],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildMetric('DİSK', '${diskSizeMb.toStringAsFixed(1)} MB', AppColors.textSecondary),
              _buildMetric('PİKSEL', '${originalWidth}x$originalHeight', AppColors.textSecondary),
              _buildMetric(
                'TASARRUF',
                isOptimizedMode ? '%${savingsPercent.toStringAsFixed(0)}' : '%0',
                isOptimizedMode ? AppColors.statusSuccess : AppColors.statusDanger,
                isBold: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMetric(String label, String value, Color color, {bool isBold = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 7.5,
            color: AppColors.textMuted,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 1),
        Text(
          value,
          style: TextStyle(
            fontSize: 9.5,
            color: color,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
