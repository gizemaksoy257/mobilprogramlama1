# Flutter'da Navigasyon ve Yönlendirme — Soru ve Cevaplar

**Ders:** Mobil Programlama I  
**Takım:** PUSULA (5. Takım — Navigation & Routing)  
**Hazırlayanlar:** Nilay Özçelik · Yüsra Paçal · Yağmur Öztekin  
**Dönem:** 2026 Güz  
**Kaynak:** PUSULA takımının *Flutter'da Navigasyon ve Yönlendirme* başlıklı 30 slaytlık sunumu

> **Soru dağılımı:** 2 çoktan seçmeli (test) + 2 klasik = **4 soru**. Sorular yalnızca sunumda ele alınan kavramlardan hazırlanmıştır. Cevap anahtarı belgenin sonundadır.

## A. Çoktan Seçmeli Sorular (2 Soru)

### Soru 1 — Navigator ve Rota Yığını

Flutter'da `Navigator.push()` ve `Navigator.pop()` metotlarının görevleri aşağıdakilerden hangisinde **doğru** verilmiştir?

A) `push()` önceki ekranı kapatır; `pop()` yeni bir ekran açar.  
B) `push()` yeni rotayı yığına ekler; `pop()` mevcut rotayı yığından çıkarıp önceki ekrana döner.  
C) İkisi de yalnızca `TabBar` sekmelerini değiştirmek için kullanılır.  
D) `push()` uygulamayı yeniden başlatır; `pop()` tüm verileri siler.

*İlgili sunum slaytları: 6–8.*

### Soru 2 — Router ve Derin Bağlantılar

Bir kullanıcının `https://ornek.com/details` bağlantısıyla uygulamanın doğrudan **detay ekranına** gitmesi isteniyor. Sunumda bu gereksinim için hangi çözümün uygun olduğu anlatılmıştır?

A) `TabBarView` ile sekme sırasını değiştirmek.  
B) `Navigator.pop()` ile mevcut ekrandan çıkmak.  
C) `Router` / `go_router` kullanarak URL yolunu eşleştirip ilgili ekranı açmak.  
D) `Drawer` içindeki menü başlıklarını yeniden adlandırmak.

*İlgili sunum slaytları: 11, 23–24 ve 29.*

## B. Klasik Sorular (2 Soru)

### Soru 3 — Sekmelerle Gezinme

Flutter'da `TabBar`, `TabBarView` ve `DefaultTabController` bileşenlerinin görevlerini **kısaca açıklayınız**. Bu üç bileşen bir arada nasıl çalışır?

*İlgili sunum slaytları: 13–15.*

### Soru 4 — Ekranlar Arası Veri Aktarımı

Flutter'da bir `Todo` listesindeki seçili öğenin detay ekranına aktarılması için sunumda anlatılan **iki yöntemi** yazınız. Her yöntemde verinin nasıl gönderildiğini veya alındığını kısaca belirtiniz.

*İlgili sunum slaytları: 16–18.*

---

## Cevap Anahtarı ve Beklenen Yanıtlar

### Test Soruları

| Soru | Doğru yanıt | Gerekçe |
|---|:---:|---|
| 1 | **B** | `push()` rotayı yığına ekler; `pop()` en üstteki rotayı kaldırır. Bu, LIFO mantığına uygundur. |
| 2 | **C** | `Router` / `go_router`, URL yolunu eşleştirip hedef ekranı gösterir; derin bağlantılarda kullanılabilir. |

### Klasik Sorular

**Soru 3 — Beklenen yanıt:** `TabBar` sekme başlıklarını/seçeneklerini gösterir. `TabBarView`, seçilen sekmeye karşılık gelen içeriği gösterir. `DefaultTabController`, sekme seçimini ve görüntülenen içeriği senkronize eden `TabController`'ı sağlar. `TabBar` ve `TabBarView` aynı denetleyici ile çalışır; sekmelerin sırası ilgili içeriklerin sırasıyla uyumlu olmalıdır.

**Soru 4 — Beklenen yanıt:**

1. **Kurucu (constructor) yoluyla:** Seçilen `Todo` nesnesi, yeni açılacak detay ekranına `DetailScreen(todo: selectedTodo)` gibi bir kurucu parametresiyle aktarılır.
2. **Rota argümanlarıyla:** Nesne `RouteSettings(arguments: selectedTodo)` üzerinden gönderilir; detay ekranında `ModalRoute.of(context)!.settings.arguments` ile okunur.

Her iki yöntemde de amaç, kullanıcının listeden seçtiği öğeye ait veriyi detay ekranında göstermektir.

---

**Kaynak:** PUSULA Takımı, *Flutter'da Navigasyon ve Yönlendirme*, Mobil Programlama I, 30 slaytlık sunum (2026 Güz). Sunum, Flutter resmî dokümantasyonunu temel alır.
