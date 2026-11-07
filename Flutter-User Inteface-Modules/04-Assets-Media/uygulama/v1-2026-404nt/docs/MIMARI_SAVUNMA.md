# Ars Vision - Dijital Sanat Müze Rehberi
## Mobil Programlama I • "Sistem Mimarları" Mimari Savunma Kılavuzu

Bu proje, Flutter'da **"Varlıklar ve Medya" (Assets & Media)** konusunun donanım kısıtları (RAM, Batarya, Termal Yük), bellek sızıntıları ve çevrimdışı dayanıklılık (Offline-First) ekseninde nasıl yönetildiğini kanıtlayan bir mobil sistem mimarisi laboratuvarıdır.

---

### 🏛️ 1. MİMARİ MODÜLLER VE SLAYT EŞLEŞMELERİ

| Slayt No | Mimari Kavram | Projedeki Kod Karşılığı | Adli Bilişim / Savunma Mantığı |
| :--- | :--- | :--- | :--- |
| **Slayt 2** | **Kargo Manifestosu & DPR** | `pubspec.yaml` -> `assets/images/` & `MediaQuery.devicePixelRatioOf(context)` | Paket boyutu (APK) şişirilmedi. Cihazın ekran yoğunluğuna göre (Retina/OLED) otomatik varyant seçimi yapıldı. |
| **Slayt 5 & 12** | **Decode Math & OOM Zafiyeti** | `DecodeCalculator.calculateRawRamBytes()` | 4K görsel diskte 3.8 MB sıkıştırılmış JPEG iken GPU için açıldığında $W \times H \times 4$ bayt (RGBA8888) formülüyle **39.3 MB RAM** harcar. 10 görselde cihaz 390 MB canlı bitmap ile çöker. |
| **Slayt 6 & 13** | **cacheWidth & DevTools Invert** | `memCacheWidth: (cardWidth * dpr).round()` & `debugInvertOversizedImages` | Decoder hedef çözünürlükte (360×DPR) çıktı üretir. RAM maliyeti 39.3 MB'tan 2.6 MB'a iner (%93.4 tasarruf). Aşırı büyük görseller DevTools tarafından ters renkle yakalanır. |
| **Slayt 3 & 4** | **Taş Duvar (Offline-First)** | `CachedNetworkImage` + `Shimmer` | Müzenin kalın taş duvarlarında internet kopsa dahi (Uçak Modu) sistem beyaz ekran vermez. Görseller disk önbelleğinden anında beslenir. |
| **Slayt 7, 8 & 14**| **Video Yaşam Döngüsü & Dispose** | `ArtworkDetailScreen` -> `_videoController.dispose()` | Küratör videosundan çıkılırken kontrolcü kapatılmazsa işletim sisteminde 1 adet ExoPlayer/AVPlayer ve GPU Texture oturumu sızdırılır (Ghost Session). |
| **Slayt 6 & 11** | **Önbellek Sınırı & LMK Kalkanı** | `PaintingBinding.instance.imageCache.maximumSizeBytes = 100 MB` | Bellek tavanı sınırlandırılarak Android Low Memory Killer (LMK) tarafından sürecin öldürülmesi engellendi. |

---

### 🔬 2. ADLİ BİLİŞİM (FORENSICS) FORMÜLÜ
```
Ham Bitmap RAM = Genişlik (px) × Yükseklik (px) × 4 bayt (RGBA8888)

Örnek (Mona Lisa 4K Scan):
3840 × 2560 × 4 = 39.321.600 bayt ≈ 39.3 MB RAM

Optimize Edilmiş (Ekranda 180 dp kart, 3x DPR = 540 px):
540 × 360 × 4 = 777.600 bayt ≈ 0.77 MB RAM
KAZANÇ: %98.0 RAM Tasarrufu
```

---

### 🛠️ 3. JÜRİ VE ASİSTAN SAVUNMA TAKTİKLERİ

1. **Jüri Telefonu Uçak Moduna Alırsa:**
   - Konsoldaki "Taş Duvar (Uçak Modu)" anahtarını açın veya cihazın Wi-Fi/Verisini kapatın.
   - Görsellerin disk önbelleğinden anında aktığını, uygulamanın asla donmadığını gösterin.
2. **Jüri "Neden cacheWidth Yazdınız?" Diye Sorarsa:**
   - Ekranda "cacheWidth" butonunu kapatarak "Junior Modu"na geçin.
   - Resmin altındaki HUD bandında RAM tüketiminin anında 2.6 MB'tan 39.3 MB'a fırladığını canlı olarak gösterin.
3. **Jüri Video Sayfasında Sızıntı Testi İsterse:**
   - Detay ekranındaki "ZAFİYET TESTİ: Sayfa Çıkışında Sızıntı Yapılacak" anahtarını açıp geri dönün.
   - Sağ üstteki Donanım Dekoderi butonuna basarak "1 Hayalet Donanım Dekoderi Sızdırıldı!" alarmını jüriye gösterin.
