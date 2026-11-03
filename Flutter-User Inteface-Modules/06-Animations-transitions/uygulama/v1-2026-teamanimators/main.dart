import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
void main() => runApp(const TeamAnimatorsLabApp());
// ============================================================================
// VERİ MODELİ: SCRATCH TARZI BLOK VE CANLI DENETÇİ (INSPECTOR) KAYDI
// ============================================================================
class ScratchBlock {
  final String label;
  final String detail;
  final Color color;
  final IconData icon;
  const ScratchBlock({
    required this.label,
    required this.detail,
    required this.color,
    required this.icon,
  });
}
class InspectorEvent {
  final String triggerType; // HOVER, CLICK, DRAG, AUTO
  final String title;
  final String apiCall;
  final String explanation;
  final String codeSnippet;
  final List<ScratchBlock> blocks;
  final DateTime timestamp;
  InspectorEvent({
    required this.triggerType,
    required this.title,
    required this.apiCall,
    required this.explanation,
    required this.codeSnippet,
    required this.blocks,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();
}
// ============================================================================
// ANA UYGULAMA: TEAMANIMATORS İNTERAKTİF ANİMASYON LABORATUVARI
// ============================================================================
class TeamAnimatorsLabApp extends StatelessWidget {
  const TeamAnimatorsLabApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamAnimators — İnteraktif Animasyon Laboratuvarı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF38BDF8),
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      home: const AnimationLaboratoryScreen(),
    );
  }
}
class AnimationLaboratoryScreen extends StatefulWidget {
  const AnimationLaboratoryScreen({super.key});
  @override
  State<AnimationLaboratoryScreen> createState() =>
      _AnimationLaboratoryScreenState();
}
class _AnimationLaboratoryScreenState extends State<AnimationLaboratoryScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  InspectorEvent _currentEvent = InspectorEvent(
    triggerType: 'BAŞLANGIÇ',
    title: 'İnteraktif Animasyon Laboratuvarına Hoş Geldiniz!',
    apiCall: 'WidgetsFlutterBinding.ensureInitialized()',
    explanation:
        'Sol taraftaki herhangi bir butona, karta veya zaman çizelgesine fareyle gelin (Hover) ya da tıklayın (Click). Hangi Flutter sınıfının tetiklendiğini, kaputun altındaki Scratch adımlarını ve gerçek Dart kodunu bu panelde canlı olarak göreceksiniz.',
    codeSnippet:
        '// İpucu: Butonların üzerine gelerek (Hover) veya tıklayarak\n'
        '// tetiklenen Flutter Animasyon API çağrılarını inceleyin!\n'
        'Ticker (vsync) ➔ AnimationController ➔ Curve ➔ Tween<T> ➔ Widget',
    blocks: const [
      ScratchBlock(
        label: '1. Olay (Event)',
        detail: 'Hover / Click / Sürükleme algılanır',
        color: Color(0xFFF59E0B),
        icon: Icons.touch_app,
      ),
      ScratchBlock(
        label: '2. Zamanlayıcı (Motor)',
        detail: 'setState() veya AnimationController',
        color: Color(0xFF3B82F6),
        icon: Icons.timer,
      ),
      ScratchBlock(
        label: '3. Dönüşüm (Curve & Tween)',
        detail: '0.0–1.0 ilerlemesi hedef tipe çevrilir',
        color: Color(0xFF8B5CF6),
        icon: Icons.auto_fix_high,
      ),
      ScratchBlock(
        label: '4. Çizim (60-120 FPS)',
        detail: 'Sadece izole edilen widget güncellenir',
        color: Color(0xFF10B981),
        icon: Icons.brush,
      ),
    ],
  );
  final List<InspectorEvent> _eventLog = [];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _onTabSwitched(_tabController.index);
      }
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  void _inspect(InspectorEvent event, {bool addToLog = true}) {
    setState(() {
      _currentEvent = event;
      if (addToLog) {
        _eventLog.insert(0, event);
        if (_eventLog.length > 18) {
          _eventLog.removeLast();
        }
      }
    });
  }
  void _onTabSwitched(int index) {
    const titles = [
      '1. Örtük (Implicit) Animasyonlar Sekmesi',
      '2. Açık (Explicit) Animasyonlar Sekmesi',
      '3. Hero ve Özel Rota Geçişleri Sekmesi',
      '4. Kademeli (Staggered & Interval) Koreografi Sekmesi',
      '5. Fizik Tabanlı (SpringSimulation) Animasyon Sekmesi',
    ];
    const apis = [
      'ImplicitlyAnimatedWidget (AnimatedContainer, AnimatedOpacity, TweenAnimationBuilder)',
      'AnimationController + SingleTickerProviderStateMixin + AnimatedBuilder',
      'Hero(tag: ...) + Overlay + PageRouteBuilder + SlideTransition',
      'AnimationController + CurvedAnimation(curve: Interval(begin, end))',
      'SpringSimulation(SpringDescription, start, end, velocity) + animateWith()',
    ];
    _inspect(
      InspectorEvent(
        triggerType: 'SEKME',
        title: titles[index],
        apiCall: apis[index],
        explanation:
            'Bu sekmedeki interaktif bileşenlerin üzerine gelerek (Hover) veya tıklayarak (Click) ilgili animasyon mimarisinin nasıl çalıştığını adım adım inceleyebilirsiniz.',
        codeSnippet: '// Seçili Modül: ${titles[index]}\n// Kullanılan Temel API:\n${apis[index]}',
        blocks: _currentEvent.blocks,
      ),
      addToLog: true,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E293B),
        elevation: 0,
        titleSpacing: 16,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF38BDF8).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: const Color(0xFF38BDF8).withValues(alpha: 0.5),
                ),
              ),
              child: const Text(
                '6. TAKIM · TEAMANIMATORS',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF38BDF8),
                  letterSpacing: 0.6,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Flutter Animasyon ve Geçişler — Scratch Tarzı Canlı Eğitim Laboratuvarı',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: const Color(0xFF38BDF8),
          indicatorWeight: 3,
          labelColor: const Color(0xFF38BDF8),
          unselectedLabelColor: const Color(0xFF94A3B8),
          tabs: const [
            Tab(icon: Icon(Icons.auto_awesome, size: 18), text: '1. Örtük (Implicit)'),
            Tab(icon: Icon(Icons.tune, size: 18), text: '2. Açık (Explicit)'),
            Tab(icon: Icon(Icons.flight_takeoff, size: 18), text: '3. Hero & Rota'),
            Tab(icon: Icon(Icons.stacked_bar_chart, size: 18), text: '4. Kademeli (Interval)'),
            Tab(icon: Icon(Icons.sports_basketball, size: 18), text: '5. Fizik (Spring)'),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 900;
          final stageArea = TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ImplicitLabTab(onInspect: _inspect),
              ExplicitLabTab(onInspect: _inspect),
              HeroRouteLabTab(onInspect: _inspect),
              StaggeredLabTab(onInspect: _inspect),
              PhysicsLabTab(onInspect: _inspect),
            ],
          );
          final inspectorArea = ScratchInspectorPanel(
            currentEvent: _currentEvent,
            eventLog: _eventLog,
            onClearLog: () => setState(_eventLog.clear),
          );
          if (isWide) {
            return Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(-0.4, -0.3),
                  radius: 1.3,
                  colors: [Color(0xFF172554), Color(0xFF090D16), Color(0xFF050811)],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SOL: PC'DE GERÇEKÇİ TİTANYUM MOBİL TELEFON SİMÜLATÖRÜ
                  Center(
                    child: Container(
                      width: 410,
                      height: 760,
                      padding: const EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF475569), Color(0xFF0F172A), Color(0xFF1E293B)],
                        ),
                        borderRadius: BorderRadius.circular(52),
                        border: Border.all(color: const Color(0xFF64748B), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.75),
                            blurRadius: 50,
                            offset: const Offset(0, 24),
                          ),
                          BoxShadow(
                            color: const Color(0xFF38BDF8).withValues(alpha: 0.18),
                            blurRadius: 60,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(42),
                        child: Container(
                          color: const Color(0xFF0B1120),
                          child: Column(
                            children: [
                              // iOS / Android Durum Çubuğu + Dynamic Island
                              Container(
                                padding: const EdgeInsets.fromLTRB(22, 10, 22, 8),
                                color: const Color(0xFF090D16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '09:41',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(999),
                                        border: Border.all(
                                          color: const Color(0xFF38BDF8).withValues(alpha: 0.35),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 7,
                                            height: 7,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF10B981),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          const Text(
                                            '120Hz Impeller',
                                            style: TextStyle(
                                              fontSize: 10.5,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xFF38BDF8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          '5G ',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        Icon(
                                          Icons.battery_full_rounded,
                                          size: 16,
                                          color: Color(0xFF10B981),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Telefon İçi Navigator (Hero ve PageRouteBuilder telefon ekranının içinde açılır!)
                              Expanded(
                                child: Navigator(
                                  onGenerateRoute: (_) => MaterialPageRoute<void>(
                                    builder: (_) => stageArea,
                                  ),
                                ),
                              ),
                              // Mobil Alt Navigasyon Barı (Bottom NavigationBar)
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFF090D16),
                                  border: Border(
                                    top: BorderSide(color: Color(0xFF1E293B)),
                                  ),
                                ),
                                padding: const EdgeInsets.only(top: 4, bottom: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        _buildPhoneNavItem(0, Icons.auto_awesome, 'Implicit'),
                                        _buildPhoneNavItem(1, Icons.tune, 'Explicit'),
                                        _buildPhoneNavItem(2, Icons.flight_takeoff, 'Hero'),
                                        _buildPhoneNavItem(3, Icons.stacked_bar_chart, 'Interval'),
                                        _buildPhoneNavItem(4, Icons.sports_basketball, 'Fizik'),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      width: 115,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(alpha: 0.3),
                                        borderRadius: BorderRadius.circular(999),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  // SAĞ: SCRATCH BLOK & CANLI MOTOR STÜDYOSU
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: const Color(0xFF334155)),
                        ),
                        child: inspectorArea,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Expanded(flex: 11, child: stageArea),
                Container(height: 1, color: const Color(0xFF334155)),
                Expanded(flex: 9, child: inspectorArea),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildPhoneNavItem(int index, IconData icon, String label) {
    final active = _tabController.index == index;
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () => setState(() => _tabController.animateTo(index)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: active
              ? const Color(0xFF38BDF8).withValues(alpha: 0.18)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 18,
              color: active ? const Color(0xFF38BDF8) : const Color(0xFF94A3B8),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: active ? FontWeight.w800 : FontWeight.w600,
                color: active ? const Color(0xFF38BDF8) : const Color(0xFF94A3B8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ============================================================================
// YARDIMCI WIDGET: HOVER VE CLICK İLE DENETÇİYİ TETİKLEYEN BUTON
// ============================================================================
class InspectableActionChip extends StatefulWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final InspectorEvent Function(String triggerType) eventBuilder;
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const InspectableActionChip({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
    required this.eventBuilder,
    required this.onInspect,
  });
  @override
  State<InspectableActionChip> createState() => _InspectableActionChipState();
}
class _InspectableActionChipState extends State<InspectableActionChip> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _hovered = true);
        widget.onInspect(widget.eventBuilder('HOVER (Üzerine Gelindi)'), addToLog: false);
      },
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        transform: Matrix4.identity()..scale(_hovered ? 1.04 : 1.0),
        child: FilledButton.icon(
          style: FilledButton.styleFrom(
            backgroundColor: _hovered
                ? widget.color
                : widget.color.withValues(alpha: 0.22),
            foregroundColor: _hovered ? const Color(0xFF0F172A) : Colors.white,
            side: BorderSide(color: widget.color, width: 1.4),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            widget.onPressed();
            widget.onInspect(widget.eventBuilder('CLICK (Tıklandı)'), addToLog: true);
          },
          icon: Icon(
            widget.icon,
            size: 18,
            color: _hovered ? const Color(0xFF0F172A) : widget.color,
          ),
          label: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: _hovered ? const Color(0xFF0F172A) : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// SAĞ PANEL: SCRATCH TARZI BLOK ZİNCİRİ + KOD + CANLI ÇAĞRI GÜNLÜĞÜ
// ============================================================================
class ScratchInspectorPanel extends StatelessWidget {
  final InspectorEvent currentEvent;
  final List<InspectorEvent> eventLog;
  final VoidCallback onClearLog;
  const ScratchInspectorPanel({
    super.key,
    required this.currentEvent,
    required this.eventLog,
    required this.onClearLog,
  });
  @override
  Widget build(BuildContext context) {
    final isHover = currentEvent.triggerType.startsWith('HOVER');
    final badgeColor = isHover
        ? const Color(0xFFF59E0B)
        : const Color(0xFF10B981);
    return Container(
      color: const Color(0xFF0B1120),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Üst Başlık
          Row(
            children: [
              const Icon(Icons.terminal, color: Color(0xFF38BDF8), size: 20),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Scratch Blok & Motor Denetçisi (Canlı Inspector)',
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: badgeColor.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(color: badgeColor),
                ),
                child: Text(
                  currentEvent.triggerType,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    color: badgeColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Aktif İşlem Kartı
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFF334155)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentEvent.title,
                          style: const TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F172A),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFF38BDF8).withValues(alpha: 0.4),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.bolt,
                                size: 16,
                                color: Color(0xFF38BDF8),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Çağrılan API: ${currentEvent.apiCall}',
                                  style: const TextStyle(
                                    fontFamily: 'Consolas',
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF38BDF8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          currentEvent.explanation,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.45,
                            color: Color(0xFFCBD5E1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // SCRATCH BLOK ZİNCİRİ (Adım Adım Görsel Akış)
                  const Text(
                    'KAPUTUN ALTINDA NE OLUYOR? (SCRATCH AKIŞ BLOKLARI)',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.7,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...List.generate(currentEvent.blocks.length, (i) {
                    final b = currentEvent.blocks[i];
                    final isLast = i == currentEvent.blocks.length - 1;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 9,
                          ),
                          decoration: BoxDecoration(
                            color: b.color.withValues(alpha: 0.16),
                            borderRadius: BorderRadius.circular(10),
                            border: Border(
                              left: BorderSide(color: b.color, width: 5),
                              top: BorderSide(color: b.color.withValues(alpha: 0.4)),
                              right: BorderSide(color: b.color.withValues(alpha: 0.4)),
                              bottom: BorderSide(color: b.color.withValues(alpha: 0.4)),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(b.icon, color: b.color, size: 18),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      b.label,
                                      style: TextStyle(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w800,
                                        color: b.color,
                                      ),
                                    ),
                                    Text(
                                      b.detail,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (!isLast)
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.arrow_downward,
                                size: 15,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ),
                      ],
                    );
                  }),
                  const SizedBox(height: 12),
                  // ÇALIŞAN DART KODU KUTUSU
                  const Text(
                    'ÇALIŞAN FLUTTER / DART KODU',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.7,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF020617),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFF1E293B)),
                    ),
                    child: SelectableText(
                      currentEvent.codeSnippet,
                      style: const TextStyle(
                        fontFamily: 'Consolas',
                        fontSize: 12,
                        height: 1.4,
                        color: Color(0xFFE2E8F0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // CANLI ÇAĞRI GÜNLÜĞÜ (CALL LOG)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CANLI ÇAĞRI GÜNLÜĞÜ (${eventLog.length})',
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.7,
                          color: Color(0xFF94A3B8),
                        ),
                      ),
                      if (eventLog.isNotEmpty)
                        TextButton(
                          onPressed: onClearLog,
                          child: const Text(
                            'Temizle',
                            style: TextStyle(fontSize: 11.5),
                          ),
                        ),
                    ],
                  ),
                  Container(
                    constraints: const BoxConstraints(maxHeight: 130),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF1E293B)),
                    ),
                    child: eventLog.isEmpty
                        ? const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Henüz tıklama yapılmadı. Soldaki butonlara tıkladığınızda çağrılan metotlar burada listelenir.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            itemCount: eventLog.length,
                            separatorBuilder: (_, __) =>
                                const Divider(height: 1, color: Color(0xFF1E293B)),
                            itemBuilder: (context, idx) {
                              final item = eventLog[idx];
                              final timeStr =
                                  '${item.timestamp.hour.toString().padLeft(2, '0')}:${item.timestamp.minute.toString().padLeft(2, '0')}:${item.timestamp.second.toString().padLeft(2, '0')}';
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      timeStr,
                                      style: const TextStyle(
                                        fontFamily: 'Consolas',
                                        fontSize: 11,
                                        color: Color(0xFF64748B),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        item.apiCall,
                                        style: const TextStyle(
                                          fontFamily: 'Consolas',
                                          fontSize: 11.5,
                                          color: Color(0xFF38BDF8),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ============================================================================
// SEKME 1: ÖRTÜK (IMPLICIT) ANİMASYONLAR (OTOPİLOT MODU)
// ============================================================================
class ImplicitLabTab extends StatefulWidget {
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const ImplicitLabTab({super.key, required this.onInspect});
  @override
  State<ImplicitLabTab> createState() => _ImplicitLabTabState();
}
class _ImplicitLabTabState extends State<ImplicitLabTab> {
  bool _expanded = false;
  bool _rounded = false;
  bool _visible = true;
  double _targetAngle = 0.0;
  Curve _selectedCurve = Curves.easeOutBack;
  String _curveName = 'Curves.easeOutBack';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderBanner(
            badge: 'OTOPİLOT MODU · CONTROLLER YOK',
            title: 'Örtük (Implicit) Animasyonlar',
            subtitle:
                'Sadece hedef değeri setState() ile değiştirin; ara karelerin (0.0 ➔ 1.0) interpolasyonunu Flutter kendi içinde otomatik yönetir.',
            color: const Color(0xFF38BDF8),
          ),
          const SizedBox(height: 16),
          // Canlı Sahne
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFF334155)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 12,
                  left: 14,
                  child: Text(
                    'CANLI SAHNE · Aktif Eğri: $_curveName',
                    style: const TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF94A3B8),
                    ),
                  ),
                ),
                Center(
                  child: AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.15,
                    duration: const Duration(milliseconds: 500),
                    curve: _selectedCurve,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0, end: _targetAngle),
                      duration: const Duration(milliseconds: 700),
                      curve: _selectedCurve,
                      builder: (context, angle, staticChild) {
                        return Transform.rotate(
                          angle: angle,
                          child: staticChild,
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          setState(() => _expanded = !_expanded);
                          widget.onInspect(
                            _buildContainerEvent('CLICK (Kutuya Tıklandı)'),
                            addToLog: true,
                          );
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          curve: _selectedCurve,
                          width: _expanded ? 240 : 130,
                          height: _expanded ? 150 : 110,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: _expanded
                                  ? [const Color(0xFFF97316), const Color(0xFFEC4899)]
                                  : [const Color(0xFF2563EB), const Color(0xFF7C3AED)],
                            ),
                            borderRadius: BorderRadius.circular(_rounded ? 60 : 16),
                            boxShadow: [
                              BoxShadow(
                                color: (_expanded
                                        ? const Color(0xFFF97316)
                                        : const Color(0xFF38BDF8))
                                    .withValues(alpha: 0.35),
                                blurRadius: _expanded ? 28 : 12,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.flutter_dash,
                                size: 42,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                '${_expanded ? 240 : 130}x${_expanded ? 150 : 110} px',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'opaklık: ${_visible ? "1.0" : "0.15"}',
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Etkileşim Butonları (Hover & Click Destekli)
          const Text(
            'ETKİLEŞİMLİ KONTROLLER (Üzerine Gelin veya Tıklayın):',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF94A3B8),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InspectableActionChip(
                label: 'Boyut & Renk (AnimatedContainer)',
                icon: Icons.aspect_ratio,
                color: const Color(0xFF38BDF8),
                onPressed: () => setState(() => _expanded = !_expanded),
                eventBuilder: _buildContainerEvent,
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: 'Köşe Yuvarlat (BorderRadiusTween)',
                icon: Icons.rounded_corner,
                color: const Color(0xFFA855F7),
                onPressed: () => setState(() => _rounded = !_rounded),
                eventBuilder: (trigger) => InspectorEvent(
                  triggerType: trigger,
                  title: 'AnimatedContainer: Köşe Yuvarlaklığı İnterpolasyonu',
                  apiCall: 'setState(() => _rounded = !_rounded)',
                  explanation:
                      'BoxDecoration içindeki borderRadius değeri değiştiğinde AnimatedContainer arka planda bir BorderRadiusTween kurarak köşeleri 16px ile 60px arasında yumuşakça dönüştürür.',
                  codeSnippet:
                      'AnimatedContainer(\n'
                      '  duration: const Duration(milliseconds: 600),\n'
                      '  curve: $_curveName,\n'
                      '  decoration: BoxDecoration(\n'
                      '    borderRadius: BorderRadius.circular(_rounded ? 60 : 16),\n'
                      '  ),\n'
                      ')',
                  blocks: const [
                    ScratchBlock(
                      label: '1. Olay',
                      detail: 'Kullanıcı Köşe Yuvarlat butonunu tetikledi',
                      color: Color(0xFFF59E0B),
                      icon: Icons.touch_app,
                    ),
                    ScratchBlock(
                      label: '2. Durum Güncellemesi',
                      detail: 'setState() ile yeni hedef yarıçap (16 veya 60) bildirildi',
                      color: Color(0xFF3B82F6),
                      icon: Icons.sync,
                    ),
                    ScratchBlock(
                      label: '3. Dahili Tween',
                      detail: 'BoxDecoration.lerp() her karede ara yarıçapı hesaplar',
                      color: Color(0xFF8B5CF6),
                      icon: Icons.functions,
                    ),
                  ],
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: 'Saydamlık (AnimatedOpacity)',
                icon: Icons.opacity,
                color: const Color(0xFF10B981),
                onPressed: () => setState(() => _visible = !_visible),
                eventBuilder: (trigger) => InspectorEvent(
                  triggerType: trigger,
                  title: 'AnimatedOpacity: GPU Dostu Saydamlık Geçişi',
                  apiCall: 'setState(() => _visible = !_visible)',
                  explanation:
                      'Standart Opacity widget\'ını her karede yeniden oluşturmak yerine AnimatedOpacity dahili bir FadeTransition kullanarak alt ağacı yeniden çizmeden saydamlığı (1.0 ➔ 0.15) değiştirir.',
                  codeSnippet:
                      'AnimatedOpacity(\n'
                      '  opacity: _visible ? 1.0 : 0.15,\n'
                      '  duration: const Duration(milliseconds: 500),\n'
                      '  curve: $_curveName,\n'
                      '  child: const FlutterDashCard(),\n'
                      ')',
                  blocks: const [
                    ScratchBlock(
                      label: '1. Olay',
                      detail: 'Saydamlık butonu tetiklendi',
                      color: Color(0xFFF59E0B),
                      icon: Icons.visibility,
                    ),
                    ScratchBlock(
                      label: '2. Hedef Opaklık',
                      detail: 'opacity: 1.0 ➔ 0.15 olarak güncellendi',
                      color: Color(0xFF3B82F6),
                      icon: Icons.tune,
                    ),
                    ScratchBlock(
                      label: '3. GPU Katmanı',
                      detail: 'Alt widget ağacı rebuild edilmeden alfa kanalı güncellenir',
                      color: Color(0xFF10B981),
                      icon: Icons.speed,
                    ),
                  ],
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: 'Döndür (TweenAnimationBuilder)',
                icon: Icons.rotate_right,
                color: const Color(0xFFF59E0B),
                onPressed: () => setState(() => _targetAngle += 3.14159 / 2),
                eventBuilder: (trigger) => InspectorEvent(
                  triggerType: trigger,
                  title: 'TweenAnimationBuilder<double>: Özel Örtük Kontrol',
                  apiCall: 'TweenAnimationBuilder<double>(tween: Tween(begin: 0, end: _angle))',
                  explanation:
                      'Hazır bir AnimatedFoo widget\'ı olmadığında AnimationController açmadan özel bir özelliği (burada Transform.rotate açısını) anime eder. child parametresi sabit alt ağacı korur!',
                  codeSnippet:
                      'TweenAnimationBuilder<double>(\n'
                      '  tween: Tween<double>(begin: 0, end: _targetAngle),\n'
                      '  duration: const Duration(milliseconds: 700),\n'
                      '  child: const HeavyCard(), // Sadece 1 kez oluşturulur!\n'
                      '  builder: (context, angle, staticChild) {\n'
                      '    return Transform.rotate(angle: angle, child: staticChild);\n'
                      '  },\n'
                      ')',
                  blocks: const [
                    ScratchBlock(
                      label: '1. Hedef Açı Değişimi',
                      detail: '_targetAngle += pi / 2 (+90 derece)',
                      color: Color(0xFFF59E0B),
                      icon: Icons.rotate_90_degrees_ccw,
                    ),
                    ScratchBlock(
                      label: '2. Tween<double>',
                      detail: 'Mevcut açıdan yeni açıya ara radyan değerleri üretilir',
                      color: Color(0xFF8B5CF6),
                      icon: Icons.auto_fix_high,
                    ),
                    ScratchBlock(
                      label: '3. Child Önbellekleme',
                      detail: 'staticChild korunur, yalnızca Transform.rotate güncellenir',
                      color: Color(0xFF10B981),
                      icon: Icons.memory,
                    ),
                  ],
                ),
                onInspect: widget.onInspect,
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Eğri (Curve) Seçici
          const Text(
            'EĞRİ (CURVE) SEÇİMİ (Zamanın Bükülmesini Test Edin):',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF94A3B8),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _curveButton('Curves.easeOutBack', Curves.easeOutBack),
              _curveButton('Curves.bounceOut', Curves.bounceOut),
              _curveButton('Curves.elasticOut', Curves.elasticOut),
              _curveButton('Curves.linear', Curves.linear),
            ],
          ),
        ],
      ),
    );
  }
  Widget _curveButton(String name, Curve curve) {
    final selected = _curveName == name;
    return ChoiceChip(
      label: Text(name),
      selected: selected,
      onSelected: (_) {
        setState(() {
          _selectedCurve = curve;
          _curveName = name;
        });
        widget.onInspect(
          InspectorEvent(
            triggerType: 'EĞRİ SEÇİLDİ',
            title: 'İvme Eğrisi Değiştirildi: $name',
            apiCall: 'curve: $name',
            explanation:
                'Doğrusal zaman (t: 0.0 ➔ 1.0) artık $name matematiksel fonksiyonuyla bükülüyor. Şimdi yukarıdaki butonlardan birine tıklayarak hareketin karakterindeki farkı gözlemleyin!',
            codeSnippet:
                'AnimatedContainer(\n'
                '  duration: const Duration(milliseconds: 600),\n'
                '  curve: $name, // Zamanı büken eğri fonksiyonu\n'
                ')',
            blocks: const [
              ScratchBlock(
                label: '1. Doğrusal Giriş (t)',
                detail: '0.0 ile 1.0 arasında sabit hızda ilerleyen süre',
                color: Color(0xFF3B82F6),
                icon: Icons.linear_scale,
              ),
              ScratchBlock(
                label: '2. Curve Dönüşümü',
                detail: 'curve.transform(t) ile hızlanma/yavaşlama uygulanır',
                color: Color(0xFF8B5CF6),
                icon: Icons.show_chart,
              ),
            ],
          ),
          addToLog: true,
        );
      },
    );
  }
  InspectorEvent _buildContainerEvent(String trigger) {
    return InspectorEvent(
      triggerType: trigger,
      title: 'AnimatedContainer: Çoklu Özellik İnterpolasyonu',
      apiCall: 'setState(() => _expanded = !_expanded)',
      explanation:
          'Geliştirici yalnızca _expanded değişkenini tersine çevirir. AnimatedContainer eski boyut/renk ile yeni boyut/renk arasındaki tüm ara kareleri 600ms boyunca $_curveName eğrisiyle otomatik çizer.',
      codeSnippet:
          'setState(() => _expanded = !_expanded);\n\n'
          'AnimatedContainer(\n'
          '  duration: const Duration(milliseconds: 600),\n'
          '  curve: $_curveName,\n'
          '  width: _expanded ? 240 : 130,\n'
          '  height: _expanded ? 150 : 110,\n'
          ')',
      blocks: const [
        ScratchBlock(
          label: '1. Olay (onTap)',
          detail: 'Kullanıcı tıklamasıyla setState() çağrıldı',
          color: Color(0xFFF59E0B),
          icon: Icons.touch_app,
        ),
        ScratchBlock(
          label: '2. ImplicitlyAnimatedWidget',
          detail: 'Eski (130x110) ve yeni (240x150) değer farkı algılandı',
          color: Color(0xFF3B82F6),
          icon: Icons.compare_arrows,
        ),
        ScratchBlock(
          label: '3. Tween & Curve',
          detail: 'Boyut, renk ve gölge aynı anda 0.0➔1.0 boyunca haritalandı',
          color: Color(0xFF8B5CF6),
          icon: Icons.auto_fix_high,
        ),
        ScratchBlock(
          label: '4. Otopilot Çizim',
          detail: 'Controller veya dispose() yazmadan 60-120 FPS geçiş tamamlandı',
          color: Color(0xFF10B981),
          icon: Icons.check_circle,
        ),
      ],
    );
  }
}
// ============================================================================
// SEKME 2: AÇIK (EXPLICIT) ANİMASYONLAR (YÖNETMEN KOLTUĞU)
// ============================================================================
class ExplicitLabTab extends StatefulWidget {
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const ExplicitLabTab({super.key, required this.onInspect});
  @override
  State<ExplicitLabTab> createState() => _ExplicitLabTabState();
}
class _ExplicitLabTabState extends State<ExplicitLabTab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _curved;
  late final Animation<double> _scaleAnim;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _curved = CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);
    _scaleAnim = Tween<double>(begin: 0.65, end: 1.25).animate(_curved);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderBanner(
            badge: 'YÖNETMEN KOLTUĞU · VSYNC & CONTROLLER',
            title: 'Açık (Explicit) Animasyonlar ve AnimatedBuilder',
            subtitle:
                'AnimationController ile zamanı ileri sarın, geri alın, döngüye sokun veya dondurun. AnimatedBuilder ile yalnızca değişen katmanı yeniden çizin.',
            color: const Color(0xFFA855F7),
          ),
          const SizedBox(height: 16),
          // Canlı Telemetri + Sahne
          AnimatedBuilder(
            animation: _controller,
            // Sabit alt ağaç: Animasyon boyunca SADECE 1 KEZ oluşturulur!
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6366F1), Color(0xFFA855F7)],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFA855F7).withValues(alpha: 0.4),
                    blurRadius: 24,
                  ),
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.stars_rounded, size: 40, color: Colors.amberAccent),
                  SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Önbellekli Child',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Sadece 1 kez build edildi!',
                        style: TextStyle(fontSize: 11, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            builder: (context, cachedChild) {
              return Column(
                children: [
                  // Canlı Telemetri Çubuğu
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F172A),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFF334155)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'controller.value: ${_controller.value.toStringAsFixed(3)}',
                              style: const TextStyle(
                                fontFamily: 'Consolas',
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF38BDF8),
                              ),
                            ),
                            Text(
                              'status: ${_controller.status.name}',
                              style: const TextStyle(
                                fontFamily: 'Consolas',
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFC084FC),
                              ),
                            ),
                            Text(
                              'scale: ${_scaleAnim.value.toStringAsFixed(2)}x',
                              style: const TextStyle(
                                fontFamily: 'Consolas',
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF34D399),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: _controller.value,
                          minHeight: 8,
                          borderRadius: BorderRadius.circular(999),
                          backgroundColor: const Color(0xFF1E293B),
                          color: const Color(0xFFA855F7),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Görsel Sahne
                  Container(
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: const Color(0xFF334155)),
                    ),
                    child: Center(
                      child: Transform.scale(
                        scale: _scaleAnim.value,
                        child: Transform.rotate(
                          angle: _controller.value * 2 * 3.14159,
                          child: cachedChild,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 16),
          const Text(
            'YÖNETMEN KONSOLU (Hover ve Click ile Komutları İnceleyin):',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF94A3B8),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InspectableActionChip(
                label: '.forward() (İleri Oynat)',
                icon: Icons.play_arrow_rounded,
                color: const Color(0xFF38BDF8),
                onPressed: () => _controller.forward(),
                eventBuilder: (t) => _buildExplicitEvent(
                  t,
                  '_controller.forward()',
                  'Animasyonu mevcut değerinden üst sınıra (1.0) doğru ileri yönde başlatır. Hedefe ulaştığında durum AnimationStatus.completed olur.',
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: '.reverse() (Geri Sar)',
                icon: Icons.replay_rounded,
                color: const Color(0xFFA855F7),
                onPressed: () => _controller.reverse(),
                eventBuilder: (t) => _buildExplicitEvent(
                  t,
                  '_controller.reverse()',
                  'Animasyonu mevcut konumundan başlangıç noktasına (0.0) doğru geriye sarar. Bittiğinde durum AnimationStatus.dismissed olur.',
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: '.repeat(reverse: true) (Döngü)',
                icon: Icons.loop_rounded,
                color: const Color(0xFF10B981),
                onPressed: () => _controller.repeat(reverse: true),
                eventBuilder: (t) => _buildExplicitEvent(
                  t,
                  '_controller.repeat(reverse: true)',
                  'Animasyonu durdurulana kadar 0.0 ➔ 1.0 ➔ 0.0 arasında ileri-geri (nefes alma / nabız efekti) sonsuz döngüye sokar.',
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: '.stop() (Dondur)',
                icon: Icons.pause_rounded,
                color: const Color(0xFFF59E0B),
                onPressed: () => _controller.stop(),
                eventBuilder: (t) => _buildExplicitEvent(
                  t,
                  '_controller.stop()',
                  'Ticker sinyalini keserek animasyonu tam o anki ilerleme değerinde (_controller.value) dondurur.',
                ),
                onInspect: widget.onInspect,
              ),
              InspectableActionChip(
                label: '.reset() (Sıfırla)',
                icon: Icons.restart_alt_rounded,
                color: const Color(0xFFEF4444),
                onPressed: () => _controller.reset(),
                eventBuilder: (t) => _buildExplicitEvent(
                  t,
                  '_controller.reset()',
                  'Animasyonu durdurur ve değerini anında alt sınıra (lowerBound = 0.0) sıfırlar.',
                ),
                onInspect: widget.onInspect,
              ),
            ],
          ),
        ],
      ),
    );
  }
  InspectorEvent _buildExplicitEvent(
    String trigger,
    String call,
    String desc,
  ) {
    return InspectorEvent(
      triggerType: trigger,
      title: 'Açık (Explicit) Kontrol: $call',
      apiCall: call,
      explanation:
          '$desc SingleTickerProviderStateMixin (vsync: this) ekran dışındaki kare üretimini engeller; AnimatedBuilder ise child parametresindeki ağır widget\'ı yeniden oluşturmadan yalnızca Transform katmanını günceller.',
      codeSnippet:
          '// 1. Kurulum (SingleTickerProviderStateMixin ile):\n'
          'late final _controller = AnimationController(\n'
          '  vsync: this,\n'
          '  duration: const Duration(milliseconds: 1200),\n'
          ');\n\n'
          '// 2. Tetiklenen Komut:\n'
          '$call;\n\n'
          '// 3. Bellek Güvenliği (Zorunlu):\n'
          '@override\n'
          'void dispose() {\n'
          '  _controller.dispose();\n'
          '  super.dispose();\n'
          '}',
      blocks: [
        ScratchBlock(
          label: '1. Komut Çağrısı',
          detail: call,
          color: const Color(0xFFF59E0B),
          icon: Icons.play_circle,
        ),
        const ScratchBlock(
          label: '2. Ticker (vsync: this)',
          detail: 'Donanım yenileme hızıyla (60/120 Hz) her karede tick üretir',
          color: Color(0xFF3B82F6),
          icon: Icons.memory,
        ),
        const ScratchBlock(
          label: '3. CurvedAnimation & Tween',
          detail: '0.0–1.0 değeri easeInOutCubic ile 0.65x–1.25x ölçeğe çevrilir',
          color: Color(0xFF8B5CF6),
          icon: Icons.show_chart,
        ),
        const ScratchBlock(
          label: '4. AnimatedBuilder İzolasyonu',
          detail: 'cachedChild sabit kalır; sadece Transform.scale/rotate çizilir',
          color: Color(0xFF10B981),
          icon: Icons.shield,
        ),
      ],
    );
  }
}
// ============================================================================
// SEKME 3: HERO VE ÖZEL ROTA GEÇİŞLERİ (PAGEROUTEBUILDER & SLIDETRANSITION)
// ============================================================================
class HeroRouteLabTab extends StatefulWidget {
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const HeroRouteLabTab({super.key, required this.onInspect});
  @override
  State<HeroRouteLabTab> createState() => _HeroRouteLabTabState();
}
class _HeroRouteLabTabState extends State<HeroRouteLabTab> {
  Offset _beginOffset = const Offset(0.0, 1.0);
  String _directionLabel = 'Alttan Yukarı: Offset(0.0, 1.0)';
  @override
  Widget build(BuildContext context) {
    final items = [
      (
        tag: 'hero-dash',
        title: 'Flutter Dash',
        subtitle: 'Paylaşılan Öğe (tag: "hero-dash")',
        icon: Icons.flutter_dash,
        color: const Color(0xFF38BDF8),
      ),
      (
        tag: 'hero-rocket',
        title: 'Impeller Motoru',
        subtitle: 'Paylaşılan Öğe (tag: "hero-rocket")',
        icon: Icons.rocket_launch_rounded,
        color: const Color(0xFFF97316),
      ),
    ];
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderBanner(
            badge: 'OVERLAY UÇUŞU & KESİRLİ OFFSET',
            title: 'Hero Animasyonları ve PageRouteBuilder',
            subtitle:
                'Aynı tag değerine sahip iki Hero widget\'ı ekranlar arasında Overlay katmanında uçar. PageRouteBuilder ise kesirli Offset ile özel sayfa kayma geçişi üretir.',
            color: const Color(0xFF10B981),
          ),
          const SizedBox(height: 16),
          const Text(
            '1. ADIM: SAYFA KAYMA YÖNÜNÜ SEÇİN (SlideTransition Kesirli Offset):',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF94A3B8),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _offsetChip('Alttan Yukarı: Offset(0.0, 1.0)', const Offset(0.0, 1.0)),
              _offsetChip('Sağdan Sola: Offset(1.0, 0.0)', const Offset(1.0, 0.0)),
              _offsetChip('Sol Üstten: Offset(-1.0, -1.0)', const Offset(-1.0, -1.0)),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            '2. ADIM: HERO KARTINA HOVER YAPIN VEYA TIKLAYARAK UÇUŞU BAŞLATIN:',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Color(0xFF94A3B8),
            ),
          ),
          const SizedBox(height: 10),
          ...items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: MouseRegion(
                onEnter: (_) => widget.onInspect(
                  _buildHeroEvent('HOVER (Kart Üzerinde)', item.tag, item.title),
                  addToLog: false,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    widget.onInspect(
                      _buildHeroEvent('CLICK (Rota Geçişi Başladı)', item.tag, item.title),
                      addToLog: true,
                    );
                    Navigator.of(context).push(
                      PageRouteBuilder<void>(
                        transitionDuration: const Duration(milliseconds: 650),
                        reverseTransitionDuration: const Duration(milliseconds: 550),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            HeroDetailScreen(
                          tag: item.tag,
                          title: item.title,
                          icon: item.icon,
                          color: item.color,
                          offsetLabel: _directionLabel,
                        ),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          final tween = Tween<Offset>(
                            begin: _beginOffset,
                            end: Offset.zero,
                          ).chain(CurveTween(curve: Curves.easeOutCubic));
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: item.color.withValues(alpha: 0.5)),
                    ),
                    child: Row(
                      children: [
                        Hero(
                          tag: item.tag,
                          child: Container(
                            width: 64,
                            height: 64,
                            decoration: BoxDecoration(
                              color: item.color.withValues(alpha: 0.2),
                              shape: BoxShape.circle,
                              border: Border.all(color: item.color, width: 2),
                            ),
                            child: Icon(item.icon, size: 34, color: item.color),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item.subtitle,
                                style: const TextStyle(
                                  fontFamily: 'Consolas',
                                  fontSize: 12.5,
                                  color: Color(0xFF38BDF8),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Tıklayın ➔ $_directionLabel ile yeni sayfaya uçur!',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF94A3B8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.open_in_new, color: item.color),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
  Widget _offsetChip(String label, Offset offset) {
    final selected = _beginOffset == offset;
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) {
        setState(() {
          _beginOffset = offset;
          _directionLabel = label;
        });
        widget.onInspect(
          InspectorEvent(
            triggerType: 'OFFSET SEÇİLDİ',
            title: 'SlideTransition Başlangıç Koordinatı: $label',
            apiCall: 'Tween<Offset>(begin: Offset(${offset.dx}, ${offset.dy}), end: Offset.zero)',
            explanation:
                'SlideTransition piksel değil, ekran boyutunun katlarını (kesirli koordinat) kullanır. Offset(0, 1) ekranın 1 boy aşağısını, Offset(1, 0) ise ekranın 1 boy sağını ifade eder.',
            codeSnippet:
                'final tween = Tween<Offset>(\n'
                '  begin: const Offset(${offset.dx}, ${offset.dy}),\n'
                '  end: Offset.zero,\n'
                ').chain(CurveTween(curve: Curves.easeOutCubic));\n\n'
                'return SlideTransition(\n'
                '  position: animation.drive(tween),\n'
                '  child: child,\n'
                ');',
            blocks: const [
              ScratchBlock(
                label: '1. Kesirli Koordinat',
                detail: 'Ekran genişliği/yüksekliği 1.0 birim kabul edilir',
                color: Color(0xFF3B82F6),
                icon: Icons.grid_4x4,
              ),
              ScratchBlock(
                label: '2. animation.drive(tween)',
                detail: 'Rota animasyonu (0.0➔1.0) Offset değerine dönüştürülür',
                color: Color(0xFF8B5CF6),
                icon: Icons.swap_horiz,
              ),
            ],
          ),
          addToLog: true,
        );
      },
    );
  }
  InspectorEvent _buildHeroEvent(String trigger, String tag, String title) {
    return InspectorEvent(
      triggerType: trigger,
      title: 'Hero("$tag") + PageRouteBuilder Geçişi',
      apiCall: 'Navigator.push(PageRouteBuilder(...)) + Hero(tag: "$tag")',
      explanation:
          'Kalkış anında (t=0.0) Flutter kaynak ve hedef Hero\'ların ekran koordinatlarını (Rect) hesaplar. Widget her iki sayfanın üstündeki şeffaf Overlay katmanına taşınır ve MaterialRectArcTween ile kavisli bir yay çizerek hedef ekrana iner!',
      codeSnippet:
          '// Kaynak ve Hedef Ekranda Birebir Aynı tag Zorunludur:\n'
          'Hero(\n'
          '  tag: \'$tag\',\n'
          '  child: Icon(Icons.flutter_dash),\n'
          ');\n\n'
          '// Özel Sayfa Geçişi:\n'
          'PageRouteBuilder(\n'
          '  pageBuilder: (_, __, ___) => const DetailPage(),\n'
          '  transitionsBuilder: (_, anim, __, child) => SlideTransition(\n'
          '    position: anim.drive(Tween(begin: Offset(${_beginOffset.dx}, ${_beginOffset.dy}), end: Offset.zero)),\n'
          '    child: child,\n'
          '  ),\n'
          ')',
      blocks: [
        ScratchBlock(
          label: '1. Tag Eşleşmesi',
          detail: 'Kaynak ve hedef rotadaki Hero(tag: "$tag") eşleştirildi',
          color: const Color(0xFFF59E0B),
          icon: Icons.link,
        ),
        const ScratchBlock(
          label: '2. Rect & Offstage',
          detail: 'Hedef konum hesaplandı; hedef Hero geçici olarak gizlendi',
          color: Color(0xFF3B82F6),
          icon: Icons.crop_free,
        ),
        const ScratchBlock(
          label: '3. Overlay Uçuşu',
          detail: 'Widget Overlay katmanında kavisli yay (MaterialRectArcTween) ile uçar',
          color: Color(0xFF8B5CF6),
          icon: Icons.flight,
        ),
        const ScratchBlock(
          label: '4. İniş (t = 1.0)',
          detail: 'Overlay temizlenir ve widget hedef sayfadaki yerine yerleşir',
          color: Color(0xFF10B981),
          icon: Icons.flight_land,
        ),
      ],
    );
  }
}
class HeroDetailScreen extends StatelessWidget {
  final String tag;
  final String title;
  final IconData icon;
  final Color color;
  final String offsetLabel;
  const HeroDetailScreen({
    super.key,
    required this.tag,
    required this.title,
    required this.icon,
    required this.color,
    required this.offsetLabel,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E293B),
        title: Text('Hedef Rota (Detay Ekranı) — $title'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: tag,
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.22),
                    shape: BoxShape.circle,
                    border: Border.all(color: color, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(alpha: 0.4),
                        blurRadius: 32,
                      ),
                    ],
                  ),
                  child: Icon(icon, size: 96, color: color),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Hero(tag: "$tag") İnişi Tamamlandı!',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Bu sayfa PageRouteBuilder + SlideTransition ($offsetLabel) ile açıldı.\nGeri döndüğünüzde Hero widget\'ı tekrar Overlay üzerinden ilk ekrana uçacaktır.',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Color(0xFFCBD5E1)),
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Navigator.pop() ile Kaynak Rotaya Uçur'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ============================================================================
// SEKME 4: KADEMELİ (STAGGERED) ANİMASYONLAR VE INTERVAL ZAMAN DİLİMLEYİCİ
// ============================================================================
class StaggeredLabTab extends StatefulWidget {
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const StaggeredLabTab({super.key, required this.onInspect});
  @override
  State<StaggeredLabTab> createState() => _StaggeredLabTabState();
}
class _StaggeredLabTabState extends State<StaggeredLabTab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<double> _width;
  late final Animation<double> _height;
  late final Animation<BorderRadius?> _borderRadius;
  late final Animation<Color?> _color;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _opacity = Tween<double>(begin: 0.15, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.20, curve: Curves.easeIn),
      ),
    );
    _width = Tween<double>(begin: 70.0, end: 240.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.15, 0.45, curve: Curves.easeOutCubic),
      ),
    );
    _height = Tween<double>(begin: 60.0, end: 130.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.70, curve: Curves.easeOutBack),
      ),
    );
    _borderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(8),
      end: BorderRadius.circular(64),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.60, 0.85, curve: Curves.easeInOut),
      ),
    );
    _color = ColorTween(
      begin: const Color(0xFF3B82F6),
      end: const Color(0xFF10B981),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.75, 1.0, curve: Curves.easeInOut),
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeaderBanner(
                badge: 'TEK CONTROLLER · ÇOKLU INTERVAL',
                title: 'Kademeli (Staggered) Koreografi ve Interval Sınıfı',
                subtitle:
                    '0.0 ➔ 1.0 arasında ilerleyen TEK BİR AnimationController, Interval(begin, end) dilimleriyle 5 farklı özelliği sırayla ve örtüşerek yönetir.',
                color: const Color(0xFFF59E0B),
              ),
              const SizedBox(height: 14),
              // Canlı Koreografi Sahnesi
              Container(
                height: 165,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFF334155)),
                ),
                child: Center(
                  child: Opacity(
                    opacity: _opacity.value,
                    child: Container(
                      width: _width.value,
                      height: _height.value.clamp(40.0, 155.0),
                      decoration: BoxDecoration(
                        color: _color.value,
                        borderRadius: _borderRadius.value,
                        boxShadow: [
                          BoxShadow(
                            color: (_color.value ?? Colors.blue)
                                .withValues(alpha: 0.4),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          't = ${_controller.value.toStringAsFixed(2)}\n${_width.value.toInt()}x${_height.value.toInt()}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Consolas',
                            fontWeight: FontWeight.w800,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              // Canlı Interval Zaman Çizelgesi Çubukları (Gantt)
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F172A),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFF334155)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'CANLI INTERVAL ZAMAN ÇİZELGESİ (0.00 ➔ 1.00)',
                          style: TextStyle(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF94A3B8),
                          ),
                        ),
                        Text(
                          'Ana Saat: %${(_controller.value * 100).toInt()}',
                          style: const TextStyle(
                            fontFamily: 'Consolas',
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFF59E0B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _intervalBar('1. Opacity', 0.0, 0.20, const Color(0xFF38BDF8)),
                    _intervalBar('2. Width', 0.15, 0.45, const Color(0xFF818CF8)),
                    _intervalBar('3. Height', 0.40, 0.70, const Color(0xFFC084FC)),
                    _intervalBar('4. Radius', 0.60, 0.85, const Color(0xFFF472B6)),
                    _intervalBar('5. Color', 0.75, 1.00, const Color(0xFF34D399)),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  InspectableActionChip(
                    label: 'Koreografiyi Başlat (.forward)',
                    icon: Icons.play_arrow_rounded,
                    color: const Color(0xFF10B981),
                    onPressed: () => _controller.forward(from: 0.0),
                    eventBuilder: (t) => _buildStaggeredEvent(
                      t,
                      '_controller.forward(from: 0.0)',
                    ),
                    onInspect: widget.onInspect,
                  ),
                  InspectableActionChip(
                    label: 'Koreografiyi Geri Sar (.reverse)',
                    icon: Icons.replay_rounded,
                    color: const Color(0xFFF59E0B),
                    onPressed: () => _controller.reverse(from: 1.0),
                    eventBuilder: (t) => _buildStaggeredEvent(
                      t,
                      '_controller.reverse(from: 1.0)',
                    ),
                    onInspect: widget.onInspect,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
  Widget _intervalBar(String name, double begin, double end, Color color) {
    final t = _controller.value;
    final active = t >= begin && t <= end;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 82,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: active ? FontWeight.w800 : FontWeight.w500,
                color: active ? color : const Color(0xFF94A3B8),
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final totalW = constraints.maxWidth;
                return Stack(
                  children: [
                    Container(
                      height: 16,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E293B),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Positioned(
                      left: totalW * begin,
                      width: totalW * (end - begin),
                      top: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: active
                              ? color
                              : color.withValues(alpha: 0.35),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            '${begin.toStringAsFixed(2)}–${end.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: (totalW * t).clamp(0.0, totalW - 2),
                      top: 0,
                      bottom: 0,
                      child: Container(width: 2.5, color: Colors.amberAccent),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  InspectorEvent _buildStaggeredEvent(String trigger, String call) {
    return InspectorEvent(
      triggerType: trigger,
      title: 'Kademeli (Staggered) Koreografi ve Interval(begin, end)',
      apiCall: call,
      explanation:
          '5 farklı görsel özellik için 5 ayrı AnimationController açmak yerine TEK BİR AnimationController kullanılır. Her Tween, CurvedAnimation içinde kendi Interval(begin, end) yüzdelik dilimine bağlanır.',
      codeSnippet:
          'width = Tween<double>(begin: 70.0, end: 240.0).animate(\n'
          '  CurvedAnimation(\n'
          '    parent: _controller,\n'
          '    // Sadece %15 ile %45 arasındaki zaman diliminde çalışır:\n'
          '    curve: const Interval(0.15, 0.45, curve: Curves.easeOutCubic),\n'
          '  ),\n'
          ');',
      blocks: const [
        ScratchBlock(
          label: '1. Tek Ana Saat',
          detail: 'AnimationController 0.0\'dan 1.0\'a ilerler',
          color: Color(0xFFF59E0B),
          icon: Icons.timer,
        ),
        ScratchBlock(
          label: '2. Interval Filtresi',
          detail: 't < begin iken 0.0, t > end iken 1.0, arada normalize değer üretir',
          color: Color(0xFF3B82F6),
          icon: Icons.view_timeline,
        ),
        ScratchBlock(
          label: '3. Senkron Koreografi',
          detail: 'Opacity ➔ Width ➔ Height ➔ Radius ➔ Color sırayla akar',
          color: Color(0xFF10B981),
          icon: Icons.auto_graph,
        ),
      ],
    );
  }
}
// ============================================================================
// SEKME 5: FİZİK TABANLI ANİMASYONLAR (SPRINGSIMULATION & ANIMATEWITH)
// ============================================================================
class PhysicsLabTab extends StatefulWidget {
  final void Function(InspectorEvent event, {bool addToLog}) onInspect;
  const PhysicsLabTab({super.key, required this.onInspect});
  @override
  State<PhysicsLabTab> createState() => _PhysicsLabTabState();
}
class _PhysicsLabTabState extends State<PhysicsLabTab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Alignment> _animation;
  Alignment _dragAlignment = Alignment.center;
  double _mass = 15.0;
  double _stiffness = 180.0;
  double _damping = 10.0;
  double _lastVelocity = 0.0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)
      ..addListener(() {
        setState(() {
          _dragAlignment = _animation.value;
        });
      });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _runSpringSimulation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(begin: _dragAlignment, end: Alignment.center),
    );
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;
    _lastVelocity = unitVelocity;
    final spring = SpringDescription(
      mass: _mass,
      stiffness: _stiffness,
      damping: _damping,
    );
    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);
    _controller.animateWith(simulation);
    widget.onInspect(
      InspectorEvent(
        triggerType: 'DRAG END (Yay Fiziği Başladı)',
        title: 'SpringSimulation + _controller.animateWith(simulation)',
        apiCall:
            'SpringSimulation(SpringDescription(mass: ${_mass.toInt()}, stiffness: ${_stiffness.toInt()}, damping: ${_damping.toInt()}), 0, 1, -${unitVelocity.toStringAsFixed(2)})',
        explanation:
            'Kullanıcı kartı bıraktığında sabit bir Duration kullanılmaz! GestureDetector onPanEnd içinden alınan parmak fırlatma hızı (pixelsPerSecond) birim hıza çevrilir ve Hooke Yay Yasası ile kart merkeze salınarak döner.',
        codeSnippet:
            'final spring = SpringDescription(\n'
            '  mass: ${_mass.toInt()},      // Kütle (Atalet)\n'
            '  stiffness: ${_stiffness.toInt()}, // Yay sertliği (Çekim gücü)\n'
            '  damping: ${_damping.toInt()},    // Sönümleme (Sürtünme)\n'
            ');\n'
            'final sim = SpringSimulation(spring, 0, 1, -${unitVelocity.toStringAsFixed(2)});\n'
            '_controller.animateWith(sim);',
        blocks: [
          const ScratchBlock(
            label: '1. GestureDetector (onPanEnd)',
            detail: 'Kullanıcı kartı bıraktı; fırlatma hızı (pixelsPerSecond) ölçüldü',
            color: Color(0xFFF59E0B),
            icon: Icons.swipe,
          ),
          ScratchBlock(
            label: '2. Birim Hız Hesabı',
            detail: 'unitVelocity = ${unitVelocity.toStringAsFixed(2)} birim/sn',
            color: const Color(0xFF3B82F6),
            icon: Icons.speed,
          ),
          ScratchBlock(
            label: '3. SpringDescription',
            detail:
                'mass: ${_mass.toInt()}, stiffness: ${_stiffness.toInt()}, damping: ${_damping.toInt()}',
            color: const Color(0xFF8B5CF6),
            icon: Icons.settings_input_component,
          ),
          const ScratchBlock(
            label: '4. controller.animateWith(sim)',
            detail: 'Sabit süre yerine yay enerjisi sönümlenene kadar doğal salınım',
            color: Color(0xFF10B981),
            icon: Icons.waves,
          ),
        ],
      ),
      addToLog: true,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderBanner(
            badge: 'FLUTTER/PHYSICS.DART · SPRINGSIMULATION',
            title: 'Fizik Tabanlı Animasyonlar: Kart Sürükleme ve Yay Fiziği',
            subtitle:
                'Kartı fare veya parmağınızla köşelere sürükleyip bırakın! Kütle (mass), sertlik (stiffness) ve sönümleme (damping) ayarlarıyla yay fiziğini canlı test edin.',
            color: const Color(0xFFF43F5E),
          ),
          const SizedBox(height: 14),
          // Sürükleme Sahnesi
          LayoutBuilder(
            builder: (context, constraints) {
              final boxSize = Size(constraints.maxWidth, 220);
              return Container(
                height: 220,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFF334155)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 14,
                      child: Text(
                        'Alignment: (${_dragAlignment.x.toStringAsFixed(2)}, ${_dragAlignment.y.toStringAsFixed(2)}) · Son Hız: ${_lastVelocity.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontFamily: 'Consolas',
                          fontSize: 11.5,
                          color: Color(0xFF94A3B8),
                        ),
                      ),
                    ),
                    Align(
                      alignment: _dragAlignment,
                      child: GestureDetector(
                        onPanDown: (_) => _controller.stop(),
                        onPanUpdate: (details) {
                          setState(() {
                            _dragAlignment += Alignment(
                              details.delta.dx / (boxSize.width / 2),
                              details.delta.dy / (boxSize.height / 2),
                            );
                          });
                        },
                        onPanEnd: (details) {
                          _runSpringSimulation(
                            details.velocity.pixelsPerSecond,
                            boxSize,
                          );
                        },
                        child: Container(
                          width: 135,
                          height: 95,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFF43F5E), Color(0xFFFB923C)],
                            ),
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFF43F5E).withValues(alpha: 0.4),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.open_with, color: Colors.white, size: 30),
                              SizedBox(height: 4),
                              Text(
                                'Beni Sürükle\nve Bırak!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12.5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 14),
          // Yay Parametreleri Slider'ları
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFF334155)),
            ),
            child: Column(
              children: [
                _sliderRow(
                  label: 'Kütle (mass: ${_mass.toInt()})',
                  value: _mass,
                  min: 1,
                  max: 40,
                  color: const Color(0xFF38BDF8),
                  onChanged: (v) => setState(() => _mass = v),
                ),
                _sliderRow(
                  label: 'Yay Sertliği (stiffness: ${_stiffness.toInt()})',
                  value: _stiffness,
                  min: 30,
                  max: 500,
                  color: const Color(0xFFA855F7),
                  onChanged: (v) => setState(() => _stiffness = v),
                ),
                _sliderRow(
                  label: 'Sönümleme / Sürtünme (damping: ${_damping.toInt()})',
                  value: _damping,
                  min: 1,
                  max: 30,
                  color: const Color(0xFF10B981),
                  onChanged: (v) => setState(() => _damping = v),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          InspectableActionChip(
            label: 'Kartı Köşeye Çek ve Yayla Fırlat (Simülasyonu Test Et)',
            icon: Icons.rocket_launch,
            color: const Color(0xFFF43F5E),
            onPressed: () {
              setState(() => _dragAlignment = const Alignment(0.85, -0.75));
              _runSpringSimulation(const Offset(-900, 700), const Size(500, 220));
            },
            eventBuilder: (t) => InspectorEvent(
              triggerType: t,
              title: 'Otomatik Fırlatma: SpringSimulation Testi',
              apiCall: '_controller.animateWith(SpringSimulation(...))',
              explanation:
                  'Kartı sağ üst köşeye (Alignment(0.85, -0.75)) konumlandırıp yüksek bir başlangıç hızıyla merkeze doğru serbest bırakır.',
              codeSnippet:
                  '_dragAlignment = const Alignment(0.85, -0.75);\n'
                  '_runSpringSimulation(const Offset(-900, 700), size);',
              blocks: const [
                ScratchBlock(
                  label: '1. Konumlandırma',
                  detail: 'Kart sağ üst köşeye çekildi',
                  color: Color(0xFFF59E0B),
                  icon: Icons.place,
                ),
                ScratchBlock(
                  label: '2. Yay Salınımı',
                  detail: 'SpringSimulation ile merkeze doğru yaylanarak gelir',
                  color: Color(0xFF10B981),
                  icon: Icons.waves,
                ),
              ],
            ),
            onInspect: widget.onInspect,
          ),
        ],
      ),
    );
  }
  Widget _sliderRow({
    required String label,
    required double value,
    required double min,
    required double max,
    required Color color,
    required ValueChanged<double> onChanged,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 240,
          child: Text(
            label,
            style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w700),
          ),
        ),
        Expanded(
          child: Slider(
            value: value,
            min: min,
            max: max,
            activeColor: color,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
// ============================================================================
// ORTAK ÜST BİLGİ KARTI
// ============================================================================
Widget _buildHeaderBanner({
  required String badge,
  required String title,
  required String subtitle,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          color.withValues(alpha: 0.18),
          const Color(0xFF1E293B),
        ],
      ),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: color.withValues(alpha: 0.45)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            badge,
            style: TextStyle(
              fontSize: 10.5,
              fontWeight: FontWeight.w800,
              color: color,
              letterSpacing: 0.6,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFFCBD5E1),
            height: 1.4,
          ),
        ),
      ],
    ),
  );
}
