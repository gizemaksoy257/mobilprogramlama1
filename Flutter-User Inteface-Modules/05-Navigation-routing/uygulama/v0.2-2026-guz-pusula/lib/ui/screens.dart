import 'package:flutter/material.dart';

import '../data/scenarios.dart';
import '../models/scenario.dart';
import '../state/progress_store.dart';

const Color _ink = Color(0xFF202C48);
const Color _primary = Color(0xFF4B55CF);
const Color _soft = Color(0xFFEFF0FF);
const Color _muted = Color(0xFF65718A);
const Color _success = Color(0xFF18866D);
const Color _warning = Color(0xFFB45C2E);

IconData _categoryIcon(String category) {
  switch (category) {
    case 'SMS':
      return Icons.sms_outlined;
    case 'Bankacılık':
      return Icons.account_balance_outlined;
    case 'Alışveriş':
      return Icons.shopping_bag_outlined;
    case 'Sosyal Medya':
      return Icons.people_outline;
    case 'Hesap Güvenliği':
      return Icons.password_outlined;
    case 'Karekod':
      return Icons.qr_code_2_outlined;
    case 'İş İlanı':
      return Icons.work_outline;
    case 'Teknik Destek':
      return Icons.computer_outlined;
    case 'Ödeme':
      return Icons.receipt_long_outlined;
    default:
      return Icons.mail_outline;
  }
}

void _openScenario(BuildContext context, Scenario scenario, ProgressStore progress) {
  Navigator.of(context).push<bool>(
    MaterialPageRoute<bool>(
      builder: (context) => DecisionScreen(scenario: scenario, progress: progress),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.progress});

  final ProgressStore progress;

  void _openNamed(BuildContext context, String route) {
    Navigator.of(context).pushNamed<void>(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 24, 20, 20),
                child: Row(children: <Widget>[
                  Icon(Icons.shield_outlined, color: _primary, size: 30),
                  SizedBox(width: 12),
                  Text('TuzakAvcısı', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: _ink)),
                ]),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Ana sayfa'),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                leading: const Icon(Icons.view_list_outlined),
                title: const Text('Senaryolar'),
                onTap: () {
                  Navigator.of(context).pop();
                  _openNamed(context, '/scenarios');
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart_outlined),
                title: const Text('İlerlemem'),
                onTap: () {
                  Navigator.of(context).pop();
                  _openNamed(context, '/progress');
                },
              ),
              ListTile(
                leading: const Icon(Icons.menu_book_outlined),
                title: const Text('Güvenlik rehberi'),
                onTap: () {
                  Navigator.of(context).pop();
                  _openNamed(context, '/guide');
                },
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Eğitim amaçlı, kurgusal senaryolar içerir.',
                    style: TextStyle(color: _muted, fontSize: 12)),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('TuzakAvcısı', style: TextStyle(fontWeight: FontWeight.w800)),
        actions: <Widget>[
          IconButton(
            tooltip: 'Güvenlik rehberi',
            onPressed: () => _openNamed(context, '/guide'),
            icon: const Icon(Icons.help_outline),
          ),
        ],
      ),
      body: AnimatedBuilder(
        animation: progress,
        builder: (context, child) {
          return ListView(
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 28),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Color(0xFF252F73), Color(0xFF515BDC)],
                  ),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(Icons.shield_moon_outlined, color: Colors.white, size: 39),
                    const SizedBox(height: 16),
                    const Text('Dolandırıcılığı fark edebilir misin?',
                        style: TextStyle(color: Colors.white, fontSize: 26, height: 1.2, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 10),
                    const Text('Mesajı incele, kararını ver, tuzağın nasıl çalıştığını öğren.',
                        style: TextStyle(color: Color(0xFFE3E5FF), fontSize: 15, height: 1.5)),
                    const SizedBox(height: 20),
                    FilledButton.icon(
                      style: FilledButton.styleFrom(backgroundColor: Colors.white, foregroundColor: _ink),
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: const Text('Senaryolara başla', style: TextStyle(fontWeight: FontWeight.w700)),
                      onPressed: () => _openNamed(context, '/scenarios'),
                    ),
                  ],
                ),
              ),
              if (progress.storageWarning != null) ...<Widget>[
                const SizedBox(height: 12),
                _StorageWarning(message: progress.storageWarning!),
              ],
              const SizedBox(height: 22),
              const _SectionTitle('Gelişim panon'),
              const SizedBox(height: 12),
              Row(children: <Widget>[
                Expanded(child: _StatCard(icon: Icons.stars_outlined, value: '${progress.points}', label: 'Puan')),
                const SizedBox(width: 10),
                Expanded(child: _StatCard(icon: Icons.verified_outlined, value: '${progress.completedCount}/${scenarios.length}', label: 'Tamamlanan')),
              ]),
              const SizedBox(height: 14),
              _Surface(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      const Text('Senaryo ilerlemesi', style: TextStyle(fontWeight: FontWeight.w700, color: _ink)),
                      Text('%${(progress.completionRate * 100).round()}', style: const TextStyle(color: _primary, fontWeight: FontWeight.w800)),
                    ]),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(value: progress.completionRate, minHeight: 9,
                        borderRadius: BorderRadius.circular(6), backgroundColor: _soft),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const _SectionTitle('Hızlı başlangıç'),
              const SizedBox(height: 12),
              _Shortcut(
                icon: Icons.sms_outlined,
                title: 'İlk tuzağı incele',
                subtitle: 'Şüpheli bir kargo mesajıyla karşılaş',
                onTap: () => _openScenario(context, scenarios.first, progress),
              ),
              const SizedBox(height: 10),
              _Shortcut(
                icon: Icons.bar_chart_outlined,
                title: 'İlerlememe bak',
                subtitle: 'Başarı oranını ve tamamladıklarını gör',
                onTap: () => _openNamed(context, '/progress'),
              ),
              const SizedBox(height: 18),
              const Text('Tüm mesajlar örnektir; gerçek bağlantı veya işlem içermez.',
                  textAlign: TextAlign.center, style: TextStyle(color: _muted, fontSize: 12)),
            ],
          );
        },
      ),
    );
  }
}

