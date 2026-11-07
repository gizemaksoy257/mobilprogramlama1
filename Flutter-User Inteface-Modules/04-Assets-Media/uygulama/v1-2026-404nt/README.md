# 🏛️ Ars Vision — Dijital Sanat Müze Rehberi
## Mobil Programlama I • Takım 404nt • Sistem Mimarisi & Laboratuvar Uygulaması

> **Uyarı:** Bu proje, SCÜ Şarkışla UBYO Mobil Programlama I dersi kapsamında tamamen eğitim amaçlı geliştirilmiştir.

| Künye Bilgisi | Değer |
| :--- | :--- |
| **Ders** | Mobil Programlama I |
| **Kurum** | Sivas Cumhuriyet Üniversitesi (SCÜ) Şarkışla UBYO |
| **Bölüm** | Bilişim Sistemleri ve Teknolojileri Bölümü |
| **Öğretim Üyesi** | Dr. Mesut Polatgil |
| **Takım Adı** | **404nt** |
| **Takım Üyeleri** | **Aleyna EREN**, **Azime SAPANCA**, **Meryem GÜÇLÜ** |
| **Konu / Hafta** | Hafta 10 • Flutter Varlıklar ve Medya (*Assets & Media Management*) |
| **Uygulama Versiyonu**| `v1-2026-404nt` |

---

## 📌 Proje Özeti ve Amacı

Bu proje, Flutter'da **"Varlıklar ve Medya" (Assets & Media)** konusunun donanım kısıtları (RAM, Batarya, Termal Yük), bellek sızıntıları ve çevrimdışı dayanıklılık (*Offline-First*) ekseninde nasıl yönetildiğini kanıtlayan bir mobil sistem mimarisi laboratuvarıdır.

Uygulama, klasik bir müze rehberi görünümü altında arka planda Skia/Impeller render motorunun pikselleri nasıl açtığını, donanım dekoderlerinin nasıl çalıştığını ve sızıntıların nasıl oluştuğunu **canlı telemetri HUD'ları** ile görselleştirir.

---

## 🏛️ Mimari Modüller ve Slayt Eşleşmeleri

| Slayt No | Mimari Kavram | Projedeki Kod Karşılığı | Adli Bilişim / Savunma Mantığı |
| :--- | :--- | :--- | :--- |
| **Slayt 2** | **Kargo Manifestosu & DPR** | `pubspec.yaml` -> `assets/images/` & `Image.asset` varyantları (`2.0x`, `3.0x`) | Paket boyutu (APK) şişirilmedi. Cihazın ekran yoğunluğuna göre (Retina/OLED) otomatik varyant seçimi yapıldı. |
| **Slayt 5 & 12** | **Decode Math & OOM Zafiyeti** | `DecodeCalculator.calculateRawRamBytes()` | 4K görsel diskte 3.8 MB sıkıştırılmış JPEG iken GPU için açıldığında $W \times H \times 4\text{ bayt}$ (RGBA8888) formülüyle **39.3 MB RAM** harcar. 10 görselde cihaz 390 MB canlı bitmap ile çöker. |
| **Slayt 6 & 13** | **cacheWidth & DevTools Invert** | `memCacheWidth: (cardWidth * dpr).round()` & `debugInvertOversizedImages` | Decoder hedef çözünürlükte ($360 \times \text{DPR}$) çıktı üretir. RAM maliyeti 39.3 MB'tan 2.6 MB'a iner (%93.4 tasarruf). Aşırı büyük görseller DevTools tarafından ters renkle yakalanır. |
| **Slayt 3 & 4** | **Taş Duvar (Offline-First)** | `CachedNetworkImage` + `Shimmer` | Müzenin kalın taş duvarlarında internet kopsa dahi (Uçak Modu) sistem beyaz ekran vermez. Görseller disk önbelleğinden anında beslenir. |
| **Slayt 7, 8 & 14**| **Video Yaşam Döngüsü & Dispose** | `ArtworkDetailScreen` -> `_videoController.dispose()` | Küratör videosundan çıkılırken kontrolcü kapatılmazsa işletim sisteminde 1 adet ExoPlayer/AVPlayer ve GPU Texture oturumu sızdırılır (Ghost Session). |
| **Slayt 6 & 11** | **Önbellek Sınırı & LMK Kalkanı** | `PaintingBinding.instance.imageCache.maximumSizeBytes = 100 MB` | Bellek tavanı sınırlandırılarak Android Low Memory Killer (LMK) tarafından sürecin öldürülmesi engellendi. |

---

## 🔬 Adli Bilişim (Forensics) Formülü

$$\text{Ham Bitmap RAM} = \text{Genişlik (px)} \times \text{Yükseklik (px)} \times 4\text{ bayt (RGBA8888)}$$

### Örnek Hesaplama (Mona Lisa 4K Scan):
*   **Ham 4K Çözünürlük:** $3840 \times 2560 \times 4 = 39.321.600\text{ bayt} \approx 39.3\text{ MB RAM}$
*   **Optimize Edilmiş (Ekranda 180 dp kart, 3x DPR = 540 px):** $540 \times 360 \times 4 = 777.600\text{ bayt} \approx 0.77\text{ MB RAM}$
*   **Net Kazanç:** **%98.0 RAM Tasarrufu**

---

## 🛠️ Jüri ve Asistan Savunma Taktikleri

1. **Jüri Telefonu Uçak Moduna Alırsa:**
   * Konsoldaki "Çevrimdışı (Taş Duvar)" modunu açın veya cihazın Wi-Fi/Verisini kapatın.
   * Görsellerin disk önbelleğinden anında aktığını, uygulamanın asla donmadığını gösterin.
2. **Jüri "Neden cacheWidth Yazdınız?" Diye Sorarsa:**
   * Üst bardaki "cacheWidth" butonunu kapatıp "Ham 4K Decode" moduna geçin.
   * Kartın altındaki HUD bandında bellek ibresinin anında kırmızıya fırladığını ve tek görselin 39 MB RAM tükettiğini canlı gösterin.
3. **Jüri Video Sayfasında Sızıntı Testi İsterse:**
   * Detay ekranındaki "ZAFİYET TESTİ: Sayfa Çıkışında Sızıntı Yapılacak" anahtarını açıp geri dönün.
   * Sağ üstteki Donanım Dekoderi butonuna basarak "1 Hayalet Donanım Dekoderi Sızdırıldı!" alarmını jüriye gösterin.

---

## 🚀 Projeyi Çalıştırma

```bash
# Bağımlılıkları yükle
flutter pub get

# Birim ve smoke testlerini çalıştır
flutter test

# Uygulamayı başlat
flutter run
```
