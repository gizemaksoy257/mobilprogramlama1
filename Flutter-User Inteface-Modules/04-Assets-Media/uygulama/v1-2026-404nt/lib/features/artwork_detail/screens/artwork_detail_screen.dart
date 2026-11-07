import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/interactive_split_lens.dart';
import '../../gallery/models/artwork.dart';
import '../widgets/hardware_codec_matrix.dart';

class ArtworkDetailScreen extends StatefulWidget {
  final Artwork artwork;

  const ArtworkDetailScreen({
    super.key,
    required this.artwork,
  });

  @override
  State<ArtworkDetailScreen> createState() => _ArtworkDetailScreenState();
}

class _ArtworkDetailScreenState extends State<ArtworkDetailScreen>
    with WidgetsBindingObserver {
  VideoPlayerController? _videoController;
  Future<void>? _initializeVideoPlayerFuture;
  bool _isVideoPlaying = false;
  bool _simulateLeakOnExit = false;

  // Görsel modu: 0 = Split Lens (Karşılaştırma), 1 = Pinch Zoom (Detay)
  int _imageModeIndex = 0;

  // Donanım dekoder oturumlarını izlemek için sayaçlar
  static int activeHardwareDecoders = 0;
  static int leakedGhostSessions = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _setupVideoController();
  }

  void _setupVideoController() {
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(widget.artwork.videoUrl),
    );

    activeHardwareDecoders++;

    _initializeVideoPlayerFuture = _videoController!.initialize().then((_) {
      if (mounted) {
        setState(() {});
      }
    });

    _videoController!.addListener(() {
      if (mounted) {
        final isPlaying = _videoController!.value.isPlaying;
        if (_isVideoPlaying != isPlaying) {
          setState(() {
            _isVideoPlaying = isPlaying;
          });
        }
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _videoController?.pause();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    if (_simulateLeakOnExit) {
      leakedGhostSessions++;
      activeHardwareDecoders--;
    } else {
      _videoController?.dispose();
      activeHardwareDecoders--;
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text(
          widget.artwork.title,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Sızdırılmış Oturumları Sıfırla',
            icon: const Icon(Icons.restart_alt_rounded, color: AppColors.textSecondary),
            onPressed: () {
              setState(() {
                leakedGhostSessions = 0;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Donanım dekoder yuvaları sıfırlandı.')),
              );
            },
          ),
          IconButton(
            tooltip: 'Dekoder Durumu',
            icon: const Icon(Icons.developer_board_rounded, color: AppColors.primaryGold),
            onPressed: _showHardwareDecoderDialog,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Görsel Mod Seçici (Split Lens vs. Zoom)
            Container(
              color: AppColors.surface,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSegmentButton(0, '4K vs Decode Kıyaslama Lensi', Icons.compare_rounded),
                  const SizedBox(width: 8),
                  _buildSegmentButton(1, 'Serbest Yakınlaştırma', Icons.zoom_in_rounded),
                ],
              ),
            ),

            // 2. Görsel Alanı (Seçilen Moda Göre)
            if (_imageModeIndex == 0)
              InteractiveSplitLens(
                fullImageUrl: widget.artwork.fullImageUrl,
                thumbImageUrl: widget.artwork.thumbUrl,
                height: 330,
              )
            else
              Container(
                height: 330,
                color: Colors.black,
                child: InteractiveViewer(
                  minScale: 1.0,
                  maxScale: 4.0,
                  child: CachedNetworkImage(
                    imageUrl: widget.artwork.fullImageUrl,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(color: AppColors.primaryGold),
                    ),
                  ),
                ),
              ),

            // 3. Sızıntı Test Paneli
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: AppColors.surfaceCard,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        _simulateLeakOnExit
                            ? Icons.error_outline_rounded
                            : Icons.check_circle_outline_rounded,
                        color: _simulateLeakOnExit
                            ? AppColors.statusDanger
                            : AppColors.statusSuccess,
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        _simulateLeakOnExit
                            ? 'Sızıntı Testi Açık (dispose çağrılmayacak)'
                            : 'Normal Çıkış (controller dispose edilecek)',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: _simulateLeakOnExit
                              ? AppColors.statusDanger
                              : AppColors.statusSuccess,
                        ),
                      ),
                    ],
                  ),
                  Switch(
                    value: _simulateLeakOnExit,
                    activeThumbColor: AppColors.statusDanger,
                    onChanged: (val) {
                      setState(() {
                        _simulateLeakOnExit = val;
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.artwork.title,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${widget.artwork.artist} • ${widget.artwork.year}',
                    style: const TextStyle(
                      color: AppColors.primaryGold,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.artwork.description,
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Divider(color: AppColors.border),
                  const SizedBox(height: 12),

                  // Küratör Videosu
                  const Row(
                    children: [
                      Icon(Icons.video_library_rounded,
                          color: AppColors.primaryGold, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Restorasyon ve İnceleme Videosu',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Native donanım çözücüsü (ExoPlayer / AVPlayer) üzerinden oynatılır.',
                    style: TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(height: 12),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 200,
                      color: Colors.black,
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                AspectRatio(
                                  aspectRatio:
                                      _videoController!.value.aspectRatio,
                                  child: VideoPlayer(_videoController!),
                                ),
                                IconButton(
                                  iconSize: 50,
                                  icon: Icon(
                                    _isVideoPlaying
                                        ? Icons.pause_circle_filled_rounded
                                        : Icons.play_circle_filled_rounded,
                                    color: Colors.white.withValues(alpha: 0.85),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isVideoPlaying
                                          ? _videoController!.pause()
                                          : _videoController!.play();
                                    });
                                  },
                                ),
                              ],
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: AppColors.primaryGold,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 4. DONANIM DEKODER ÇİP MATRİSİ (FAZ 3)
                  HardwareCodecMatrix(
                    activeDecoders: _isVideoPlaying ? 1 : 0,
                    leakedDecoders: leakedGhostSessions,
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _simulateLeakOnExit
                          ? AppColors.statusDanger
                          : AppColors.surfaceCard,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: _simulateLeakOnExit
                              ? AppColors.statusDanger
                              : AppColors.border,
                        ),
                      ),
                    ),
                    icon: Icon(
                      _simulateLeakOnExit
                          ? Icons.warning_rounded
                          : Icons.arrow_back_rounded,
                    ),
                    label: Text(
                      _simulateLeakOnExit
                          ? 'Sızıntıyı Test Et ve Çık'
                          : 'Geri Dön (Controller Kapat)',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegmentButton(int index, String label, IconData icon) {
    final isSelected = _imageModeIndex == index;
    return InkWell(
      onTap: () => setState(() => _imageModeIndex = index),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryGold.withValues(alpha: 0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primaryGold : AppColors.border,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: isSelected ? AppColors.primaryGold : AppColors.textMuted),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? AppColors.primaryGold : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showHardwareDecoderDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Row(
          children: [
            Icon(Icons.memory_rounded, color: AppColors.primaryGold),
            SizedBox(width: 8),
            Text(
              'Donanım Dekoder Durumu',
              style: TextStyle(color: AppColors.textPrimary, fontSize: 16),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDialogRow(
              'Aktif Donanım Oturumu:',
              '$activeHardwareDecoders',
              AppColors.statusSuccess,
            ),
            const SizedBox(height: 8),
            _buildDialogRow(
              'Sızdırılmış Oturum Sayısı:',
              '$leakedGhostSessions',
              leakedGhostSessions > 0
                  ? AppColors.statusDanger
                  : AppColors.textSecondary,
            ),
            const SizedBox(height: 12),
            const Text(
              'Teknik Not:\n'
              'Dispose edilmeyen her kontrolcü, mobil cihazda native video dekoder oturumunu açık tutar. Eşzamanlı donanım limiti aşılırsa sonraki videolar siyah ekran verebilir.',
              style: TextStyle(
                color: AppColors.textMuted,
                fontSize: 11,
                height: 1.4,
              ),
            ),
          ],
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

  Widget _buildDialogRow(String label, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style:
                const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
        Text(value,
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }
}
