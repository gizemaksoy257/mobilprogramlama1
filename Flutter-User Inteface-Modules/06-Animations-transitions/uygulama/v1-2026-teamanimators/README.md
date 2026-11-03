> **Uyarı:** Bu içerik, SCÜ Şarkışla UBYO Mobil Programlama I dersi kapsamında tamamen eğitim amaçlı çevrilmiş ve derlenmiştir. Orijinal dokümantasyon kaynakları (dart.dev, docs.flutter.dev) kendi orijinal lisanslarına (BSD-3-Clause, CC-BY 4.0) tabidir. Bu çalışmanın hiçbir ticari amacı yoktur.

# Flutter Animasyonlar ve Geçişler — Mobil Stüdyo & Scratch Tarzı Canlı Eğitim Laboratuvarı (`v1-2026-teamanimators`)

**Kurum:** Sivas Cumhuriyet Üniversitesi · Şarkışla Uygulamalı Bilimler Yüksekokulu · Bilişim Sistemleri ve Teknolojileri Bölümü  
**Ders:** Mobil Programlama I (2026 Güz Dönemi)  
**Modül:** `Flutter-User Inteface-Modules/06-Animations-transitions`  
**Takım:** 6. Takım — **TeamAnimators**  
- Aydın Yiğit Oğuz  
- Arman Dündar  
- Sefa Omaç  
- Yusuf Cemal Durmuş  

---

## İçindekiler

- [Uygulama Özeti ve Mimari Özellikler](#uygulama-özeti-ve-mimari-özellikler)
- [Klasör İçeriği](#klasör-içeriği)
- [Çalıştırma Yöntemleri](#çalıştırma-yöntemleri)

---

## Uygulama Özeti ve Mimari Özellikler

Bu proje, Flutter'daki **Animasyonlar ve Geçişler (Animations & Transitions)** konusunu yalnızca göstermekle kalmayıp **kendi üzerinde öğreten interaktif bir mobil simülatör ve Scratch blok denetçisi** olarak tasarlanmıştır:

1. **Sol Bölüm — Gerçekçi Titanyum Mobil Cihaz Simülatörü (`120Hz Impeller`):**
   - PC veya geniş ekranda açıldığında bile gerçekçi bir mobil telefon çerçevesi (*Dynamic Island, durum çubuğu, telefon içi HUD bildirim balonu ve 5 sekmeli alt `NavigationBar`*) içinde çalışır.
   - **Modül 1 — Örtük (`Implicit`) Animasyonlar:** `AnimatedContainer`, `AnimatedOpacity`, `TweenAnimationBuilder<double>` ve canlı `Curve` (`Curves.easeOutBack`, `Curves.easeInOut`, `Curves.linear`) seçici.
   - **Modül 2 — Açık (`Explicit`) Animasyonlar:** `AnimationController`, `SingleTickerProviderStateMixin (vsync: this)`, `.forward()`, `.reverse()`, `.repeat(reverse: true)`, `.stop()`, `.reset()` yönetmen konsolu ve `AnimatedBuilder` (`child` önbellekleme) canlı telemetri çubuğu.
   - **Modül 3 — `Hero` & `PageRouteBuilder` Geçişleri:** Telefon ekranının kendi içinde alttan (`Offset(0, 1)`) veya sağdan (`Offset(1, 0)`) `SlideTransition` ile kayarak açılan detay rotası ve `Overlay` katmanında kavisli uçan `Hero(tag: ...)` bileşenleri.
   - **Modül 4 — Kademeli (`Staggered`) Koreografi:** Tek bir `AnimationController` üzerinde `Interval(begin, end)` pencereleriyle dilimlenmiş 5 özelliğin (`Opacity`, `Width`, `Height`, `BorderRadius`, `Color`) canlı Gantt zaman çizelgesi.
   - **Modül 5 — Fizik Simülasyonu (`SpringSimulation`):** `GestureDetector` ile sürüklenip bırakıldığında parmak fırlatma hızını (`pixelsPerSecond`) koruyarak merkeze yaylanan kart ve canlı `mass` (kütle), `stiffness` (sertlik), `damping` (sönümleme) ayar çubukları.

2. **Sağ Bölüm — Scratch Yapboz Blokları & Canlı API Denetçisi:**
   - Mobil ekrandaki herhangi bir butonun **üzerine fareyle gelindiğinde (`HOVER`)** veya **dokunulduğunda (`CLICK / DRAG`)**:
     - Tetiklenen **Flutter API çağrısı** (`setState`, `_controller.forward()`, `_controller.animateWith(SpringSimulation(...))` vb.),
     - Kaputun altında gerçekleşen **Scratch tarzı birbirine geçen yapboz akış blokları** (*Olay ➔ Zamanlayıcı ➔ Curve & Tween ➔ 120 FPS İzole Çizim*),
     - O işlemin **gerçek Flutter/Dart kodu**,
     - Zaman damgalı **Canlı Çağrı Günlüğü (Call Stack Terminal)** anında ekranda güncellenir.

---

## Klasör İçeriği

| Dosya | Açıklama |
|---|---|
| [`main.dart`](./main.dart) | Ana depo kurallarına uygun kök dizin Flutter uygulama kaynak kodu |
| [`lib/main.dart`](./lib/main.dart) | Doğrudan `flutter run` ile çalıştırılabilir proje kaynak kodu |
| [`pubspec.yaml`](./pubspec.yaml) | Standart Flutter proje yapılandırma dosyası (harici paket gerektirmez) |
| [`index.html`](./index.html) / [`preview.html`](./preview.html) | Flutter SDK kurulu olmayan bilgisayarlarda dahi tek tıkla tarayıcıda çalışan birebir Mobil Stüdyo & Scratch Simülatörü |
| [`web_ac.bat`](./web_ac.bat) | Windows'ta tek tıkla canlı önizlemeyi başlatan betik |

---

## Çalıştırma Yöntemleri

### Yöntem 1: Flutter SDK ile Çalıştırma (Mobil / Masaüstü / Web)

```bash
cd "Flutter-User Inteface-Modules/06-Animations-transitions/uygulama/v1-2026-teamanimators"
flutter pub get
flutter run
```

### Yöntem 2: Kurulumsuz Anında Web Simülatörü (`index.html` / `web_ac.bat`)

Bilgisayarınızda Flutter SDK kurulu olmasa bile klasördeki [`index.html`](./index.html) (veya [`web_ac.bat`](./web_ac.bat)) dosyasına çift tıklayarak **Mobil Cihaz Simülatörü ve Scratch Motor Denetçisini** herhangi bir modern tarayıcıda anında çalıştırabilirsiniz.
