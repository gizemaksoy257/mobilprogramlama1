import 'package:flutter/material.dart';

import 'state/progress_repository.dart';
import 'state/progress_store.dart';
import 'ui/screens.dart';

void main() {
  runApp(const TuzakAvcisiApp());
}

class TuzakAvcisiApp extends StatefulWidget {
  const TuzakAvcisiApp({super.key, this.repository});

  /// Inject an in-memory repository during widget tests.
  final ProgressRepository? repository;

  @override
  State<TuzakAvcisiApp> createState() => _TuzakAvcisiAppState();
}

class _TuzakAvcisiAppState extends State<TuzakAvcisiApp> {
  late final ProgressStore _progress;

  @override
  void initState() {
    super.initState();
    _progress = ProgressStore(
      repository: widget.repository ?? SharedPreferencesProgressRepository(),
    );
    _progress.load();
  }

  @override
  void dispose() {
    _progress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF4B55CF);
    final scheme = ColorScheme.fromSeed(seedColor: primary);

    return MaterialApp(
      title: 'TuzakAvcısı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: scheme,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F7FB),
          foregroundColor: Color(0xFF1B2640),
          centerTitle: false,
          elevation: 0,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(52),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
      home: AnimatedBuilder(
        animation: _progress,
        builder: (context, child) => _progress.isReady
            ? HomeScreen(progress: _progress)
            : const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
      routes: <String, WidgetBuilder>{
        '/scenarios': (context) => ScenarioListScreen(progress: _progress),
        '/progress': (context) => ProgressScreen(progress: _progress),
        '/guide': (context) => const GuideScreen(),
      },
    );
  }
}
