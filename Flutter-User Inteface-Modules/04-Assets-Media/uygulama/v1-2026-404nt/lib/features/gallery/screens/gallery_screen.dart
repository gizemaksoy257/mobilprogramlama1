import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../artwork_detail/screens/artwork_detail_screen.dart';
import '../models/artwork.dart';
import '../widgets/artwork_card.dart';

class GalleryScreen extends StatefulWidget {
  final ValueNotifier<bool> invertOversizedNotifier;

  const GalleryScreen({
    super.key,
    required this.invertOversizedNotifier,
  });

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // cacheWidth ile boyut küçültme açık mı
  bool _isOptimizedMode = true;

  // Çevrimdışı (offline) önbellek testi açık mı
  bool _isOfflineSimulation = false;

  @override
  Widget build(BuildContext context) {
    final dpr = MediaQuery.devicePixelRatioOf(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/museum_badge.png',
                width: 26,
                height: 26,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ARS VISION • DİJİTAL MÜZE',
                  style: TextStyle(
                    color: AppColors.primaryGold,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  'Küratör & Sanat Koleksiyonu Rehberi',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 10.5,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Performans & Mimari Notlar',
            icon: const Icon(Icons.info_outline_rounded, color: AppColors.primaryGold),
            onPressed: _showArchitectureGuideDialog,
          ),
          IconButton(
            tooltip: 'Görsel Önbelleğini Boşalt',
            icon: const Icon(Icons.delete_sweep_rounded,
                color: AppColors.textSecondary),
            onPressed: () {
              PaintingBinding.instance.imageCache.clear();
              PaintingBinding.instance.imageCache.clearLiveImages();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Flutter görsel önbelleği temizlendi.'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Üst Kontrol ve Telemetri Konsolu
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            color: AppColors.surfaceCard,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.devices_rounded,
                            size: 14, color: AppColors.primaryGold),
                        const SizedBox(width: 4),
                        Text(
                          'Ekran DPR: ${dpr.toStringAsFixed(2)}x',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: _isOptimizedMode
                            ? AppColors.statusSuccess.withValues(alpha: 0.15)
                            : AppColors.statusDanger.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _isOptimizedMode
                            ? '%93 RAM TASARRUFU'
                            : 'HAM 4K DECODE AKTİF',
                        style: TextStyle(
                          fontSize: 9.5,
                          fontWeight: FontWeight.bold,
                          color: _isOptimizedMode
                              ? AppColors.statusSuccess
                              : AppColors.statusDanger,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // İnteraktif Test Düğmeleri
                Row(
                  children: [
                    Expanded(
                      child: _buildTogglePill(
                        title: 'cacheWidth',
                        subtitle: _isOptimizedMode ? 'Hedef Çözünürlük' : 'Ham 4K Decode',
                        isActive: _isOptimizedMode,
                        activeColor: AppColors.statusSuccess,
                        onChanged: (val) {
                          setState(() {
                            _isOptimizedMode = val;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8),

                    ValueListenableBuilder<bool>(
                      valueListenable: widget.invertOversizedNotifier,
                      builder: (context, invertValue, _) {
                        return Expanded(
                          child: _buildTogglePill(
                            title: 'DevTools Invert',
                            subtitle: invertValue ? 'Ters Renk Açık' : 'Normal Renk',
                            isActive: invertValue,
                            activeColor: AppColors.primaryGold,
                            onChanged: (val) {
                              widget.invertOversizedNotifier.value = val;
                              debugInvertOversizedImages = val;
                              setState(() {});
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 8),

                    Expanded(
                      child: _buildTogglePill(
                        title: 'Çevrimdışı',
                        subtitle: _isOfflineSimulation ? 'Disk Önbelleği' : 'Ağ Bağlantısı',
                        isActive: _isOfflineSimulation,
                        activeColor: AppColors.statusInfo,
                        onChanged: (val) {
                          setState(() {
                            _isOfflineSimulation = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Eserlerin Grid Listesi
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.58,
              ),
              itemCount: Artwork.sampleMasterpieces.length,
              itemBuilder: (context, index) {
                final artwork = Artwork.sampleMasterpieces[index];
                return ArtworkCard(
                  artwork: artwork,
                  isOptimizedMode: _isOptimizedMode,
                  isSimulatedOffline: _isOfflineSimulation,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ArtworkDetailScreen(artwork: artwork),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTogglePill({
    required String title,
    required String subtitle,
    required bool isActive,
    required Color activeColor,
    required ValueChanged<bool> onChanged,
  }) {
    return InkWell(
      onTap: () => onChanged(!isActive),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: isActive
              ? activeColor.withValues(alpha: 0.12)
              : AppColors.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isActive ? activeColor : AppColors.border,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: isActive ? activeColor : AppColors.textSecondary,
                  ),
                ),
                Icon(
                  isActive ? Icons.check_circle_rounded : Icons.circle_outlined,
                  size: 11,
                  color: isActive ? activeColor : AppColors.textMuted,
                ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 8.5,
                color: isActive ? AppColors.textPrimary : AppColors.textMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showArchitectureGuideDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Row(
          children: [
            Icon(Icons.architecture_rounded, color: AppColors.primaryGold),
            SizedBox(width: 8),
            Text(
              'Performans ve Mimari Notlar',
              style: TextStyle(color: AppColors.textPrimary, fontSize: 15),
            ),
          ],
        ),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _GuideItem(
                badge: 'DPR & Varlıklar',
                title: 'Çözünürlük Varyantları',
                desc:
                    'Cihazın piksel yoğunluğuna (DPR) göre Flutter otomatik olarak 1.0x, 2.0x veya 3.0x klasöründen varlık seçer.',
              ),
              _GuideItem(
                badge: 'Decode Math',
                title: 'RAM Tüketimi (W × H × 4)',
                desc:
                    '4K bir görsel diskte 3-4 MB sıkıştırılmış JPEG iken belleğe açıldığında ~39 MB yer kaplar. Listedeki birden fazla görsel OOM hatasına yol açabilir.',
              ),
              _GuideItem(
                badge: 'cacheWidth',
                title: 'Decoder Seviyesinde Boyutlandırma',
                desc:
                    'cacheWidth parametresi ile görsel GPU\'ya inmeden önce hedef ekrandaki boyuta decode edilir. Böylece RAM tüketimi ~2.6 MB seviyesine iner.',
              ),
              _GuideItem(
                badge: 'Offline-First',
                title: 'Çevrimdışı Dayanıklılık',
                desc:
                    'CachedNetworkImage ve Shimmer iskeleti sayesinde internet kesilse bile görseller disk önbelleğinden anında gösterilir.',
              ),
              _GuideItem(
                badge: 'Yaşam Döngüsü',
                title: 'Video Controller Dispose',
                desc:
                    'Video oynatıcıdan çıkarken controller dispose edilmezse native taraftaki donanım dekoder oturumu açık kalarak sızıntı oluşturur.',
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('KAPAT',
                style: TextStyle(color: AppColors.primaryGold)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class _GuideItem extends StatelessWidget {
  final String badge;
  final String title;
  final String desc;

  const _GuideItem({
    required this.badge,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                decoration: BoxDecoration(
                  color: AppColors.primaryGold.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryGold,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 10.5,
              color: AppColors.textSecondary,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }
}
