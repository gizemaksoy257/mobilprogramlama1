```markdown
# 📘 Flutter Değerlendirme Soruları

**Konular:** Yerleşim Düzeni · Listeler · Uyarlanabilir Tasarım  
**Format:** `2 Açık Uçlu` · `2 Çoktan Seçmeli`

---

## ✍️ Bölüm 1: Açık Uçlu Sorular

> 💡 **İpucu:** Soruları yanıtlarken performans ve widget ağacı (widget tree) davranışlarını göz önünde bulundurunuz.

### Soru 1 — Uzun Listeler ve Performans
Çok sayıda (örneğin `10.000` adet) öğe içeren bir listeyi ekranda göstermek istediğinizde, standart `ListView` yapıcısı yerine neden **`ListView.builder`** tercih edilmelidir? Bellek ve performans açısından temel farkı kısaca açıklayınız.

### Soru 2 — Uyarlanabilir Tasarım ve MediaQuery
Uyarlanabilir (adaptive) bir arayüz tasarlarken uygulama penceresinin boyutunu öğrenmek için `MediaQuery.of(context).size` yerine **`MediaQuery.sizeOf(context)`** kullanılmasının temel avantajı nedir?

---

## ✅ Bölüm 2: Çoktan Seçmeli (Test) Sorular

### Soru 3 — Widget Boyutlandırma
Bir `Row` veya `Column` içerisindeki alt widget'ların ekrana sığmayıp sarı-siyah taşma hatası (overflow) vermesini önlemek ve kullanılabilir alanı orantılı paylaşmalarını sağlamak için hangi widget kullanılır?

- [ ] **A)** `Container`
- [ ] **B)** `Stack`
- [ ] **C)** `Expanded`
- [ ] **D)** `SafeArea`

### Soru 4 — Donanım ve Sistem Alanları
Modern cihazlardaki ekran çentikleri (notch), kamera delikleri, yuvarlatılmış köşeler veya işletim sistemi durum çubuğunun (status bar) uygulama içeriğini kapatmasını engellemek için alt widget'ını güvenli bir iç boşlukla (padding) sarmalayan widget hangisidir?

- [ ] **A)** `LayoutBuilder`
- [ ] **B)** `SafeArea`
- [ ] **C)** `ConstrainedBox`
- [ ] **D)** `Flow`

---

## 🔑 Cevap Anahtarı

| Soru | Doğru Cevap ve Açıklama | İlgili Konu |
| :-: | :-- | :-: |
| **1** | Standart `ListView` tüm öğeleri aynı anda bellekte oluşturur. **`ListView.builder`** ise öğeleri yalnızca ekrana kaydırıldıkça (*on-demand*) oluşturur; böylece bellek tüketimini düşürür ve akıcı performans sağlar. | Uzun Listeler |
| **2** | **Performans.** `MediaQuery.of` tüm medya verilerini dinlediği için ilgisiz bir özellik değiştiğinde bile widget'ın yeniden oluşturulmasına (*rebuild*) neden olur. **`MediaQuery.sizeOf`** ise yalnızca pencere boyutu değiştiğinde yeniden oluşturmayı tetikler. | Uyarlanabilir Tasarım |
| **3** | **C) `Expanded`** — `flex` katsayısı ile alt widget'ların satır veya sütundaki boş alanı nasıl paylaşacağını belirler ve taşmaları önler. | Yerleşim Düzeni |
| **4** | **B) `SafeArea`** — Perde arkasında `MediaQuery` verilerini kullanarak içeriği donanım girintilerinden ve sistem çubuklarından uzak tutar. | SafeArea & MediaQuery |
```