class ScenarioListScreen extends StatelessWidget {
  const ScenarioListScreen({super.key, required this.progress});

  final ProgressStore progress;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Senaryolar', style: TextStyle(fontWeight: FontWeight.w800)),
          bottom: const TabBar(tabs: <Tab>[
            Tab(text: 'Tümü'),
            Tab(text: 'Tamamlanan'),
          ]),
        ),
        body: AnimatedBuilder(
          animation: progress,
          builder: (context, child) {
            final completed = scenarios.where((s) => progress.isCompleted(s.id)).toList();
            return TabBarView(children: <Widget>[
              _ScenarioTiles(items: scenarios, progress: progress),
              _ScenarioTiles(items: completed, progress: progress),
            ]);
          },
        ),
      ),
    );
  }
}

class _ScenarioTiles extends StatelessWidget {
  const _ScenarioTiles({required this.items, required this.progress});

  final List<Scenario> items;
  final ProgressStore progress;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Icon(Icons.explore_outlined, size: 48, color: _primary),
            SizedBox(height: 16),
            Text('Henüz tamamlanan senaryo yok.', textAlign: TextAlign.center,
                style: TextStyle(color: _ink, fontWeight: FontWeight.w700)),
            SizedBox(height: 8),
            Text('Tümü sekmesinden ilk kararını verebilirsin.', textAlign: TextAlign.center,
                style: TextStyle(color: _muted)),
          ]),
        ),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final s = items[index];
        final done = progress.isCompleted(s.id);
        return _Surface(
          padding: EdgeInsets.zero,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
            leading: Container(
              height: 49, width: 49,
              decoration: BoxDecoration(color: _soft, borderRadius: BorderRadius.circular(14)),
              child: Icon(_categoryIcon(s.category), color: _primary),
            ),
            title: Text(s.title, style: const TextStyle(fontSize: 15, color: _ink, fontWeight: FontWeight.w800)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text('${s.category} · ${s.subtitle}', style: const TextStyle(color: _muted, fontSize: 12)),
            ),
            trailing: Icon(done ? Icons.check_circle : Icons.chevron_right,
                color: done ? _success : _muted),
            onTap: () => _openScenario(context, s, progress),
          ),
        );
      },
    );
  }
}

class DecisionScreen extends StatefulWidget {
  const DecisionScreen({super.key, required this.scenario, required this.progress});

  final Scenario scenario;
  final ProgressStore progress;

  @override
  State<DecisionScreen> createState() => _DecisionScreenState();
}

class _DecisionScreenState extends State<DecisionScreen> {
  bool _practiceMode = false;
  int? _practiceChoice;

