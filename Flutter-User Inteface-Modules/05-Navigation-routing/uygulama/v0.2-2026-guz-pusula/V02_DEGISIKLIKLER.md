# TuzakAvcısı — v0.2 Güncelleme Notları

Bu paket mevcut `C:\src\TuzakAvcisi` projesini **yerinde güncellemek** içindir.
`android/`, `web/` ve cihaz yapılandırmaları silinmez.

## Yeni özellikler

1. **Alıştırma modu:** İlk denemenin ardından kullanıcı yeniden cevap verebilir. İkinci ve sonraki alıştırmalar toplam puanı veya ilk kararı değiştirmez.
2. **Kalıcı ilerleme:** `shared_preferences` paketinin `SharedPreferencesAsync` API'siyle ilk yanıtlar cihazda saklanır. Uygulama kapatılıp yeniden açıldığında kayıtlar yüklenir.
3. **Farklılaştırılmış sonuç ekranı:** İlk deneme, eski sonucu görme ve alıştırma sonuçlarında farklı metinler kullanılır.
4. **Görsel iyileştirmeler:** SMS, e-posta ve diğer kurgusal içerikler farklı kart stillerinde görünür; gerçek bağlantı içermez.
5. **Testler:** Kalıcı kayıt, sıfırlama, puan tekrarını engelleme ve alıştırma akışı için yeni testler.

## Kurulum

ZIP içindeki `lib/`, `test/`, `pubspec.yaml` ve bu not dosyasını var olan proje klasörüne kopyala. Önce eski dosyaların yedeğini al.

```powershell
cd C:\src\TuzakAvcisi
flutter pub get
flutter analyze
flutter test
flutter run -d emulator-5554
```

`flutter create` komutunu yeniden **çalıştırma**.

## Önemli sınırlar

- `shared_preferences` basit yerel durum içindir; şifre, hesap, hassas kullanıcı verisi veya kritik kayıt saklamak için kullanılmaz.
- İlk denemenin puanı aynıdır: doğru = 10, yanlış = 0.
- Alıştırma yanıtları kaydedilmez; her senaryo ilk denemesine bağlı kalır.
- Sıfırla seçeneği cihazdaki kayıtları da temizler.
- v0.1 kayıtları zaten bellekte tutulduğu için geçmiş bir oturumdan içe aktarılacak veri yoktur.
- Android ve Edge işlemleri için önce cihazda `flutter pub get` yapılmalıdır.

## Navigation/Routing ders bağlantısı

Home -> Senaryo Listesi -> DecisionScreen -> FeedbackScreen akışı `Navigator.push` / `pop` ile çalışır.
Adlandırılmış rotalar (`/scenarios`, `/progress`, `/guide`) ve `Drawer` korunur.
Alıştırma modunda ayrı bir rota açılmaz; `DecisionScreen` içinde `State` yönetilir ve sonuç ekranına `isPractice` parametresi aktarılır.

> Bu paket, asistanın çalışma ortamında Flutter SDK bulunmadığı için burada `flutter analyze`/`flutter test` ile doğrulanamadı. Gerçek test sonucu kullanıcının bilgisayarında doğrulanmalıdır.
