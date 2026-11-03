# dAppAccessibilityAuditor 🛡️♿
### Akıllı Sözleşme Ön Yüzleri İçin Web3 WCAG ve Erişilebilirlik Denetim Asistanı

**dAppAccessibilityAuditor**, Web3 geliştiricileri, dApp tasarımcıları ve blok zinciri protokol ekipleri için geliştirilmiş tam teşekküllü bir mobil erişilebilirlik ve WCAG denetim uygulamasıdır.

Merkeziyetsiz uygulamaları (DeFi, NFT, DAO, Cüzdanlar) uluslararası dijital erişilebilirlik standartları (**WCAG 2.1 Seviye A, AA, AAA**, **EN 301 549** ve **Revised Section 508**) çerçevesinde otomatik olarak analiz eder; renk kontrastını, mobil dokunmatik hedef boyutlarını, TalkBack/VoiceOver ekran okuyucu uyumluluğunu, dinamik metin ölçeklemesini ve geri alınamaz işlem onay mekanizmalarını doğrular.

---

## 🚀 Öne Çıkan Özellikler

### 1. Ana Kontrol Paneli & Şablon Seçici
- **Modern ve Erişilebilir Web3 Teması:** Koyu lacivert zemin, yüksek kontrastlı vurgular (#38BDF8 Camgöbeği, #10B981 Zümrüt Yeşili, #F59E0B Kehribar Sarısı).
- **Hızlı Erişilebilirlik Araç Çubuğu:**
  - **Yüksek Kontrast Modu (AAA):** 7:1+ kontrast oranını garanti eden yüksek kontrastlı mod.
  - **Dinamik Yazı Ölçeği:** %100, %150 ve %200 yazı boyutlandırma testi (WCAG 1.4.4 metin taşması kontrolü).
  - **Semantik Ağaç İncelemesi:** Flutter'ın yerel `showSemanticsDebugger` mekanizması ile ekran okuyucu düğümlerini görselleştirme.
- **5 Gerçek Dünya Web3 Şablonu:**
  1. *Uniswap V3 Token Takas Kartı* (Düşük kontrastlı gas ücreti ve 28x28 dp kayma ayar çarkı butonu ihlali).
  2. *OpenSea NFT Basım Kartı* (30x30 dp küçük adet artırma/azaltma butonları ve eksik görsel alternatif metni).
  3. *RainbowKit / Web3Modal Cüzdan Bağlantısı* (Ekran okuyucuya etiketsiz sunulan cüzdan bağlantı kesme butonu).
  4. *Aave V3 Teminat Sürgüsü* (Semantik rolü eksik sürgü ve onaysız otomatik tasfiye tetikleme riski).
  5. *Snapshot DAO Oylama Paneli* (Grup semantiği eksik radyo butonları ve oy gücü yazısı kırpılması).
- **Özel dApp Tarayıcısı:** Kendi akıllı sözleşme URL'nizi veya Flutter/React/HTML bileşen kodunuzu yapıştırarak anında denetleme.
- **Standartlara Uygun Denetim Butonu:** Minimum 48x48 dp dokunmatik alan kuralını eksiksiz karşılayan erişilebilir buton.

### 2. Otomatik Denetim Motoru (Çekirdek Mantık)
- **Renk Kontrast Analizi (WCAG 1.4.3 & 1.4.11):**
  - W3C resmi nispi parlaklık ($L$) formülünü programatik olarak hesaplar:
    $$L = 0.2126 \cdot R_{sRGB} + 0.7152 \cdot G_{sRGB} + 0.0722 \cdot B_{sRGB}$$
  - Kontrast Oranı: $\text{Oran} = \frac{L_1 + 0.05}{L_2 + 0.05}$
  - Normal metinlerde minimum **4.5:1**, büyük metinlerde **3.0:1**, buton kenarlıklarında **3.0:1** şartını denetler.
  - **Otomatik Renk Düzeltici:** Standartları karşılamayan renkler için otomatik olarak WCAG AA uyumlu renk kodu önerir.
- **Dokunmatik Hedef Boyutu Denetimi (WCAG 2.5.5 / Android & iOS):**
  - Butonların Android Material (**en az 48x48 dp**) ve iOS HIG (**en az 44x44 pt**) standartlarına uygunluğunu doğrular.
  - Eksik piksel/dp miktarını hesaplar ve doğrudan kopyalanabilir `ConstrainedBox` / `IconButton` dolgu kodunu üretir.
- **Semantik ve Ekran Okuyucu İncelemesi (WCAG 4.1.2 & 4.1.3):**
  - Buton, kaydırıcı, radyo butonu ve resim rollerini inceler.
  - Etiketsiz ikon butonları (örn. kopyalama, ayar çarkı, oturum kapatma) tespit eder.
  - Dinamik blok zinciri verilerinde (anlık gas ücreti fırlaması, işlem onayı) `liveRegion: true` bildirimini kontrol eder.
- **Metin Boyutlandırma ve İşlem Güvenliği (WCAG 1.4.4 & 3.2.2):**
  - %200 yazı boyutunda kriptografik adreslerin (`0x...`) sabit kutularda kırpılmasını önler.
  - Kullanıcıya açık bir onay penceresi sunulmadan arka planda otomatik on-chain işlem başlatılmasını engeller.

### 3. Detaylı Denetim Raporu ve VPAT® Üreticisi
- **Sonuç Ekranı:**
  - Uyumluluk skoru göstergesi (%0 - %100) ve renk dışı durum rozetleri.
  - Kategori bazında metrikler (Kontrast, Dokunmatik Hedef, Semantik, İşlem Güvenliği).
  - Önem derecesine göre filtreleme (Kritik, Ciddi, Orta, İyileştirme).
  - Sorunun nedenini, görme engelli veya motor kısıtlı kullanıcıya etkisini ve **çözüm kodunu** gösteren açılır kartlar.
- **Resmi VPAT® (Voluntary Product Accessibility Template) Raporu:**
  - ITI VPAT 2.5 / Section 508 / EN 301 549 şablonuna birebir uygun.
  - Uygunluk Düzeyleri (*Destekliyor*, *Kısmen Destekliyor*, *Desteklemiyor*, *Uygulanamaz*).
  - **Markdown (.md)** ve **JSON (.json)** formatında tek tıkla panoya kopyalama ve dışa aktarma.

### 4. İnteraktif Erişilebilirlik Test Laboratuvarı (Sandbox)
- **Kontrast Laboratuvarı:** Anlık W3C nispi parlaklık hesaplaması, hazır renk paletleri ve otomatik erişilebilir renk üreticisi.
- **Dokunmatik Hedef Simülatörü:** 20dp - 60dp aralığında buton boyutunu kaydırarak Android 48x48 dp sınır çizgisini test etme.
- **Yazı Büyütme Testi:** Sabit yükseklikli kutuların metin kırpması ile esnek ve duyarlı yapıların karşılaştırması.

---

## 🧪 Testlerin Çalıştırılması (Flutter Guideline API)

Proje, Flutter'ın resmi `flutter_test` erişilebilirlik yönergesi API'lerini (`meetsGuideline`) içerir:

```dart
// test/guideline_api_widget_test.dart
testWidgets('AccessibleButton tüm Android, iOS ve Semantik yönergeleri karşılar', (WidgetTester tester) async {
  final SemanticsHandle handle = tester.ensureSemantics();

  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: AccessibleButton(
          onPressed: () {},
          semanticLabel: 'Akıllı Sözleşme Token Takasını Başlat',
          tooltip: 'ERC-20 token takasını onayla',
          minWidth: 48.0,
          minHeight: 48.0,
          child: const Text('Takası Onayla'),
        ),
      ),
    ),
  );

  // 1. Android Dokunmatik Alan Standardı (En az 48x48 dp)
  await expectLater(tester, meetsGuideline(androidTapTargetGuideline));

  // 2. iOS Dokunmatik Alan Standardı (En az 44x44 pt)
  await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));

  // 3. Etiketli Dokunmatik Alan Standardı (Erişilebilir isim zorunluluğu)
  await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));

  // 4. Metin Kontrast Standardı
  await expectLater(tester, meetsGuideline(textContrastGuideline));

  handle.dispose();
});
```

Testleri çalıştırmak için terminalden:
```bash
flutter test
```

---

## 📁 Proje Dosya Yapısı

```
dAppAccessibilityAuditor/
├── pubspec.yaml                          # Bağımlılıklar (Provider, Intl, Flutter SDK)
├── analysis_options.yaml                 # Katı linter ve erişilebilirlik kuralları
├── README.md                             # Türkçe teknik dökümantasyon ve standart matrisi
├── lib/
│   ├── main.dart                         # Uygulama giriş noktası ve dinamik ölçekleyici
│   ├── theme/
│   │   └── app_theme.dart                # Web3 koyu tema ve Yüksek Kontrast (AAA) modu
│   ├── models/
│   │   ├── wcag_criterion.dart           # WCAG 2.1 (A, AA, AAA) ve EN 301 549 kriterleri
│   │   ├── audit_issue.dart              # İhlal modeli (Önem derecesi, fark kodları)
│   │   ├── audit_report.dart             # Birleşik denetim raporu ve skorlama
│   │   ├── contrast_models.dart          # Nispi parlaklık ve kontrast oranı modelleri
│   │   ├── touch_target_models.dart      # Android (48dp) ve iOS (44pt) hedef modelleri
│   │   ├── semantics_models.dart         # SemanticsRole ve ekran okuyucu modelleri
│   │   ├── vpat_report.dart              # VPAT 2.5 Section 508 ve EN 301 549 tabloları
│   │   └── web3_preset.dart              # Uniswap, OpenSea, RainbowKit, Aave, Snapshot
│   ├── services/
│   │   ├── contrast_analyzer.dart        # W3C nispi parlaklık & kontrast algoritması
│   │   ├── touch_target_validator.dart   # 48x48 dp dokunmatik boyut doğrulayıcısı
│   │   ├── semantics_role_inspector.dart # TalkBack/VoiceOver ve ARIA denetleyicisi
│   │   ├── scalable_typography_checker.dart # %200 metin büyütme ve WCAG 3.2.2 onayı
│   │   ├── dapp_audit_engine.dart        # Ana denetim koordinatörü ve kod ayrıştırıcı
│   │   └── vpat_generator.dart           # Otomatik VPAT raporlayıcı (MD & JSON)
│   ├── providers/
│   │   └── audit_provider.dart           # Durum yönetimi (ChangeNotifier)
│   ├── widgets/
│   │   ├── accessible_button.dart        # 4 Guideline API kuralına tam uyan buton
│   │   ├── accessibility_toolbar.dart    # Yüksek kontrast, font ölçeği ve semantik çubuğu
│   │   ├── compliance_gauge.dart         # Dairesel uyumluluk göstergesi
│   │   ├── metric_card.dart              # Kontrast, hedef ve semantik özet kartları
│   │   ├── issue_card.dart               # Açılır kusur ve çözüm kodu kartı
│   │   ├── code_diff_viewer.dart         # Hatalı vs Uyumlu kod karşılaştırıcı
│   │   └── web3_interactive_preview.dart# Canlı bileşen simülasyonu
│   └── screens/
│       ├── dashboard_screen.dart         # Ana kontrol paneli ve şablon seçici
│       ├── audit_results_screen.dart     # Sonuç ekranı, filtreler ve hata kartları
│       ├── vpat_export_screen.dart       # VPAT belgesi inceleme ve dışa aktarma
│       └── accessibility_sandbox_screen.dart # Renk ve dokunmatik hedef test laboratuvarı
└── test/
    ├── audit_engine_test.dart            # Parlaklık, kontrast, hedef ve VPAT birim testleri
    └── guideline_api_widget_test.dart    # Flutter Guideline API erişilebilirlik testleri
```
