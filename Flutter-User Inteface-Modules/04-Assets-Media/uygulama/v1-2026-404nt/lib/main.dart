import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'features/gallery/screens/gallery_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Büyük boyutlu görselleri DevTools üzerinde tespit etmek için
  debugInvertOversizedImages = false;

  // Bellek şişmesini ve olası OOM çökmelerini önlemek için görsel önbellek üst sınırını 100 MB yapıyoruz
  PaintingBinding.instance.imageCache.maximumSizeBytes = 100 * 1024 * 1024;
  PaintingBinding.instance.imageCache.maximumSize = 50;

  runApp(const DijitalMuzeApp());
}

class DijitalMuzeApp extends StatefulWidget {
  const DijitalMuzeApp({super.key});

  @override
  State<DijitalMuzeApp> createState() => _DijitalMuzeAppState();
}

class _DijitalMuzeAppState extends State<DijitalMuzeApp> {
  final ValueNotifier<bool> _invertOversizedNotifier =
      ValueNotifier<bool>(false);

  @override
  void dispose() {
    _invertOversizedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ars Vision - Dijital Müze',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryGold,
          surface: AppColors.surface,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.surface,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: GalleryScreen(
        invertOversizedNotifier: _invertOversizedNotifier,
      ),
    );
  }
}