  Future<void> _showResult(int choiceIndex,
      {bool isPractice = false, bool isReview = false}) async {
    final shouldCloseDecision = await Navigator.of(context).push<bool>(
      MaterialPageRoute<bool>(
        builder: (context) => FeedbackScreen(
          scenario: widget.scenario,
          choiceIndex: choiceIndex,
          isPractice: isPractice,
          isReview: isReview,
        ),
      ),
    );
    if (!mounted) return;
    if (shouldCloseDecision == true) Navigator.of(context).pop(true);
  }

  void _choose(int choiceIndex) {
    if (_practiceMode) {
      // The scored answer stays immutable. A practice attempt is transient.
      setState(() => _practiceChoice = choiceIndex);
      _showResult(choiceIndex, isPractice: true);
    } else if (widget.progress.submit(widget.scenario, choiceIndex)) {
      _showResult(choiceIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.scenario;
    return AnimatedBuilder(
      animation: widget.progress,
      builder: (context, child) {
        final firstChoice = widget.progress.choiceFor(s.id);
        final selectedChoice = _practiceMode ? _practiceChoice : firstChoice;
        final canChoose = _practiceMode ? _practiceChoice == null : firstChoice == null;
        return Scaffold(
          appBar: AppBar(title: Text('Senaryo ${s.id.toString().padLeft(2, '0')}')),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 28),
            children: <Widget>[
              _CategoryTag(icon: _categoryIcon(s.category), text: s.category),
              const SizedBox(height: 15),
              Text(s.title, style: const TextStyle(fontSize: 26, color: _ink, fontWeight: FontWeight.w800, height: 1.2)),
              const SizedBox(height: 7),
              Text(s.subtitle, style: const TextStyle(color: _muted, fontSize: 15)),
              const SizedBox(height: 20),
              _ScenarioMessageCard(scenario: s),
              if (_practiceMode) ...<Widget>[
                const SizedBox(height: 15),
                const _PracticeNotice(),
              ],
              const SizedBox(height: 24),
              Text(s.question, style: const TextStyle(fontSize: 19, color: _ink, fontWeight: FontWeight.w800)),
              const SizedBox(height: 12),
              for (int i = 0; i < s.options.length; i++) ...<Widget>[
                _OptionTile(
                  index: i,
                  label: s.options[i],
                  selected: selectedChoice == i,
                  enabled: canChoose,
                  onTap: () => _choose(i),
                ),
                const SizedBox(height: 10),
              ],
              if (firstChoice != null && !_practiceMode) ...<Widget>[
                const SizedBox(height: 12),
                const Text('İlk kararın kaydedildi. Alıştırma yapmak puanını değiştirmez.',
                    style: TextStyle(color: _muted, fontSize: 13)),
                const SizedBox(height: 12),
                FilledButton.icon(
                  onPressed: () => setState(() {
                    _practiceMode = true;
                    _practiceChoice = null;
                  }),
                  icon: const Icon(Icons.replay_outlined),
                  label: const Text('Alıştırma modunda tekrar dene'),
                ),
                const SizedBox(height: 9),
                OutlinedButton.icon(
                  onPressed: () => _showResult(firstChoice, isReview: true),
                  icon: const Icon(Icons.visibility_outlined),
                  label: const Text('İlk sonucumu görüntüle'),
                ),
              ],
              if (_practiceMode && _practiceChoice != null) ...<Widget>[
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () => setState(() => _practiceChoice = null),
                  icon: const Icon(Icons.restart_alt_outlined),
                  label: const Text('Bir daha alıştırma yap'),
                ),
                const SizedBox(height: 9),
                FilledButton.icon(
                  onPressed: () => _showResult(_practiceChoice!, isPractice: true),
                  icon: const Icon(Icons.visibility_outlined),
                  label: const Text('Alıştırma sonucunu gör'),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _ScenarioMessageCard extends StatelessWidget {
  const _ScenarioMessageCard({required this.scenario});

  final Scenario scenario;

  @override
  Widget build(BuildContext context) {
    final isSms = scenario.category == 'SMS' || scenario.category == 'Ödeme';
    final isEmail = scenario.category == 'E-posta' || scenario.category == 'Bankacılık';
    return _Surface(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Icon(isEmail ? Icons.alternate_email : isSms ? Icons.sms_outlined : _categoryIcon(scenario.category),
                color: _primary, size: 20),
            const SizedBox(width: 9),
            Expanded(child: Text(scenario.source,
                style: const TextStyle(fontWeight: FontWeight.w700, color: _ink))),
          ]),
          const SizedBox(height: 13),
          const Divider(color: Color(0xFFE7EAF3)),
          const SizedBox(height: 13),
          if (isSms)
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F2F8),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(17),
                    bottomLeft: Radius.circular(17),
                    bottomRight: Radius.circular(17),
                  ),
                ),
                child: SelectableText(scenario.message,
                    style: const TextStyle(color: _ink, height: 1.55, fontSize: 16)),
              ),
            )
          else if (isEmail)
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              const Text('GELEN KUTUSU · SİMÜLASYON',
                  style: TextStyle(color: _muted, fontSize: 10, letterSpacing: 1.1)),
              const SizedBox(height: 12),
              SelectableText(scenario.message,
                  style: const TextStyle(color: _ink, height: 1.55, fontSize: 16)),
            ])
          else
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FD),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SelectableText(scenario.message,
                  style: const TextStyle(color: _ink, height: 1.55, fontSize: 16)),
            ),
          const SizedBox(height: 13),
          const Text('ÖRNEK / KURGUSAL İÇERİK · BAĞLANTI ETKİN DEĞİL',
              style: TextStyle(color: _muted, fontSize: 10, letterSpacing: 0.7)),
        ],
      ),
    );
  }
}

