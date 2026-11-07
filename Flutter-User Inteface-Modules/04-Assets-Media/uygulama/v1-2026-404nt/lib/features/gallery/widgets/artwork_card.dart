import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/decode_calculator.dart';
import '../../../core/widgets/forensics_hud.dart';
import '../models/artwork.dart';

// 3D Çift Yüzlü Kart (Ön Yüz: Müze Tablosu | Arka Yüz: Skia/Impeller Render Röntgeni)
class ArtworkCard extends StatefulWidget {
  final Artwork artwork;
  final bool isOptimizedMode;
  final bool isSimulatedOffline;
  final VoidCallback onTap;

  const ArtworkCard({
    super.key,
    required this.artwork,
    required this.isOptimizedMode,
    required this.isSimulatedOffline,
    required this.onTap,
  });

  @override
  State<ArtworkCard> createState() => _ArtworkCardState();
}

class _ArtworkCardState extends State<ArtworkCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _flipController;
  late Animation<double> _flipAnimation;
  bool _isBackVisible = false;

  @override
  void initState() {
    super.initState();
    _flipController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _flipAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _flipController, curve: Curves.easeInOutCubic),
    )..addListener(() {
        if (_flipAnimation.value >= 0.5 && !_isBackVisible) {
          setState(() => _isBackVisible = true);
        } else if (_flipAnimation.value < 0.5 && _isBackVisible) {
          setState(() => _isBackVisible = false);
        }
      });
  }

  @override
  void dispose() {
    _flipController.dispose();
    super.dispose();
  }

  void _toggleFlip() {
    if (_flipController.isCompleted) {
      _flipController.reverse();
    } else {
      _flipController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _flipAnimation,
      builder: (context, child) {
        final angle = _flipAnimation.value * math.pi;

        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Perspektif derinliği
            ..rotateY(angle),
          alignment: Alignment.center,
          child: _isBackVisible
              // Arka yüz 180 derece ters dönmesin diye aynalama düzeltmesi
              ? Transform(
                  transform: Matrix4.identity()..rotateY(math.pi),
                  alignment: Alignment.center,
                  child: _buildBackCard(),
                )
              : _buildFrontCard(),
        );
      },
    );
  }

  // ÖN YÜZ: Klasik Lüks Müze Tablosu + Telemetri Bandı
  Widget _buildFrontCard() {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    final cardWidthLogical = (MediaQuery.sizeOf(context).width - 36) / 2;
    final targetDecodeWidthPx = (cardWidthLogical * dpr).round();

    return GestureDetector(
      onTap: widget.onTap,
      onDoubleTap: _toggleFlip,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: widget.isOptimizedMode
                ? AppColors.border
                : AppColors.statusDanger.withValues(alpha: 0.5),
            width: widget.isOptimizedMode ? 1 : 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.35),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1.1,
                  child: widget.isSimulatedOffline
                      ? CachedNetworkImage(
                          imageUrl: widget.isOptimizedMode
                              ? widget.artwork.thumbUrl
                              : widget.artwork.fullImageUrl,
                          fit: BoxFit.cover,
                          memCacheWidth:
                              widget.isOptimizedMode ? targetDecodeWidthPx : null,
                          placeholder: (context, url) => _buildShimmerPlaceholder(),
                          errorWidget: (context, url, error) => _buildOfflineFallback(),
                        )
                      : CachedNetworkImage(
                          imageUrl: widget.isOptimizedMode
                              ? widget.artwork.thumbUrl
                              : widget.artwork.fullImageUrl,
                          fit: BoxFit.cover,
                          memCacheWidth:
                              widget.isOptimizedMode ? targetDecodeWidthPx : null,
                          fadeInDuration: const Duration(milliseconds: 300),
                          placeholder: (context, url) => _buildShimmerPlaceholder(),
                          errorWidget: (context, url, error) => _buildOfflineFallback(),
                        ),
                ),

                // Sol Üst: Çözünürlük Etiketi
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.75),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      widget.isOptimizedMode
                          ? '${targetDecodeWidthPx}px Decode'
                          : '${widget.artwork.originalWidthPx}px Ham 4K',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: widget.isOptimizedMode
                            ? AppColors.primaryGoldLight
                            : AppColors.statusDanger,
                      ),
                    ),
                  ),
                ),

                // Sağ Üst: 3D Flip (Röntgen) Düğmesi
                Positioned(
                  top: 6,
                  right: 6,
                  child: Material(
                    color: Colors.black.withValues(alpha: 0.65),
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: _toggleFlip,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.flip_camera_android_rounded,
                          color: AppColors.primaryGold,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.artwork.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${widget.artwork.artist} (${widget.artwork.year})',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 10.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 4),

            ForensicsHud(
              originalWidth: widget.artwork.originalWidthPx,
              originalHeight: widget.artwork.originalHeightPx,
              diskSizeMb: widget.artwork.diskSizeMb,
              targetDecodeWidth: targetDecodeWidthPx,
              isOptimizedMode: widget.isOptimizedMode,
              isFromDiskCache: widget.isSimulatedOffline,
            ),
          ],
        ),
      ),
    );
  }

  // ARKA YÜZ: Skia / Impeller Donanım Röntgen Raporu
  Widget _buildBackCard() {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    final cardWidthLogical = (MediaQuery.sizeOf(context).width - 36) / 2;
    final targetDecodeWidthPx = (cardWidthLogical * dpr).round();
    final rawBytes = DecodeCalculator.calculateRawRamBytes(
      pixelWidth: widget.artwork.originalWidthPx,
      pixelHeight: widget.artwork.originalHeightPx,
    );

    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryGold, width: 1.2),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryGold.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.terminal_rounded, color: AppColors.primaryGold, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'RENDER RÖNTGENİ',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryGold,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: _toggleFlip,
                    child: const Icon(Icons.close_rounded, color: AppColors.textMuted, size: 16),
                  ),
                ],
              ),
              const Divider(color: AppColors.border, height: 16),
              _buildReportRow('Ham Matris:', '${widget.artwork.originalWidthPx} x ${widget.artwork.originalHeightPx} px'),
              _buildReportRow('Renk Formatı:', 'RGBA8888 (4 bayt/px)'),
              _buildReportRow('Ham Bitmap RAM:', DecodeCalculator.formatBytes(rawBytes)),
              _buildReportRow('Ekran DPR Oranı:', '${dpr.toStringAsFixed(2)}x (Retina)'),
              _buildReportRow('Hedef Decode:', '${targetDecodeWidthPx}px (cacheWidth)'),
              _buildReportRow('Önbellek Türü:', 'Disk LRU / SQLite'),
            ],
          ),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.surfaceCard,
              foregroundColor: AppColors.primaryGold,
              padding: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: AppColors.border),
              ),
            ),
            icon: const Icon(Icons.undo_rounded, size: 14),
            label: const Text('Görseli Göster', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            onPressed: _toggleFlip,
          ),
        ],
      ),
    );
  }

  Widget _buildReportRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 9.5, color: AppColors.textMuted)),
          Text(value, style: const TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        ],
      ),
    );
  }

  Widget _buildShimmerPlaceholder() {
    return Shimmer.fromColors(
      baseColor: const Color(0xFF222631),
      highlightColor: const Color(0xFF2E3444),
      child: Container(color: Colors.black),
    );
  }

  Widget _buildOfflineFallback() {
    return Container(
      color: AppColors.surface,
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off_rounded, color: AppColors.statusWarning, size: 28),
            SizedBox(height: 4),
            Text('Çevrimdışı (Taş Duvar)', style: TextStyle(color: AppColors.textMuted, fontSize: 9)),
          ],
        ),
      ),
    );
  }
}
