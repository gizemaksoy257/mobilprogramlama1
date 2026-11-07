import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

// Mobil cihazın video donanım dekoder (MediaCodec / AVPlayer) yuvalarını görselleştiren çip paneli
class HardwareCodecMatrix extends StatelessWidget {
  final int activeDecoders;
  final int leakedDecoders;
  final int totalSlots;

  const HardwareCodecMatrix({
    super.key,
    required this.activeDecoders,
    required this.leakedDecoders,
    this.totalSlots = 4,
  });

  @override
  Widget build(BuildContext context) {
    final isExhausted = (activeDecoders + leakedDecoders) >= totalSlots;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceCard,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isExhausted ? AppColors.statusDanger : AppColors.border,
          width: isExhausted ? 1.5 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.developer_board_rounded, color: AppColors.primaryGold, size: 16),
                  SizedBox(width: 6),
                  Text(
                    'Donanım Dekoder Yuvaları (SoC Codec Matrix)',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: isExhausted
                      ? AppColors.statusDanger.withValues(alpha: 0.2)
                      : AppColors.statusSuccess.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  isExhausted ? 'LİMİT AŞILDI' : 'DONANIM NORMAL',
                  style: TextStyle(
                    fontSize: 8.5,
                    fontWeight: FontWeight.bold,
                    color: isExhausted ? AppColors.statusDanger : AppColors.statusSuccess,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // 4 Yuvanın Kartları
          Row(
            children: List.generate(totalSlots, (index) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: index < totalSlots - 1 ? 6 : 0),
                  child: _buildSlotChip(index),
                ),
              );
            }),
          ),

          if (isExhausted) ...[
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.statusDanger.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: AppColors.statusDanger.withValues(alpha: 0.4)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.warning_amber_rounded, color: AppColors.statusDanger, size: 16),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'Tüm donanım oturumları doldu! Dispose edilmeyen hayalet oturumlar yeni videoların siyah ekran vermesine sebep olur.',
                      style: TextStyle(fontSize: 9.5, color: AppColors.statusDanger, height: 1.3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSlotChip(int slotIndex) {
    // Önce sızıntılar doldurulur, sonra aktif oturumlar, kalanı boş
    final isLeaked = slotIndex < leakedDecoders;
    final isActive = !isLeaked && slotIndex < (leakedDecoders + activeDecoders);

    Color borderColor = AppColors.border;
    Color bgColor = AppColors.surface;
    Color accentColor = AppColors.textMuted;
    String statusText = 'BOŞ';
    IconData iconData = Icons.radio_button_unchecked_rounded;

    if (isLeaked) {
      borderColor = AppColors.statusDanger;
      bgColor = AppColors.statusDanger.withValues(alpha: 0.12);
      accentColor = AppColors.statusDanger;
      statusText = 'SIZINTI';
      iconData = Icons.gpp_bad_rounded;
    } else if (isActive) {
      borderColor = AppColors.statusInfo;
      bgColor = AppColors.statusInfo.withValues(alpha: 0.15);
      accentColor = AppColors.statusInfo;
      statusText = 'AKTİF';
      iconData = Icons.play_arrow_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: isLeaked || isActive ? 1.2 : 1),
      ),
      child: Column(
        children: [
          Icon(iconData, size: 14, color: accentColor),
          const SizedBox(height: 4),
          Text(
            'CHIP #${slotIndex + 1}',
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            statusText,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