class _PracticeNotice extends StatelessWidget {
  const _PracticeNotice();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFF7E8),
      borderRadius: BorderRadius.circular(13),
      child: const Padding(
        padding: EdgeInsets.all(13),
        child: Row(children: <Widget>[
          Icon(Icons.school_outlined, color: _warning),
          SizedBox(width: 10),
          Expanded(child: Text('Alıştırma modu: Bu karar ilk denemeni ve puanını değiştirmez.',
              style: TextStyle(color: _ink, height: 1.4))),
        ]),
      ),
    );
  }
}

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({
    super.key,
    required this.scenario,
    required this.choiceIndex,
    this.isPractice = false,
    this.isReview = false,
  });

  final Scenario scenario;
  final int choiceIndex;
  final bool isPractice;
  final bool isReview;

  @override
  Widget build(BuildContext context) {
    final isCorrect = choiceIndex == scenario.correctIndex;
    final accent = isCorrect ? _success : _warning;
    final String resultLabel;
    if (isPractice) {
      resultLabel = 'Alıştırma tamamlandı · Puanın değişmedi';
    } else if (isReview) {
      resultLabel = isCorrect
          ? 'İlk denemen: +10 puan (zaten kaydedildi)'
          : 'İlk denemen: 0 puan (zaten kaydedildi)';
    } else {
      resultLabel = isCorrect ? '+10 puan kazandın' : 'Bu turda puan kazanamadın';
    }
    return Scaffold(
      appBar: AppBar(title: Text(isPractice ? 'Alıştırma analizi' : 'Karar analizi')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(18, 14, 18, 30),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: isCorrect ? const Color(0xFFE7F6F1) : const Color(0xFFFFF0E7),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Icon(isCorrect ? Icons.verified_user_outlined : Icons.warning_amber_rounded,
                  size: 42, color: accent),
              const SizedBox(height: 10),
              Text(isCorrect ? 'Tuzağı fark ettin!' : 'Burada bir risk var!',
                  style: TextStyle(color: accent, fontWeight: FontWeight.w800, fontSize: 25)),
              const SizedBox(height: 7),
              Text(resultLabel,
                  style: TextStyle(color: accent, fontSize: 15, fontWeight: FontWeight.w700)),
            ]),
          ),
          const SizedBox(height: 18),
          _Surface(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              const _SectionTitle('Senin kararın'),
              const SizedBox(height: 8),
              Text(scenario.options[choiceIndex], style: const TextStyle(color: _ink, height: 1.5)),
              const SizedBox(height: 16),
              const _SectionTitle('En güvenli seçim'),
              const SizedBox(height: 8),
              Text(scenario.options[scenario.correctIndex], style: const TextStyle(color: _success, fontWeight: FontWeight.w700, height: 1.5)),
              const SizedBox(height: 14),
              Text(scenario.explanation, style: const TextStyle(color: _muted, height: 1.5)),
            ]),
          ),
          const SizedBox(height: 14),
          _Surface(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              const _SectionTitle('Dikkat etmen gereken işaretler'),
              const SizedBox(height: 12),
              for (final clue in scenario.clues)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    const Icon(Icons.error_outline, size: 19, color: _warning),
                    const SizedBox(width: 10),
                    Expanded(child: Text(clue, style: const TextStyle(color: _ink, height: 1.4))),
                  ]),
                ),
              const Divider(color: Color(0xFFE7EAF3)),
              const SizedBox(height: 9),
              const Text('GÜVENLİ ADIM', style: TextStyle(color: _success, fontSize: 12, fontWeight: FontWeight.w800)),
              const SizedBox(height: 7),
              Text(scenario.safeAction, style: const TextStyle(color: _ink, height: 1.5)),
            ]),
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).pop(true),
            icon: const Icon(Icons.arrow_back_rounded),
            label: const Text('Önceki ekrana dön'),
          ),
        ],
      ),
    );
  }
}

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key, required this.progress});

  final ProgressStore progress;

  Future<void> _confirmReset(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('İlerleme sıfırlansın mı?'),
        content: const Text('Tüm senaryo cevapların ve puanların silinecek.'),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.of(dialogContext).pop(false), child: const Text('Vazgeç')),
          TextButton(onPressed: () => Navigator.of(dialogContext).pop(true), child: const Text('Sıfırla')),
        ],
      ),
    );
    if (!context.mounted) return;
    if (confirmed == true) progress.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('İlerlemem', style: TextStyle(fontWeight: FontWeight.w800))),
      body: AnimatedBuilder(
        animation: progress,
        builder: (context, child) {
          return ListView(padding: const EdgeInsets.fromLTRB(18, 12, 18, 28), children: <Widget>[
            if (progress.storageWarning != null) ...<Widget>[
              _StorageWarning(message: progress.storageWarning!),
              const SizedBox(height: 12),
            ],
            _Surface(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              const Text('TOPLAM PUAN', style: TextStyle(color: _muted, letterSpacing: 1, fontSize: 12)),
              const SizedBox(height: 8),
              Text('${progress.points} / ${scenarios.length * 10}',
                  style: const TextStyle(color: _primary, fontWeight: FontWeight.w900, fontSize: 32)),
              const SizedBox(height: 18),
              LinearProgressIndicator(value: progress.completionRate, minHeight: 10,
                  borderRadius: BorderRadius.circular(6), backgroundColor: _soft),
              const SizedBox(height: 9),
              Text('${progress.completedCount} / ${scenarios.length} senaryo tamamlandı',
                  style: const TextStyle(color: _muted)),
            ])),
            const SizedBox(height: 12),
            Row(children: <Widget>[
              Expanded(child: _StatCard(icon: Icons.check_circle_outline, value: '${progress.correctCount}', label: 'Güvenli seçim')),
              const SizedBox(width: 10),
              Expanded(child: _StatCard(icon: Icons.search_outlined, value: '${progress.incorrectCount}', label: 'Öğrenme fırsatı')),
            ]),
            const SizedBox(height: 20),
            const _SectionTitle('Senaryo durumları'),
            const SizedBox(height: 10),
            for (final scenario in scenarios) ...<Widget>[
              _Shortcut(
                icon: progress.isCompleted(scenario.id) ? Icons.check_circle_outline : Icons.lock_open_outlined,
                title: scenario.title,
                subtitle: progress.isCompleted(scenario.id)
                    ? (progress.choiceFor(scenario.id) == scenario.correctIndex ? 'Güvenli karar · +10 puan' : 'Tekrar gözden geçir · 0 puan')
                    : 'Henüz tamamlanmadı',
                onTap: () => _openScenario(context, scenario, progress),
              ),
              const SizedBox(height: 9),
            ],
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: progress.completedCount == 0 ? null : () => _confirmReset(context),
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text('İlerlemeyi sıfırla'),
            ),
            const SizedBox(height: 6),
            const Text('v0.2: İlk kararlar bu cihazda saklanır. Alıştırmalar puanı değiştirmez.',
                textAlign: TextAlign.center, style: TextStyle(color: _muted, fontSize: 12)),
          ]);
        },
      ),
    );
  }
}

