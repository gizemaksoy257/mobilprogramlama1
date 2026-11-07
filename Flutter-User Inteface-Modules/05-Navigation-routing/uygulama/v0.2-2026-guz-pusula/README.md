# TuzakAvcısı v0.2 — Flutter Navigation & Routing

**Ders:** Mobil Programlama I  
**Takım:** PUSULA (5. Takım — Navigation & Routing)  
**Hazırlayanlar:** Nilay Özçelik, Yüsra Paçal, Yağmur Öztekin  
**Teslim sürümü:** `v0.2.0-ders`

## Projenin Amacı

TuzakAvcısı, kullanıcıların dijital dolandırıcılık girişimlerini fark etmesini desteklemek amacıyla Flutter ile geliştirilmiş, eğitim amaçlı ve etkileşimli bir karar simülasyonudur. Kullanıcılar kurgusal mesajları değerlendirerek güvenli seçeneği belirler ve kararlarının gerekçesini öğrenir.

> **Not:** Uygulamadaki SMS, e-posta, ilan ve diğer mesajlar kurgusaldır. Gerçek bağlantılar üzerinden işlem veya ödeme yapılmaz.

## Özellikler

- SMS, bankacılık, sosyal medya ve diğer dijital ortamlara ilişkin **12 kurgusal senaryo**
- Her senaryoda üç karar seçeneği ve seçimin ardından açıklamalı analiz
- İlk tercihe göre puanlama ve tamamlanma ilerlemesi
- Tamamlanan senaryolarda, ilk puanı değiştirmeden tekrar alıştırma yapabilme
- İlerlemenin cihaz üzerinde yerel olarak saklanması (`shared_preferences`)
- Android ve web için Flutter arayüzü

## Dersteki Navigation & Routing Konusuyla İlişkisi

Uygulama, birden fazla ekran arasında gezinmeyi pratik olarak göstermektedir:

1. **Ana sayfa:** Kullanıcıyı senaryolara, ilerleme ekranına ve rehbere yönlendirir.
2. **Senaryo listesi:** Kullanıcı bir senaryo seçer.
3. **Senaryo ayrıntısı:** Seçilen senaryonun bilgileri ve karar seçenekleri görüntülenir.
4. **Karar analizi:** Seçilen yanıtın değerlendirmesi gösterilir.
5. **İlerleme ekranı:** Puan ve tamamlanma durumu listelenir.

Bu akışta Flutter'ın `Navigator` yaklaşımı, adlandırılmış rotalar ve ekranlar arası veri aktarımı gibi ders kavramları örneklendirilmektedir. Sunumda anlatılan `go_router` gibi diğer yönlendirme yaklaşımları bu uygulamada zorunlu bağımlılık olarak kullanılmamıştır.

## Proje Dosyaları

| Konum | Açıklama |
|---|---|
| `lib/main.dart` | Uygulama başlangıcı ve ana yapı |
| `lib/ui/screens.dart` | Kullanıcı arayüzü ve ekranlar |
| `lib/data/scenarios.dart` | Kurgusal senaryo verileri |
| `lib/models/scenario.dart` | Senaryo veri modeli |
| `lib/state/` | İlerleme ve yerel kayıt yönetimi |
| `test/` | Otomatik testler |
| `android/`, `web/` | Platform proje dosyaları |
| `docs/` | Teknik notlar ve test planı |

## Kurulum ve Çalıştırma

Flutter SDK ve hedef platformun geliştirme araçları kurulu olmalıdır.

```bash
flutter pub get
flutter devices
flutter run
```

Birden fazla cihaz varsa `flutter run -d <cihaz-kimligi>` komutuyla hedef seçilebilir. Web için örneğin `flutter run -d edge` kullanılabilir.

### Kod Analizi ve Testler

```bash
flutter analyze
flutter test
```

**v0.2 ders sürümünün son yerel kontrolünde:** `flutter analyze` çıktısı `No issues found!`, `flutter test` çıktısı `7/7` başarılıydı. Sonuçlar geliştirme ortamında alınmıştır.

## Sürüm Yönetimi

Ders tesliminde sabitlenen sürüm `v0.2.0-ders` etiketidir. İleride geliştirilecek yarışma sürümleri bundan ayrı tutulur.

## Kaynak

- [Flutter resmî dokümantasyonu — Navigation and routing](https://docs.flutter.dev/ui/navigation)
- [Flutter resmî dokümantasyonu](https://docs.flutter.dev/)

Bu proje Mobil Programlama I dersi için eğitim amacıyla hazırlanmıştır.
