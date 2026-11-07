# Mobil Programlama I — Navigation ve Routing (5 mantık / hata sorusu)

### 1) `Navigator.push()` çağrısı ekrana ne yapar?
**Yanlış yorum:** Var olan ekranı tamamen siler.
**Doğrusu:** Yeni route'u navigation stack'in üstüne ekler; alttaki route geri dönüş için tutulur. `pop()` en üsttekini kaldırır.

### 2) `Navigator.pop(context, true)` hangi veriyi ve nereye gönderir?
**Hata:** `true` değerinin tüm uygulamada global olarak erişilebilir olduğunu düşünmek.
**Doğrusu:** Bu değer, ilgili route'u açan `Navigator.push<bool>(...)` çağrısının döndürdüğü `Future<bool?>` sonucuna gider. Kodumuzda FeedbackScreen -> DecisionScreen yönünde kullanılır.

### 3) `await Navigator.push()` sonrasında neden `if (!mounted) return;` var?
**Hata:** `await` sırasında kullanıcı sayfadan çıkmış olsa bile `context` ile işlem yapmak.
**Doğrusu:** Widget ağaçtan kaldırıldıysa `BuildContext` artık güvenle kullanılamaz. Kontrol sonrası navigasyon yapılır.

### 4) `pushNamed(context, '/progress')` çağrısı hata verirse ilk neyi kontrol ederiz?
**Cevap:** `MaterialApp.routes` içinde `'/progress'` anahtarının tanımlanıp tanımlanmadığını kontrol ederiz. Dinamik veri taşıyan senaryolarda ise kodumuz `MaterialPageRoute` ve constructor ile `Scenario` nesnesini gönderir.

### 5) Aynı senaryoya dönüp tekrar doğru seçeneği seçmek puanı neden artırmıyor?
**Cevap:** `ProgressStore.submit` senaryo kimliğinin `_answers` haritasında olup olmadığını kontrol eder. Önceden cevaplanan senaryoya ikinci kez puan yazılmaz. Böylece farklı ekranlardan girilse de kural korunur.

## Bonus — Stack geçiş örneği

```
Home -> ScenarioList -> Decision -> Feedback
                                  |
                   pop(true) ile Decision'a dönüş
                                  |
                   pop(true) ile ScenarioList'e dönüş
```

**Hatırlatma:** Flutter resmî dokümanlarında yeni projelerin çoğu için named routes yerine `MaterialPageRoute` veya gelişmiş ihtiyaçlarda `go_router` önerilir; burada iki yaklaşım da ders konusu olarak gösteriliyor.