class GuideScreen extends StatelessWidget {
  const GuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const tips = <(IconData, String, String)>[
      (Icons.link_off_outlined, 'Bağlantıyı bağımsız doğrula', 'SMS veya e-postadaki bağlantı yerine kurumun resmi uygulamasını ya da kendin yazdığın adresi kullan.'),
      (Icons.password_outlined, 'Kod ve parolanı paylaşma', 'Doğrulama kodlarını, parolaları ve güvenlik bilgilerini başkalarına gönderme.'),
      (Icons.schedule_outlined, 'Acele baskısını fark et', 'Süre kısıtı, hesap kapanması veya kaçırılacak fırsat vurguları seni düşünmeden karar vermeye itebilir.'),
      (Icons.payments_outlined, 'Ön ödeme taleplerini sorgula', 'Şüpheli kapora, hediye-kargo bedeli ve işe giriş ücreti taleplerini bağımsız kontrol et.'),
      (Icons.support_agent_outlined, 'Resmi kanaldan ulaş', 'Arayan ya da yazan kişinin söylediği numara yerine resmi iletişim kaynağını kullan.'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Güvenlik rehberi', style: TextStyle(fontWeight: FontWeight.w800))),
      body: ListView(padding: const EdgeInsets.fromLTRB(18, 14, 18, 28), children: <Widget>[
        const Text('Dijital ortamda 5 güvenli alışkanlık',
            style: TextStyle(color: _ink, fontSize: 24, height: 1.2, fontWeight: FontWeight.w800)),
        const SizedBox(height: 9),
        const Text('Şüpheli bir durumda hızlı cevap vermek zorunda değilsin. Önce doğrula.',
            style: TextStyle(color: _muted, height: 1.5)),
        const SizedBox(height: 18),
        for (final tip in tips) ...<Widget>[
          _Surface(child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: _soft, borderRadius: BorderRadius.circular(12)),
                child: Icon(tip.$1, color: _primary)),
            const SizedBox(width: 14),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(tip.$2, style: const TextStyle(color: _ink, fontWeight: FontWeight.w800)),
              const SizedBox(height: 6),
              Text(tip.$3, style: const TextStyle(color: _muted, height: 1.5)),
            ])),
          ])),
          const SizedBox(height: 11),
        ],
        const Text('Bu uygulama eğitim amaçlıdır; gerçek olaylarda ilgili kurumun resmi destek kanallarından yardım al.',
            style: TextStyle(color: _muted, fontSize: 12, height: 1.5)),
      ]),
    );
  }
}

