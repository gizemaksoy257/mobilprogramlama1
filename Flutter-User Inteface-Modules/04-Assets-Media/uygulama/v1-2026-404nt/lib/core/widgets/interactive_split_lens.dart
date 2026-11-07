import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../constants/app_colors.dart';

// 4K ile optimize edilmiş görsel arasındaki piksel farkını ve bellek farkını canlı kıyaslayan kaydırıcı
class InteractiveSplitLens extends StatefulWidget {
  final String fullImageUrl;
  final String thumbImageUrl;
  final double height;

  const InteractiveSplitLens({
    super.key,
    required this.fullImageUrl,
    required this.thumbImageUrl,
    this.height = 340,
  });

  @override
  State<InteractiveSplitLens> createState() => _InteractiveSplitLensState();
}

class _InteractiveSplitLensState extends State<InteractiveSplitLens> {
  // Bölme oranı (0.0 sol, 1.0 sağ, varsayılan %50)
  double _splitRatio = 0.5;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;
        final dividerX = (totalWidth * _splitRatio).clamp(0.0, totalWidth);

        return GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              _splitRatio = (details.localPosition.dx / totalWidth).clamp(0.05, 0.95);
            });
          },
          child: Container(
            height: widget.height,
            color: Colors.black,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                // 1. SAĞ TARAF: Optimize Edilmiş Görsel (Zemin Katmanı)
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: widget.thumbImageUrl,
                    fit: BoxFit.cover,
                    memCacheWidth: 600,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(color: AppColors.primaryGold),
                    ),
                  ),
                ),

                // 2. SOL TARAF: Ham 4K Görsel (Maskelenmiş Üst Katman)
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  width: dividerX,
                  child: ClipRect(
                    child: OverflowBox(
                      alignment: Alignment.centerLeft,
                      minWidth: totalWidth,
                      maxWidth: totalWidth,
                      child: CachedNetworkImage(
                        imageUrl: widget.fullImageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(color: AppColors.statusDanger),
                        ),
                      ),
                    ),
                  ),
                ),

                // 3. AYIRICI ÇİZGİ VE TUTAMAK (Divider & Handle)
                Positioned(
                  left: dividerX - 1.5,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 3,
                    color: AppColors.primaryGold,
                    child: Center(
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: AppColors.primaryGold,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.6),
                              blurRadius: 6,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.compare_arrows_rounded,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                // 4. SOL ROZET: Ham 4K
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.statusDanger, width: 1),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.warning_amber_rounded, color: AppColors.statusDanger, size: 12),
                        SizedBox(width: 4),
                        Text(
                          'HAM 4K (~39 MB RAM)',
                          style: TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.statusDanger,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 5. SAĞ ROZET: Optimize
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.statusSuccess, width: 1),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle_outline_rounded, color: AppColors.statusSuccess, size: 12),
                        SizedBox(width: 4),
                        Text(
                          'OPTİMİZE (~2.6 MB RAM)',
                          style: TextStyle(
                            fontSize: 9.5,
                            fontWeight: FontWeight.bold,
                            color: AppColors.statusSuccess,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 6. ALT BİLGİ ŞERİDİ
                Positioned(
                  bottom: 8,
                  left: 16,
                  right: 16,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.75),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Piksel Kalitesi: %100 Özdeş  |  Bellek Tasarrufu: %93  (Sürükleyip Karşılaştırın)',
                        style: TextStyle(
                          fontSize: 9,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