class _StorageWarning extends StatelessWidget {
  const _StorageWarning({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFF0E7),
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(children: <Widget>[
          const Icon(Icons.warning_amber_outlined, color: _warning),
          const SizedBox(width: 9),
          Expanded(child: Text(message, style: const TextStyle(color: _ink))),
        ]),
      ),
    );
  }
}

class _Surface extends StatelessWidget {
  const _Surface({required this.child, this.padding = const EdgeInsets.all(18)});

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    // ListTile must paint ink effects on a visible Material ancestor.
    // A colored DecoratedBox between ListTile and Material hides them.
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFE9ECF4)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: _ink, fontSize: 18, fontWeight: FontWeight.w800));
  }
}

class _CategoryTag extends StatelessWidget {
  const _CategoryTag({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        decoration: BoxDecoration(color: _soft, borderRadius: BorderRadius.circular(30)),
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(icon, size: 16, color: _primary),
          const SizedBox(width: 7),
          Text(text, style: const TextStyle(color: _primary, fontWeight: FontWeight.w700)),
        ]),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.icon, required this.value, required this.label});

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return _Surface(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Icon(icon, color: _primary, size: 25),
      const SizedBox(height: 8),
      Text(value, style: const TextStyle(color: _ink, fontSize: 24, fontWeight: FontWeight.w900)),
      const SizedBox(height: 3),
      Text(label, style: const TextStyle(color: _muted, fontSize: 12)),
    ]));
  }
}

class _Shortcut extends StatelessWidget {
  const _Shortcut({required this.icon, required this.title, required this.subtitle, required this.onTap});
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return _Surface(
      padding: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
        leading: Icon(icon, color: _primary, size: 29),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w800, color: _ink, fontSize: 15)),
        subtitle: Text(subtitle, style: const TextStyle(color: _muted, fontSize: 12)),
        trailing: const Icon(Icons.chevron_right, color: _muted),
        onTap: onTap,
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({required this.index, required this.label, required this.selected,
    required this.enabled, required this.onTap});
  final int index;
  final String label;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? _soft : Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: enabled ? onTap : null,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: selected ? _primary : const Color(0xFFE3E7F0), width: selected ? 2 : 1),
          ),
          child: Row(children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 28, height: 28,
              decoration: BoxDecoration(color: selected ? _primary : const Color(0xFFF0F2F7), shape: BoxShape.circle),
              child: Text(String.fromCharCode(65 + index), style: TextStyle(color: selected ? Colors.white : _muted, fontWeight: FontWeight.w800)),
            ),
            const SizedBox(width: 12),
            Expanded(child: Text(label, style: const TextStyle(color: _ink, height: 1.45, fontWeight: FontWeight.w600))),
          ]),
        ),
      ),
    );
  }
}
