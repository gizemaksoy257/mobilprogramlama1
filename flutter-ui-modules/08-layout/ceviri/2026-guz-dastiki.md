<a id="bas"></a>

<div align="center">

# 📘 Flutter Dokümantasyonu
### Türkçe Çeviri

**Yerleşim düzeni · Listeler · Kaydırma · Uyarlanabilir tasarım**

`19 bölüm` &nbsp; `Flutter 3.47` &nbsp; `Gayriresmî çeviri` &nbsp; `Türkçe 🇹🇷`

[**Okumaya başla →**](#bolum-01)

</div>

---

## ✨ Bu çeviri nasıl okunur?

Her bölüm, [docs.flutter.dev](https://docs.flutter.dev) üzerindeki bir sayfanın çevirisidir. Orijinal düzen korunur; kod örnekleri ve widget adları olduğu gibi bırakılmış, yorum satırları ise Türkçeleştirilmiştir.

| Simge | Anlamı |
|:-:|:--|
| ℹ️ | **Not** — bilmeniz yararlı olan ek bilgi |
| 💡 | **İpucu** — işinizi kolaylaştıracak öneri |
| 🎯 | **Önemli noktalar** — bölümün özeti |
| ▶️ | **Video** — YouTube'da açılır |
| 📄 | **Kod** — uzun örnekler katlanabilir kutuda durur |
| 📂 | **Uygulama kaynağı** — örneğin tam kodu |

> 💡 **İpucu**
> Her bölümün başında ve sonunda **⬅️ Önceki · ⬆️ İçindekiler · Sonraki ➡️** bağlantıları bulunur. Uzun bölümlerde "📌 Bu bölümdeki başlıklar" kutusu sizi doğrudan istediğiniz yere götürür.

> ℹ️ **Not**
> Görseller bu dosyanın yanındaki `gorseller/` klasöründen yüklenir. Dosyayı o klasörle birlikte açın.

---

<a id="icindekiler"></a>

## 🗺️ İçindekiler

### 🧱 Yerleşim düzeni

*Flutter'da arayüzü widget'larla kurmanın temelleri ve adım adım bir öğretici.*

| # | Bölüm | Ne anlatıyor? |
|:-:|:--|:--|
| `01` | [🧱 Flutter'da yerleşim düzenleri (Layouts)](#bolum-01) | Flutter'ın yerleşim düzeni mekanizmasının nasıl çalıştığını ve uygulamanızın yerleşim düzenini nasıl oluşturacağınızı öğrenin. |
| `02` | [🛠️ Bir Flutter yerleşim düzeni oluşturma](#bolum-02) | Flutter'da nasıl yerleşim düzeni oluşturacağınızı öğrenin. |

### 📋 Cookbook · Listeler

*Basit listelerden ızgaralara, uzun ve karışık listelere kadar hazır tarifler.*

| # | Bölüm | Ne anlatıyor? |
|:-:|:--|:--|
| `03` | [📋 Liste kullanma](#bolum-03) | Bir listenin nasıl uygulanacağı. |
| `04` | [↔️ Yatay liste oluşturma](#bolum-04) | Yatay bir listenin nasıl uygulanacağı. |
| `05` | [🔲 Izgara listesi oluşturma](#bolum-05) | Izgara listesinin nasıl uygulanacağı. |
| `06` | [🧩 Farklı öğe türlerine sahip listeler oluşturma](#bolum-06) | Farklı türde varlıklar (assets) içeren bir listenin nasıl uygulanacağı. |
| `07` | [📏 Aralıklı öğelerle liste](#bolum-07) | Aralıklı veya genişletilmiş öğelerle bir liste nasıl oluşturulur. |
| `08` | [♾️ Uzun listelerle çalışma](#bolum-08) | Uzun veya sonsuz bir liste uygulamak için ListView.builder'ı kullanın. |

### 📜 Kaydırma ve efektler

*Kaydırma desteği, sliver'lar ve paralaks efekti.*

| # | Bölüm | Ne anlatıyor? |
|:-:|:--|:--|
| `09` | [📜 Kaydırma (Scrolling)](#bolum-09) | Flutter'ın kaydırma desteğine genel bakış. |
| `10` | [🌀 Gösterişli kaydırma elde etmek için sliver kullanma](#bolum-10) | Flutter'da esnek (elastic) kaydırma gibi gösterişli kaydırma efektlerini uygulamak için sliver kullanımı hakkında bilgiyi nerede bulabileceğiniz. |
| `11` | [🏔️ Kaydırmalı paralaks efekti oluşturma](#bolum-11) | Kaydırmalı bir paralaks efektinin nasıl uygulanacağı. |

### 📱 Uyarlanabilir ve duyarlı tasarım

*Her ekranda, her girdi aygıtında ve her platformda iyi çalışan uygulamalar.*

| # | Bölüm | Ne anlatıyor? |
|:-:|:--|:--|
| `12` | [📱 Flutter'da uyarlanabilir ve duyarlı tasarım](#bolum-12) | Mobil veya web için olsun, boyut ve yön değişikliklerine yanıt veren ve her platformdan en iyi şekilde yararlanan bir uygulama oluşturmak önemlidir. |
| `13` | [🧭 Uyarlanabilir uygulamalara genel yaklaşım](#bolum-13) | Flutter uygulamanızı uyarlanabilir hâle getirmeye nasıl yaklaşacağınıza dair genel tavsiyeler. |
| `14` | [🛡️ SafeArea ve MediaQuery](#bolum-14) | Uyarlanabilir bir uygulama oluşturmak için SafeArea ve MediaQuery'nin nasıl kullanılacağını öğrenin. |
| `15` | [🖥️ Büyük ekranlı cihazlar](#bolum-15) | Uygulamaları büyük ekranlara uyarlarken akılda tutulması gerekenler. |
| `16` | [⌨️ Kullanıcı girdisi ve erişilebilirlik](#bolum-16) | Gerçekten uyarlanabilir bir uygulama, kullanıcı girdisinin çalışma biçimindeki farklılıkları ve erişilebilirlik sorunu yaşayan kişilere yardımcı olan düzenlemeleri de ele alır. |
| `17` | [🔄 Otomatik platform uyarlamaları](#bolum-17) | Flutter'ın platforma uyarlanabilirliği hakkında daha fazla bilgi edinin. |
| `18` | [✅ Uyarlanabilir tasarım için en iyi uygulamalar](#bolum-18) | Uyarlanabilir tasarım için en iyi uygulamalardan bazılarının özeti. |
| `19` | [📚 Ek kaynaklar](#bolum-19) | Uyarlanabilir uygulamalar yazarken faydalı bulabileceğiniz diğer kaynaklar. |

---

## 🔤 Terimler sözlüğü

Çeviride tutarlılık için kullanılan temel karşılıklar:

| İngilizce | Türkçe karşılığı |
|:--|:--|
| Layout | Yerleşim düzeni |
| Widget | Widget (çevrilmedi) |
| Constraints | Kısıtlamalar |
| Padding / Margin | İç boşluk / Dış boşluk |
| Main axis / Cross axis | Ana eksen / Çapraz eksen |
| Breakpoint | Kesme noktası |
| Adaptive | Uyarlanabilir |
| Responsive | Duyarlı |
| Foldable | Katlanabilir cihaz |
| Overscroll | Aşırı kaydırma |
| Hit area | İsabet alanı |
| Hover | Üzerine gelme |
| Tab traversal | Sekme ile gezinme |
| Haptic feedback | Dokunsal geri bildirim |
| Sliver | Sliver (çevrilmedi) |
| Letterbox | Letterbox (siyah şeritli) |

> ℹ️ **Not**
> Widget, sınıf ve metot adları (`MediaQuery`, `ListView`, `SliverAppBar` gibi) çevrilmemiştir. Terimler ilk geçtikleri yerde İngilizce karşılıklarıyla birlikte parantez içinde verilir.

---

<a id="bolum-01"></a>

<div align="center">

<sub>BÖLÜM 01 / 19  ·  🧱 YERLEŞIM DÜZENI</sub>

# 🧱 Flutter'da yerleşim düzenleri (Layouts)

**Flutter'ın yerleşim düzeni mekanizmasının nasıl çalıştığını ve uygulamanızın yerleşim düzenini nasıl oluşturacağınızı öğrenin.**

`UI › Yerleşim düzeni (Layout)`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/layout)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

<sub>⬅️ İlk bölüm</sub> &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-02)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Genel bakış](#layout-overview)
- [Kavramsal örnek](#layout-conceptual-example)
- [Bir widget'ı yerleştirme](#layout-lay-out-a-widget)
  - [1. Bir yerleşim widget'ı seçin](#layout-1-select-a-layout-widget)
  - [2. Görünür bir widget oluşturun](#layout-2-create-a-visible-widget)
  - [3. Görünür widget'ı yerleşim widget'ına ekleyin](#layout-3-add-the-visible-widget-to-the-layout-widget)
  - [4. Yerleşim widget'ını sayfaya ekleyin](#layout-4-add-the-layout-widget-to-the-page)
  - [5. Uygulamanızı çalıştırın](#layout-5-run-your-app)
- [Birden fazla widget'ı dikey ve yatay olarak yerleştirme](#layout-lay-out-multiple-widgets-vertically-and-horizontally)
  - [Widget'ları hizalama](#layout-aligning-widgets)
  - [Widget'ları boyutlandırma](#layout-sizing-widgets)
  - [Widget'ları sıkıştırma](#layout-packing-widgets)
  - [Satırları ve sütunları iç içe yerleştirme](#layout-nesting-rows-and-columns)
- [Yaygın yerleşim widget'ları](#layout-common-layout-widgets)
  - [Container](#layout-container)
  - [GridView](#layout-gridview)
  - [ListView](#layout-listview)
  - [Stack](#layout-stack)
  - [Card](#layout-card)
  - [ListTile](#layout-listtile)
- [Kısıtlamalar (Constraints)](#layout-constraints)
- [Videolar](#layout-videos)
- [Diğer kaynaklar](#layout-other-resources)

</details>

<a id="layout-overview"></a>

## Genel bakış

> 🎯 **Önemli noktalar**
>
> -   Flutter'da yerleşim düzenleri widget'lar ile oluşturulur.
> -   Widget'lar, kullanıcı arayüzlerini (UI) oluşturmak için kullanılan sınıflardır.
> -   Widget'lar aynı zamanda arayüz öğelerini oluşturmak için de kullanılır.
> -   Karmaşık widget'lar oluşturmak için basit widget'ları bir araya getirin.

Flutter'ın yerleşim düzeni mekanizmasının özünü widget'lar oluşturur. Flutter'da neredeyse her şey bir widget'tır; yerleşim düzeni modelleri bile. Bir Flutter uygulamasında gördüğünüz resimler, ikonlar ve metinlerin hepsi birer widget'tır. Ancak görmediğiniz şeyler de widget'tır; örneğin görünen widget'ları düzenleyen, kısıtlayan ve hizalayan satırlar (row), sütunlar (column) ve ızgaralar (grid). Daha karmaşık widget'lar oluşturmak için widget'ları bir araya getirerek bir yerleşim düzeni oluşturursunuz.

<a id="layout-conceptual-example"></a>

## Kavramsal örnek

Aşağıdaki örnekte, ilk ekran görüntüsü etiketli üç ikonu gösterir; ikinci ekran görüntüsü ise satırların ve sütunların görsel yerleşimini içerir. İkinci ekran görüntüsünde, görsel yerleşimi görebilmeniz için `debugPaintSizeEnabled` değeri `true` olarak ayarlanmıştır.

| <sub><b>Örnek yerleşim düzeni</b></sub> | <sub><b>Görsel hata ayıklama ile örnek yerleşim düzeni</b></sub> |
|:-:|:-:|
| <img src="gorseller/lakes-icons.png" alt="Örnek yerleşim düzeni" width="320"> | <img src="gorseller/lakes-icons-visual.png" alt="Görsel hata ayıklama ile örnek yerleşim düzeni" width="320"> |

Aşağıda, önceki örneğin widget ağacının (widget tree) diyagramı yer alıyor:

<p align="center">
  <img src="gorseller/sample-flutter-layout.png" alt="Düğüm ağacı (widget tree) diyagramı" width="600">
  <br><sub><i>Düğüm ağacı (widget tree) diyagramı</i></sub>
</p>

Bunların çoğu beklediğiniz gibi görünmeli; ancak (pembe ile gösterilen) *container*'lar hakkında merak ediyor olabilirsiniz. [`Container`](https://api.flutter.dev/flutter/widgets/Container-class.html), alt widget'ını (child) özelleştirmenize olanak tanıyan bir widget sınıfıdır. Bazı yeteneklerini saymak gerekirse; iç boşluk (padding), dış boşluk (margin), kenarlık (border) veya arka plan rengi eklemek istediğinizde `Container` kullanın.

Her [`Text`](https://api.flutter.dev/flutter/widgets/Text-class.html) widget'ı, dış boşluk eklemek için bir `Container` içine yerleştirilmiştir. [`Row`](https://api.flutter.dev/flutter/widgets/Row-class.html)'un tamamı da, satırın etrafına iç boşluk eklemek için bir `Container` içine yerleştirilmiştir.

Arayüzün geri kalanı özelliklerle (property) kontrol edilir. Bir [`Icon`](https://pub.dev/documentation/material_ui/latest/material_ui/Icons-class.html)'un rengini `color` özelliğini kullanarak ayarlayın. Yazı tipini, rengini, kalınlığını vb. ayarlamak için `Text.style` özelliğini kullanın. Sütunlar ve satırlar, alt widget'larının dikey veya yatay olarak nasıl hizalanacağını ve ne kadar alan kaplayacaklarını belirtmenize olanak tanıyan özelliklere sahiptir.

> ℹ️ **Not**

<a id="layout-lay-out-a-widget"></a>

## Bir widget'ı yerleştirme

Flutter'da tek bir widget'ı nasıl yerleştirirsiniz? Bu bölüm, basit bir widget'ın nasıl oluşturulup görüntüleneceğini gösterir. Ayrıca basit bir Hello World uygulamasının kodunun tamamını da gösterir.

Flutter'da ekrana metin, ikon veya resim koymak yalnızca birkaç adım sürer.

<a id="layout-1-select-a-layout-widget"></a>

### 1. Bir yerleşim widget'ı seçin

Görünür bir widget'ı nasıl hizalamak veya kısıtlamak istediğinize göre, [yerleşim widget'ları](https://docs.flutter.dev/ui/widgets/layout) (layout widgets) arasından seçim yapın; çünkü bu özellikler genellikle içerdiği widget'a aktarılır.

Örneğin, görünür bir widget'ı yatay ve dikey olarak ortalamak için [`Center`](https://api.flutter.dev/flutter/widgets/Center-class.html) yerleşim widget'ını kullanabilirsiniz:

```dart
Center(
  // Ortalanacak içerik buraya.
)
```

<a id="layout-2-create-a-visible-widget"></a>

### 2. Görünür bir widget oluşturun

Uygulamanızın [metin](https://api.flutter.dev/flutter/widgets/Text-class.html), [resim](https://api.flutter.dev/flutter/widgets/Image-class.html) veya [ikon](https://pub.dev/documentation/material_ui/latest/material_ui/Icons-class.html) gibi görünür öğeleri içermesi için bir [görünür widget](https://docs.flutter.dev/ui/widgets) seçin.

Örneğin, bir miktar metin göstermek için [`Text`](https://api.flutter.dev/flutter/widgets/Text-class.html) widget'ını kullanabilirsiniz:

```dart
Text('Hello World')
```

<a id="layout-3-add-the-visible-widget-to-the-layout-widget"></a>

### 3. Görünür widget'ı yerleşim widget'ına ekleyin

Tüm yerleşim widget'ları aşağıdakilerden birine sahiptir:

-   Tek bir alt widget alıyorlarsa `child` özelliği — örneğin `Center` veya `Container`
-   Bir widget listesi alıyorlarsa `children` özelliği — örneğin `Row`, `Column`, `ListView` veya `Stack`.

`Text` widget'ını `Center` widget'ına ekleyin:

```dart
const Center(
  child: Text('Hello World'),
),
```

<a id="layout-4-add-the-layout-widget-to-the-page"></a>

### 4. Yerleşim widget'ını sayfaya ekleyin

Bir Flutter uygulamasının kendisi de bir widget'tır ve çoğu widget'ın bir [`build()`](https://api.flutter.dev/flutter/widgets/StatelessWidget/build.html) metodu vardır. Bir widget'ı uygulamanın `build()` metodunda oluşturup döndürmek, o widget'ın görüntülenmesini sağlar.

#### 🔹 Standart uygulamalar

Genel bir uygulama için, `Container` widget'ını uygulamanın `build()` metoduna ekleyebilirsiniz:

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.black87),
        ),
      ),
    );
  }
}
```

Varsayılan olarak genel bir uygulama; `AppBar`, başlık veya arka plan rengi içermez. Genel bir uygulamada bu özellikleri istiyorsanız, bunları kendiniz oluşturmanız gerekir. Bu uygulama, bir Material uygulamasını taklit etmek için arka plan rengini beyaza, metni de koyu griye çevirir.

#### 🔹 Material uygulamaları

Bir `Material` uygulaması için [`Scaffold`](https://pub.dev/documentation/material_ui/latest/material_ui/Scaffold-class.html) widget'ını kullanabilirsiniz; bu widget varsayılan bir başlık çubuğu (banner) ve arka plan rengi sağlar, ayrıca çekmeceler (drawer), snack bar'lar ve alt sayfalar (bottom sheet) eklemek için API sunar. Ardından ana sayfa için `Center` widget'ını doğrudan `body` özelliğine ekleyebilirsiniz.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

> ℹ️ **Not**

#### 🔹 Cupertino uygulamaları

Bir `Cupertino` uygulaması oluşturmak için `CupertinoApp` ve [`CupertinoPageScaffold`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoPageScaffold-class.html) widget'larını kullanın.

`Material`'ın aksine, varsayılan bir başlık çubuğu veya arka plan rengi sağlamaz. Bunları kendiniz ayarlamanız gerekir.

-   Varsayılan renkleri ayarlamak için, uygulamanızın `theme` özelliğine yapılandırılmış bir [`CupertinoThemeData`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoThemeData-class.html) geçirin.
-   Uygulamanızın üst kısmına iOS tarzı bir gezinme çubuğu eklemek için, scaffold'unuzun `navigationBar` özelliğine bir [`CupertinoNavigationBar`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoNavigationBar-class.html) widget'ı ekleyin. Widget'larınızı iOS tasarımına uyacak şekilde yapılandırmak için [`CupertinoColors`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoColors-class.html)'ın sağladığı renkleri kullanabilirsiniz.
-   Uygulamanızın gövdesini yerleştirmek için, scaffold'unuzun `child` özelliğine `Center` veya `Column` gibi istediğiniz widget'ı değer olarak verin.

Ekleyebileceğiniz diğer UI bileşenlerini öğrenmek için [Cupertino kütüphanesine](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui) göz atın.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter layout demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,
          middle: Text('Flutter layout demo'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Hello World')],
          ),
        ),
      ),
    );
  }
}
```

> ℹ️ **Not**

<a id="layout-5-run-your-app"></a>

### 5. Uygulamanızı çalıştırın

Widget'larınızı ekledikten sonra uygulamanızı çalıştırın. Uygulamayı çalıştırdığınızda *Hello World* yazısını görmelisiniz.

Uygulama kaynak kodu:

-   [Material uygulaması](https://github.com/flutter/website/tree/main/examples/layout/base)
-   [Material olmayan uygulama](https://github.com/flutter/website/tree/main/examples/layout/non_material)

<p align="center">
  <img src="gorseller/hello-world.png" alt="Hello World yazısını gösteren uygulamanın ekran görüntüsü" height="380">
  <br><sub><i>Hello World yazısını gösteren uygulamanın ekran görüntüsü</i></sub>
</p>

---

<a id="layout-lay-out-multiple-widgets-vertically-and-horizontally"></a>

## Birden fazla widget'ı dikey ve yatay olarak yerleştirme

En yaygın yerleşim düzeni kalıplarından biri, widget'ları dikey veya yatay olarak sıralamaktır. Widget'ları yatay olarak sıralamak için bir `Row` widget'ını, dikey olarak sıralamak için bir `Column` widget'ını kullanabilirsiniz.

> 🎯 **Önemli noktalar**
>
> -   `Row` ve `Column`, en sık kullanılan iki yerleşim düzeni kalıbıdır.
> -   `Row` ve `Column` widget'larının her biri bir alt widget listesi alır.
> -   Bir alt widget'ın kendisi de bir `Row`, `Column` veya başka bir karmaşık widget olabilir.
> -   Bir `Row` veya `Column`'un alt widget'larını hem dikey hem de yatay olarak nasıl hizalayacağını belirtebilirsiniz.
> -   Belirli alt widget'ları genişletebilir (stretch) veya kısıtlayabilirsiniz.
> -   Alt widget'ların, `Row` veya `Column`'un kullanılabilir alanını nasıl kullanacağını belirtebilirsiniz.

Flutter'da bir satır veya sütun oluşturmak için, bir [`Row`](https://api.flutter.dev/flutter/widgets/Row-class.html) veya [`Column`](https://api.flutter.dev/flutter/widgets/Column-class.html) widget'ına alt widget'lardan oluşan bir liste eklersiniz. Her alt widget'ın kendisi de bir satır veya sütun olabilir ve bu böyle devam eder. Aşağıdaki örnek, satırların veya sütunların satırlar ya da sütunlar içinde nasıl iç içe yerleştirilebileceğini gösterir.

Bu yerleşim düzeni bir `Row` olarak düzenlenmiştir. Satır iki alt widget içerir: solda bir sütun, sağda bir resim:

<p align="center">
  <img src="gorseller/pavlova-diagram.png" alt="İki alt widget içeren satırı gösteren açıklamalı ekran görüntüsü" width="720">
  <br><sub><i>İki alt widget içeren satırı gösteren açıklamalı ekran görüntüsü</i></sub>
</p>

Sol sütunun widget ağacı, satırları ve sütunları iç içe barındırır.

<p align="center">
  <img src="gorseller/pavlova-left-column-diagram.png" alt="Sol sütunun alt satırlara ve alt sütunlara ayrılmış diyagramı" width="720">
  <br><sub><i>Sol sütunun alt satırlara ve alt sütunlara ayrılmış diyagramı</i></sub>
</p>

Pavlova yerleşim kodunun bir kısmını [Satırları ve sütunları iç içe yerleştirme](#layout-nesting-rows-and-columns) bölümünde uygulayacaksınız.

> ℹ️ **Not**

<a id="layout-aligning-widgets"></a>

### Widget'ları hizalama

Bir satırın veya sütunun alt widget'larını nasıl hizalayacağını `mainAxisAlignment` ve `crossAxisAlignment` özellikleriyle kontrol edersiniz. Bir satır için ana eksen (main axis) yatay, çapraz eksen (cross axis) ise dikey olarak uzanır. Bir sütun için ana eksen dikey, çapraz eksen ise yatay olarak uzanır.

| <sub><b>Bir satır için ana eksen ve çapraz ekseni gösteren diyagram</b></sub> | <sub><b>Bir sütun için ana eksen ve çapraz ekseni gösteren diyagram</b></sub> |
|:-:|:-:|
| <img src="gorseller/row-diagram.png" alt="Bir satır için ana eksen ve çapraz ekseni gösteren diyagram" width="288"> | <img src="gorseller/column-diagram.png" alt="Bir sütun için ana eksen ve çapraz ekseni gösteren diyagram" height="318"> |

[`MainAxisAlignment`](https://api.flutter.dev/flutter/rendering/MainAxisAlignment.html) ve [`CrossAxisAlignment`](https://api.flutter.dev/flutter/rendering/CrossAxisAlignment.html) enum'ları, hizalamayı kontrol etmek için çeşitli sabitler sunar.

> ℹ️ **Not**

Aşağıdaki örnekte 3 resmin her biri 100 piksel genişliğindedir. Render kutusu (render box; bu durumda ekranın tamamı) 300 pikselden daha geniştir; bu nedenle ana eksen hizalamasını `spaceEvenly` olarak ayarlamak, boş yatay alanı her resmin arasına, öncesine ve sonrasına eşit olarak böler.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);
```

<p align="center">
  <img src="gorseller/row-spaceevenly-visual.png" alt="Eşit aralıklarla yerleştirilmiş 3 resimli satır" width="300">
  <br><sub><i>Eşit aralıklarla yerleştirilmiş 3 resimli satır</i></sub>
</p>

📂 **Uygulama kaynağı:** [row\_column](https://github.com/flutter/website/tree/main/examples/layout/row_column)

Sütunlar, satırlarla aynı şekilde çalışır. Aşağıdaki örnek, her biri 100 piksel yüksekliğinde 3 resimden oluşan bir sütunu gösterir. Render kutusunun yüksekliği (bu durumda ekranın tamamı) 300 pikselden fazladır; bu nedenle ana eksen hizalamasını `spaceEvenly` olarak ayarlamak, boş dikey alanı her resmin arasına, üstüne ve altına eşit olarak böler.

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);
```

<p align="center">
  <img src="gorseller/column-visual.png" alt="3 resmi eşit aralıklarla gösteren sütun" height="380">
  <br><sub><i>3 resmi eşit aralıklarla gösteren sütun</i></sub>
</p>

📂 **Uygulama kaynağı:** [row\_column](https://github.com/flutter/website/tree/main/examples/layout/row_column)

<a id="layout-sizing-widgets"></a>

### Widget'ları boyutlandırma

Bir yerleşim düzeni cihaza sığmayacak kadar büyük olduğunda, etkilenen kenar boyunca sarı-siyah çizgili bir desen görünür. İşte fazla geniş olan bir satır için bir [örnek](https://github.com/flutter/website/tree/main/examples/layout/sizing):

<p align="center">
  <img src="gorseller/layout-too-large.png" alt="Fazla geniş satır (sarı-siyah taşma deseni)" width="400">
  <br><sub><i>Fazla geniş satır (sarı-siyah taşma deseni)</i></sub>
</p>

Widget'lar, [`Expanded`](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget'ı kullanılarak bir satıra veya sütuna sığacak şekilde boyutlandırılabilir. Resim satırının render kutusuna göre fazla geniş olduğu önceki örneği düzeltmek için her resmi bir `Expanded` widget'ı ile sarmalayın.

```dart
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(child: Image.asset('images/pic1.jpg')),
    Expanded(child: Image.asset('images/pic2.jpg')),
    Expanded(child: Image.asset('images/pic3.jpg')),
  ],
);
```

<p align="center">
  <img src="gorseller/row-expanded-2-visual.png" alt="Fazla geniş olan, ancak her biri alanın yalnızca 1/3&#x27;ünü kaplayacak şekilde kısıtlanmış 3 resimli satır" width="300">
  <br><sub><i>Fazla geniş olan, ancak her biri alanın yalnızca 1/3&#x27;ünü kaplayacak şekilde kısıtlanmış 3 resimli satır</i></sub>
</p>

📂 **Uygulama kaynağı:** [sizing](https://github.com/flutter/website/tree/main/examples/layout/sizing)

Belki bir widget'ın kardeşlerinin iki katı kadar alan kaplamasını istersiniz. Bunun için `Expanded` widget'ının `flex` özelliğini kullanın; bu, bir widget için esneklik katsayısını (flex factor) belirleyen bir tam sayıdır. Varsayılan esneklik katsayısı 1'dir. Aşağıdaki kod, ortadaki resmin esneklik katsayısını 2 olarak ayarlar:

```dart
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(child: Image.asset('images/pic1.jpg')),
    Expanded(flex: 2, child: Image.asset('images/pic2.jpg')),
    Expanded(child: Image.asset('images/pic3.jpg')),
  ],
);
```

<p align="center">
  <img src="gorseller/row-expanded-visual.png" alt="Ortadaki resmin diğerlerinin iki katı genişlikte olduğu 3 resimli satır" width="300">
  <br><sub><i>Ortadaki resmin diğerlerinin iki katı genişlikte olduğu 3 resimli satır</i></sub>
</p>

📂 **Uygulama kaynağı:** [sizing](https://github.com/flutter/website/tree/main/examples/layout/sizing)

<a id="layout-packing-widgets"></a>

### Widget'ları sıkıştırma

Varsayılan olarak bir satır veya sütun, ana ekseni boyunca mümkün olduğunca fazla alan kaplar; ancak alt widget'ları birbirine yakın şekilde sıkıştırmak (pack) istiyorsanız `mainAxisSize` değerini `MainAxisSize.min` olarak ayarlayın. Aşağıdaki örnek, yıldız ikonlarını bir araya sıkıştırmak için bu özelliği kullanır.

```dart
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
)
```

<p align="center">
  <img src="gorseller/packed.png" alt="Satırın ortasında bir arada duran 5 yıldız" width="300">
  <br><sub><i>Satırın ortasında bir arada duran 5 yıldız</i></sub>
</p>

📂 **Uygulama kaynağı:** [pavlova](https://github.com/flutter/website/tree/main/examples/layout/pavlova)

<a id="layout-nesting-rows-and-columns"></a>

### Satırları ve sütunları iç içe yerleştirme

Yerleşim düzeni çatısı (framework), satırları ve sütunları ihtiyaç duyduğunuz kadar derin biçimde satırların ve sütunların içine yerleştirmenize olanak tanır. Aşağıdaki yerleşim düzeninin çerçeve içine alınmış bölümünün koduna bakalım:

<p align="center">
  <img src="gorseller/pavlova-large-annotated.png" alt="Puan ve ikon satırlarının kırmızı ile çerçevelendiği Pavlova uygulamasının ekran görüntüsü" width="663">
  <br><sub><i>Puan ve ikon satırlarının kırmızı ile çerçevelendiği Pavlova uygulamasının ekran görüntüsü</i></sub>
</p>

Çerçeveli bölüm iki satır olarak uygulanmıştır. Puan (ratings) satırı beş yıldız ve yorum sayısını içerir. İkon (icons) satırı ise ikon ve metinden oluşan üç sütun içerir.

Puan satırının widget ağacı:

<p align="center">
  <img src="gorseller/widget-tree-pavlova-rating-row.png" alt="Puan satırı widget ağacı" width="400">
  <br><sub><i>Puan satırı widget ağacı</i></sub>
</p>

`ratings` değişkeni, 5 yıldız ikonundan oluşan daha küçük bir satır ve bir metin içeren bir satır oluşturur:

```dart
final stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);
```

> 💡 **İpucu**

Puan satırının altındaki ikon satırı 3 sütun içerir; widget ağacında da görebileceğiniz gibi her sütun bir ikon ve iki satır metin barındırır:

<p align="center">
  <img src="gorseller/widget-tree-pavlova-icon-row.png" alt="İkon satırı widget ağacı" width="720">
  <br><sub><i>İkon satırı widget ağacı</i></sub>
</p>

`iconList` değişkeni ikon satırını tanımlar:

```dart
const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

// DefaultTextStyle.merge(), alt widget'ı ve ondan sonraki tüm alt
// widget'lar tarafından miras alınan varsayılan bir metin stili
// oluşturmanıza olanak tanır.
final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            const Text('PREP:'),
            const Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            const Text('COOK:'),
            const Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            const Text('FEEDS:'),
            const Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
```

`leftColumn` değişkeni; puan ve ikon satırlarını, ayrıca Pavlova'yı anlatan başlığı ve metni içerir:

```dart
final leftColumn = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(children: [titleText, subTitle, ratings, iconList]),
);
```

Sol sütun, genişliğini kısıtlamak için bir `SizedBox` içine yerleştirilir. Son olarak, arayüz; sol sütunu ve resmi içeren satırın tamamının bir `Card` içine alınmasıyla oluşturulur.

[Pavlova resmi](https://pixabay.com/en/photos/pavlova), [Pixabay](https://pixabay.com/en/photos/pavlova)'den alınmıştır. `Image.network()` kullanarak internetten bir resim gömebilirsiniz; ancak bu örnek için resim, projedeki bir images dizinine kaydedilmiş, [pubspec dosyasına](https://github.com/flutter/website/tree/main/examples/layout/pavlova/pubspec.yaml) eklenmiş ve `Images.asset()` kullanılarak erişilmiştir. Daha fazla bilgi için bkz. [Varlık ve resim ekleme](https://docs.flutter.dev/ui/assets/assets-and-images) (Adding assets and images).

```dart
body: Center(
  child: Container(
    margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
    height: 600,
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 440, child: leftColumn),
          mainImage,
        ],
      ),
    ),
  ),
),
```

> 💡 **İpucu**

📂 **Uygulama kaynağı:** [pavlova](https://github.com/flutter/website/tree/main/examples/layout/pavlova)

---

<a id="layout-common-layout-widgets"></a>

## Yaygın yerleşim widget'ları

Flutter'ın zengin bir yerleşim widget'ı kütüphanesi vardır. Aşağıda en sık kullanılanlardan birkaçı yer alıyor. Amaç, sizi tam bir listeyle bunaltmak yerine mümkün olan en kısa sürede çalışır hâle getirmektir. Kullanılabilir diğer widget'lar hakkında bilgi için [Widget kataloğuna](https://docs.flutter.dev/ui/widgets) bakın veya [API referans dokümanlarındaki](https://api.flutter.dev/flutter) arama kutusunu kullanın. Ayrıca API dokümanlarındaki widget sayfaları, ihtiyaçlarınıza daha uygun olabilecek benzer widget'lar hakkında sıklıkla önerilerde bulunur.

Aşağıdaki widget'lar iki kategoriye ayrılır: [widget kütüphanesindeki](https://api.flutter.dev/flutter/widgets/widgets-library.html) standart widget'lar ve [Material kütüphanesindeki](https://pub.dev/documentation/material_ui/latest/material_ui) özelleşmiş widget'lar. Widget kütüphanesini her uygulama kullanabilir; ancak Material Components kütüphanesini yalnızca Material uygulamaları kullanabilir.

#### 🔹 Standart widget'lar

#### 🔹 Material widget'ları

#### 🔹 Cupertino widget'ları

<a id="layout-container"></a>

### Container

Birçok yerleşim düzeni, widget'ları iç boşlukla ayırmak veya kenarlık ya da dış boşluk eklemek için [`Container`](https://api.flutter.dev/flutter/widgets/Container-class.html)'ları bolca kullanır. Yerleşim düzeninin tamamını bir `Container` içine yerleştirip arka plan rengini veya resmini değiştirerek cihazın arka planını değiştirebilirsiniz.

<a id="layout-summary-container"></a>

#### Özet (Container)

-   İç boşluk, dış boşluk, kenarlık ekleyin
-   Arka plan rengini veya resmini değiştirin
-   Tek bir alt widget içerir; ancak bu alt widget bir `Row`, `Column` ve hatta bir widget ağacının kökü olabilir

<p align="center">
  <img src="gorseller/margin-padding-border.png" alt="Dış boşluk (margin), kenarlık (border), iç boşluk (padding) ve içeriği gösteren diyagram" width="302">
  <br><sub><i>Dış boşluk (margin), kenarlık (border), iç boşluk (padding) ve içeriği gösteren diyagram</i></sub>
</p>

<a id="layout-examples-container"></a>

#### Örnekler (Container)

Bu yerleşim düzeni, her biri 2 resim içeren iki satırlı bir sütundan oluşur. Sütunun arka plan rengini daha açık bir griye değiştirmek için bir [`Container`](https://api.flutter.dev/flutter/widgets/Container-class.html) kullanılır.

```dart
Widget _buildImageColumn() {
  return Container(
    decoration: const BoxDecoration(color: Colors.black26),
    child: Column(children: [_buildImageRow(1), _buildImageRow(3)]),
  );
}
```

<p align="center">
  <img src="gorseller/container.png" alt="Her biri 2 resim içeren 2 satırı gösteren ekran görüntüsü" width="300">
  <br><sub><i>Her biri 2 resim içeren 2 satırı gösteren ekran görüntüsü</i></sub>
</p>

Her resme yuvarlatılmış bir kenarlık ve dış boşluk eklemek için de bir `Container` kullanılır:

```dart
Widget _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.black38),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    margin: const EdgeInsets.all(4),
    child: Image.asset('images/pic$imageIndex.jpg'),
  ),
);

Widget _buildImageRow(int imageIndex) => Row(
  children: [
    _buildDecoratedImage(imageIndex),
    _buildDecoratedImage(imageIndex + 1),
  ],
);
```

Daha fazla `Container` örneğini [öğreticide](#bolum-02) bulabilirsiniz.

📂 **Uygulama kaynağı:** [container](https://github.com/flutter/website/tree/main/examples/layout/container)

---

<a id="layout-gridview"></a>

### GridView

Widget'ları iki boyutlu bir liste olarak yerleştirmek için [`GridView`](https://api.flutter.dev/flutter/widgets/GridView-class.html) kullanın. `GridView`, önceden hazırlanmış iki liste sunar; ya da kendi özel ızgaranızı oluşturabilirsiniz. Bir `GridView`, içeriğinin render kutusuna sığmayacak kadar uzun olduğunu algıladığında otomatik olarak kaydırılır.

<a id="layout-summary-gridview"></a>

#### Özet (GridView)

-   Widget'ları bir ızgara içinde yerleştirir
-   Sütun içeriğinin render kutusunu aştığını algılar ve otomatik olarak kaydırma sağlar
-   Kendi özel ızgaranızı oluşturun veya sağlanan ızgaralardan birini kullanın:
    -   `GridView.count`, sütun sayısını belirtmenize olanak tanır
    -   `GridView.extent`, bir döşemenin (tile) azami piksel genişliğini belirtmenize olanak tanır

> ℹ️ **Not**

<a id="layout-examples-gridview"></a>

#### Örnekler (GridView)

<p align="center">
  <img src="gorseller/gridview-extent.png" alt="3 sütunlu fotoğraf ızgarası" height="380">
  <br><sub><i>3 sütunlu fotoğraf ızgarası</i></sub>
</p>

En fazla 150 piksel genişliğinde döşemelerden oluşan bir ızgara oluşturmak için `GridView.extent` kullanır.

📂 **Uygulama kaynağı:** [grid\_and\_list](https://github.com/flutter/website/tree/main/examples/layout/grid_and_list)

<p align="center">
  <img src="gorseller/gridview-count-flutter-gallery.png" alt="Alt bilgili (footer) 2 sütunlu ızgara" height="380">
  <br><sub><i>Alt bilgili (footer) 2 sütunlu ızgara</i></sub>
</p>

Dikey (portrait) modda 2, yatay (landscape) modda 3 döşeme genişliğinde bir ızgara oluşturmak için `GridView.count` kullanır. Başlıklar, her bir [`GridTile`](https://pub.dev/documentation/material_ui/latest/material_ui/GridTile-class.html) için `footer` özelliği ayarlanarak oluşturulur.

📂 **Dart kodu:** [`grid_list_demo.dart`](https://github.com/flutter/website/tree/main/examples/layout/gallery/lib/grid_list_demo.dart)

```dart
Widget _buildGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  padding: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: _buildGridTileList(30),
);

// Resimler pic0.jpg, pic1.jpg...pic29.jpg adlarıyla kaydedilmiştir.
// List.generate() yapıcısı (constructor), nesnelerin adlandırması
// öngörülebilir bir kalıba sahip olduğunda kolayca liste oluşturmanın
// bir yolunu sunar.
List<Widget> _buildGridTileList(int count) =>
    List.generate(count, (i) => Image.asset('images/pic$i.jpg'));
```

---

<a id="layout-listview"></a>

### ListView

Sütun benzeri bir widget olan [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html), içeriği render kutusu için fazla uzun olduğunda otomatik olarak kaydırma sağlar.

<a id="layout-summary-listview"></a>

#### Özet (ListView)

-   Kutulardan oluşan bir listeyi düzenlemek için özelleşmiş bir [`Column`](https://api.flutter.dev/flutter/widgets/Column-class.html)
-   Yatay veya dikey olarak yerleştirilebilir
-   İçeriğinin sığmayacağını algılar ve kaydırma sağlar
-   `Column`'a göre daha az yapılandırılabilirdir, ancak kullanımı daha kolaydır ve kaydırmayı destekler

<a id="layout-examples-listview"></a>

#### Örnekler (ListView)

<p align="center">
  <img src="gorseller/listview.png" alt="Sinema salonları ve restoranlar içeren ListView" height="380">
  <br><sub><i>Sinema salonları ve restoranlar içeren ListView</i></sub>
</p>

İşletmelerin bir listesini `ListTile`'lar ile görüntülemek için `ListView` kullanır. Bir `Divider`, sinema salonlarını restoranlardan ayırır.

📂 **Uygulama kaynağı:** [grid\_and\_list](https://github.com/flutter/website/tree/main/examples/layout/grid_and_list)

<p align="center">
  <img src="gorseller/listview-color-gallery.png" alt="Mavi tonlarını içeren ListView" height="380">
  <br><sub><i>Mavi tonlarını içeren ListView</i></sub>
</p>

Belirli bir renk ailesi için [Material 2 Design paletindeki](https://m2.material.io/design/color/the-color-system.html#tools-for-picking-colors) [`Colors`](https://pub.dev/documentation/material_ui/latest/material_ui/Colors-class.html) değerlerini görüntülemek için `ListView` kullanır.

📂 **Dart kodu:** [`colors_demo.dart`](https://github.com/flutter/website/tree/main/examples/layout/gallery/lib/colors_demo.dart)

```dart
Widget _buildList() {
  return ListView(
    children: [
      _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
      _tile('The Castro Theater', '429 Castro St', Icons.theaters),
      _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
      _tile('Roxie Theater', '3117 16th St', Icons.theaters),
      _tile(
        'United Artists Stonestown Twin',
        '501 Buckingham Way',
        Icons.theaters,
      ),
      _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
      const Divider(),
      _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ],
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
    ),
    subtitle: Text(subtitle),
    leading: Icon(icon, color: Colors.blue[500]),
  );
}
```

---

<a id="layout-stack"></a>

### Stack

Widget'ları bir taban widget'ının (genellikle bir resim) üzerine yerleştirmek için [`Stack`](https://api.flutter.dev/flutter/widgets/Stack-class.html) kullanın. Widget'lar taban widget'ını tamamen veya kısmen örtebilir.

<a id="layout-summary-stack"></a>

#### Özet (Stack)

-   Başka bir widget'ı örten widget'lar için kullanın
-   Alt widget listesindeki ilk widget taban widget'tır; sonraki alt widget'lar bu taban widget'ın üzerine bindirilir
-   Bir `Stack`'in içeriği kaydırılamaz
-   Render kutusunu aşan alt widget'ları kırpmayı (clip) seçebilirsiniz

<a id="layout-examples-stack"></a>

#### Örnekler (Stack)

<p align="center">
  <img src="gorseller/stack.png" alt="Etiketli dairesel avatar resmi" width="250">
  <br><sub><i>Etiketli dairesel avatar resmi</i></sub>
</p>

Bir `Container`'ı (metnini yarı saydam siyah bir arka plan üzerinde gösterir) bir `CircleAvatar`'ın üzerine bindirmek için `Stack` kullanır. `Stack`, metni `alignment` özelliği ve `Alignment`'lar ile kaydırır (offset).

📂 **Uygulama kaynağı:** [card\_and\_stack](https://github.com/flutter/website/tree/main/examples/layout/card_and_stack)

<p align="center">
  <img src="gorseller/stack-flutter-gallery.png" alt="Üzerine ikon bindirilmiş bir resim" width="618">
  <br><sub><i>Üzerine ikon bindirilmiş bir resim</i></sub>
</p>

Bir ikonu bir resmin üzerine bindirmek için `Stack` kullanır.

📂 **Dart kodu:** [`bottom_navigation_demo.dart`](https://github.com/flutter/website/tree/main/examples/layout/gallery/lib/bottom_navigation_demo.dart)

```dart
Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/pic.jpg'),
        radius: 100,
      ),
      Container(
        decoration: const BoxDecoration(color: Colors.black45),
        child: const Text(
          'Mia B',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
```

---

<a id="layout-card"></a>

### Card

[Material kütüphanesindeki](https://pub.dev/documentation/material_ui/latest/material_ui) bir [`Card`](https://pub.dev/documentation/material_ui/latest/material_ui/Card-class.html), birbiriyle ilişkili bilgi parçalarını içerir ve neredeyse her widget'tan oluşabilir, ancak çoğunlukla [`ListTile`](https://pub.dev/documentation/material_ui/latest/material_ui/ListTile-class.html) ile birlikte kullanılır. `Card` tek bir alt widget'a sahiptir; ancak bu alt widget bir sütun, satır, liste, ızgara veya birden fazla alt widget destekleyen başka bir widget olabilir. Varsayılan olarak bir `Card` boyutunu 0'a 0 piksele küçültür. Bir kartın boyutunu kısıtlamak için [`SizedBox`](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) kullanabilirsiniz.

Flutter'da bir `Card`, hafifçe yuvarlatılmış köşelere ve gölgeye sahiptir; bu da ona 3B bir etki verir. Bir `Card`'ın `elevation` özelliğini değiştirmek, gölge efektini kontrol etmenizi sağlar. Örneğin elevation değerini 24 olarak ayarlamak, `Card`'ı yüzeyden görsel olarak daha fazla yükseltir ve gölgenin daha dağınık hâle gelmesine neden olur. Desteklenen elevation değerlerinin listesi için [Material yönergelerindeki](https://m3.material.io/styles) [Elevation](https://m3.material.io/styles/elevation) bölümüne bakın. Desteklenmeyen bir değer belirtmek gölgeyi tamamen devre dışı bırakır.

<a id="layout-summary-card"></a>

#### Özet (Card)

-   Bir [Material kartı](https://m3.material.io/components/cards) uygular
-   Birbiriyle ilişkili bilgi parçalarını sunmak için kullanılır
-   Tek bir alt widget kabul eder; ancak bu alt widget bir `Row`, `Column` veya bir alt widget listesi tutan başka bir widget olabilir
-   Yuvarlatılmış köşeler ve gölgeyle görüntülenir
-   Bir `Card`'ın içeriği kaydırılamaz
-   [Material kütüphanesinden](https://pub.dev/documentation/material_ui/latest/material_ui)dir

<a id="layout-examples-card"></a>

#### Örnekler (Card)

<p align="center">
  <img src="gorseller/card.png" alt="3 ListTile içeren Card" width="300">
  <br><sub><i>3 ListTile içeren Card</i></sub>
</p>

3 `ListTile` içeren ve bir `SizedBox` ile sarmalanarak boyutlandırılmış bir `Card`. Bir `Divider`, birinci ve ikinci `ListTile`'ları ayırır.

📂 **Uygulama kaynağı:** [card\_and\_stack](https://github.com/flutter/website/tree/main/examples/layout/card_and_stack)

<p align="center">
  <img src="gorseller/card-flutter-gallery.png" alt="Bir resim ve birden fazla metin biçimi içeren, dokunulabilir kart" width="719">
  <br><sub><i>Bir resim ve birden fazla metin biçimi içeren, dokunulabilir kart</i></sub>
</p>

Bir resim ve metin içeren `Card`.

📂 **Dart kodu:** [`cards_demo.dart`](https://github.com/flutter/website/tree/main/examples/layout/gallery/lib/cards_demo.dart)

```dart
Widget _buildCard() {
  return SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              '1625 Main Street',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('My City, CA 99984'),
            leading: Icon(Icons.restaurant_menu, color: Colors.blue[500]),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '(408) 555-1212',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.contact_phone, color: Colors.blue[500]),
          ),
          ListTile(
            title: const Text('costa@example.com'),
            leading: Icon(Icons.contact_mail, color: Colors.blue[500]),
          ),
        ],
      ),
    ),
  );
}
```

---

<a id="layout-listtile"></a>

### ListTile

En fazla 3 satır metin ile isteğe bağlı baştaki ve sondaki ikonları içeren bir satırı kolayca oluşturmak için, [Material kütüphanesinden](https://pub.dev/documentation/material_ui/latest/material_ui) özelleşmiş bir satır widget'ı olan [`ListTile`](https://pub.dev/documentation/material_ui/latest/material_ui/ListTile-class.html)'ı kullanın. `ListTile` en çok [`Card`](https://pub.dev/documentation/material_ui/latest/material_ui/Card-class.html) veya [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) içinde kullanılır, ancak başka yerlerde de kullanılabilir.

<a id="layout-summary-listtile"></a>

#### Özet (ListTile)

-   En fazla 3 satır metin ve isteğe bağlı ikonlar içeren özelleşmiş bir satır
-   `Row`'a göre daha az yapılandırılabilirdir, ancak kullanımı daha kolaydır
-   [Material kütüphanesinden](https://pub.dev/documentation/material_ui/latest/material_ui)dir

<a id="layout-examples-listtile"></a>

#### Örnekler (ListTile)

<p align="center">
  <img src="gorseller/card.png" alt="3 ListTile içeren Card" width="300">
  <br><sub><i>3 ListTile içeren Card</i></sub>
</p>

3 `ListTile` içeren bir `Card`.

📂 **Uygulama kaynağı:** [card\_and\_stack](https://github.com/flutter/website/tree/main/examples/layout/card_and_stack)

<p align="center">
  <img src="gorseller/listtile-flutter-gallery.png" alt="Her biri baştaki bir avatar içeren 4 ListTile" width="323">
  <br><sub><i>Her biri baştaki bir avatar içeren 4 ListTile</i></sub>
</p>

Baştaki (leading) widget'larla `ListTile` kullanır.

📂 **Dart kodu:** [`list_demo.dart`](https://github.com/flutter/website/tree/main/examples/layout/gallery/lib/list_demo.dart)

---

<a id="layout-constraints"></a>

## Kısıtlamalar (Constraints)

Flutter'ın yerleşim sistemini tam olarak anlamak için, Flutter'ın bir yerleşim düzenindeki bileşenleri nasıl konumlandırdığını ve boyutlandırdığını öğrenmeniz gerekir. Daha fazla bilgi için bkz. [Kısıtlamaları anlama](https://docs.flutter.dev/ui/layout/constraints) (Understanding constraints).

<a id="layout-videos"></a>

## Videolar

Aşağıdaki videolar, [Flutter in Focus](https://www.youtube.com/watch?v=wgTBLj7rMPM&list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2) serisinin bir parçasıdır ve `Stateless` ile `Stateful` widget'ları açıklar.

▶️ **Video:** [How to create stateless widgets](https://www.youtube.com/watch/wE7khGHVkYY) <sub>· YouTube'da açılır</sub>

▶️ **Video:** [How and when stateful widgets are best used](https://www.youtube.com/watch/AqCMFXEmf3w) <sub>· YouTube'da açılır</sub>

[Flutter in Focus oynatma listesi](https://www.youtube.com/playlist?list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2)

---

[Widget of the Week serisinin](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG) her bölümü bir widget'a odaklanır. Bunlardan birkaçı yerleşim widget'larını içerir.

▶️ **Video:** [Introducing widget of the week](https://www.youtube.com/watch/b_sQ9bMltGU) <sub>· YouTube'da açılır</sub>

[Flutter Widget of the Week oynatma listesi](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)

<a id="layout-other-resources"></a>

## Diğer kaynaklar

Aşağıdaki kaynaklar, yerleşim düzeni kodu yazarken size yardımcı olabilir.

**[Yerleşim düzeni öğreticisi (Layout tutorial)](#bolum-02)**  
Bir yerleşim düzeninin nasıl oluşturulacağını öğrenin.

**[Widget kataloğu (Widget catalog)](https://docs.flutter.dev/ui/widgets)**  
Flutter'da bulunan birçok widget'ı açıklar.

**[Flutter'da HTML/CSS karşılıkları (HTML/CSS Analogs in Flutter)](https://docs.flutter.dev/flutter-for/web-devs)**  
Web programlamaya aşina olanlar için bu sayfa, HTML/CSS işlevlerini Flutter özellikleriyle eşleştirir.

**[API referans dokümanları (API reference docs)](https://api.flutter.dev/flutter)**  
Tüm Flutter kütüphaneleri için referans dokümantasyonu.

**[Varlık ve resim ekleme (Adding assets and images)](https://docs.flutter.dev/ui/assets/assets-and-images)**  
Uygulamanızın paketine resim ve diğer varlıkların (asset) nasıl ekleneceğini açıklar.

**[Zero to One with Flutter](https://medium.com/@mravn/zero-to-one-with-flutter-43b13fd7b354)**  
Bir kişinin ilk Flutter uygulamasını yazma deneyimi.

---

<div align="center">

<sub>⬅️ İlk bölüm</sub> &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-02)

</div>

<a id="bolum-02"></a>

<div align="center">

<sub>BÖLÜM 02 / 19  ·  🧱 YERLEŞIM DÜZENI</sub>

# 🛠️ Bir Flutter yerleşim düzeni oluşturma

**Flutter'da nasıl yerleşim düzeni oluşturacağınızı öğrenin.**

`UI › Yerleşim düzeni (Layout) › Yerleşim düzeni öğreticisi`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/layout/tutorial)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-01) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-03)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Yerleşim düzenini diyagramlama](#tutorial-diagram-the-layout)
- [Uygulamanın temel kodunu oluşturma](#tutorial-create-the-app-base-code)
- [Başlık bölümünü ekleme](#tutorial-add-the-title-section)
  - [`TitleSection` widget'ını ekleme](#tutorial-add-the-titlesection-widget)
  - [Uygulama gövdesini kaydırılabilir bir görünüme dönüştürme](#tutorial-change-the-app-body-to-a-scrolling-view)
  - [Uygulamayı başlık bölümünü gösterecek şekilde güncelleme](#tutorial-update-the-app-to-display-the-title-section)
- [Düğme bölümünü ekleme](#tutorial-add-the-button-section)
  - [`ButtonSection` widget'ını ekleme](#tutorial-add-the-buttonsection-widget)
  - [Düğme oluşturmak için bir widget oluşturma](#tutorial-create-a-widget-to-make-buttons)
  - [Düğmeleri bir `Row` widget'ı ile konumlandırma](#tutorial-position-the-buttons-with-a-row-widget)
  - [Uygulamayı düğme bölümünü gösterecek şekilde güncelleme](#tutorial-update-the-app-to-display-the-button-section)
- [Metin bölümünü ekleme](#tutorial-add-the-text-section)
  - [`TextSection` widget'ını ekleme](#tutorial-add-the-textsection-widget)
  - [Uygulamayı metin bölümünü gösterecek şekilde güncelleme](#tutorial-update-the-app-to-display-the-text-section)
- [Resim bölümünü ekleme](#tutorial-add-the-image-section)
  - [Uygulamanızı sağlanan resimleri kullanacak şekilde yapılandırma](#tutorial-configure-your-app-to-use-supplied-images)
  - [`ImageSection` widget'ını oluşturma](#tutorial-create-the-imagesection-widget)
  - [Uygulamayı resim bölümünü gösterecek şekilde güncelleme](#tutorial-update-the-app-to-display-the-image-section)
- [Tebrikler](#tutorial-congratulations)
- [Kaynaklar](#tutorial-resources)
- [Sonraki adımlar](#tutorial-next-steps)

</details>

> 🎯 **Neler öğreneceksiniz**
>
> -   Widget'ları yan yana nasıl yerleştireceğinizi.
> -   Widget'lar arasına nasıl boşluk ekleyeceğinizi.
> -   Widget'ları ekleyip iç içe yerleştirmenin bir Flutter yerleşim düzeniyle nasıl sonuçlandığını.

Bu öğretici, Flutter'da yerleşim düzenlerinin nasıl tasarlanıp oluşturulacağını açıklar.

Verilen örnek kodu kullanırsanız aşağıdaki uygulamayı oluşturabilirsiniz.

<p align="center">
  <img src="gorseller/layout-demo-app.png" alt="Tamamlanmış uygulama." height="380">
  <br><sub><i>Tamamlanmış uygulama.</i></sub>
</p>

Fotoğraf: [Dino Reichmuth](https://unsplash.com/photos/red-and-gray-tents-in-grass-covered-mountain-5Rhl-kSRydQ), [Unsplash](https://unsplash.com). Metin: [Switzerland Tourism](https://www.myswitzerland.com/en-us/destinations/lake-oeschinen).

Yerleşim düzeni mekanizmasına daha iyi bir genel bakış için [Flutter'ın yerleşim düzenine yaklaşımı](#bolum-01) ile başlayın.

<a id="tutorial-diagram-the-layout"></a>

## Yerleşim düzenini diyagramlama

Bu bölümde, uygulama kullanıcılarınız için nasıl bir kullanıcı deneyimi istediğinizi düşünün.

Kullanıcı arayüzünüzün bileşenlerini nasıl konumlandıracağınızı düşünün. Yerleşim düzeni, bu konumlandırmaların toplam nihai sonucundan oluşur. Kodlamayı hızlandırmak için yerleşim düzeninizi planlamayı düşünün. Bir şeyin ekranda nereye gideceğini bilmek için görsel ipuçlarını kullanmak büyük yardımcı olabilir.

Bir arayüz tasarım aracı ya da kalem ve kâğıt gibi hangi yöntemi tercih ederseniz onu kullanın. Kod yazmadan önce öğeleri ekranda nereye yerleştirmek istediğinizi belirleyin. Bu, "İki kez ölç, bir kez kes" atasözünün programlama versiyonudur.

1. Yerleşim düzenini temel öğelerine ayırmak için şu soruları sorun.
    -   Satırları ve sütunları belirleyebiliyor musunuz?
    -   Yerleşim düzeni bir ızgara (grid) içeriyor mu?
    -   Üst üste binen öğeler var mı?
    -   Arayüzün sekmelere ihtiyacı var mı?
    -   Neleri hizalamanız, iç boşlukla ayırmanız (pad) veya kenarlıkla çevrelemeniz gerekiyor?
2. Daha büyük öğeleri belirleyin. Bu örnekte resmi, başlığı, düğmeleri ve açıklamayı bir sütun içinde düzenlersiniz.

    <p align="center">
      <img src="gorseller/layout-sketch-intro.svg" alt="Yerleşim düzenindeki ana öğeler: resim, satır, satır ve metin bloğu" height="300">
      <br><sub><i>Yerleşim düzenindeki ana öğeler: resim, satır, satır ve metin bloğu</i></sub>
    </p>
3. Her satırı diyagramlayın.
    1. Satır 1, **Başlık (Title)** bölümü, üç alt widget'a sahiptir: bir metin sütunu, bir yıldız ikonu ve bir sayı. İlk alt widget'ı olan sütun iki satır metin içerir. Bu ilk sütunun daha fazla alana ihtiyacı olabilir.

        <p align="center">
          <img src="gorseller/layout-sketch-title-block.svg" alt="Metin blokları ve bir ikon içeren Başlık bölümü" width="314">
          <br><sub><i>Metin blokları ve bir ikon içeren Başlık bölümü</i></sub>
        </p>
    2. Satır 2, **Düğme (Button)** bölümü, üç alt widget'a sahiptir: her alt widget bir sütun içerir ve bu sütun da bir ikon ile metin içerir.

        <p align="center">
          <img src="gorseller/layout-sketch-button-block.svg" alt="Üç etiketli düğme içeren Düğme bölümü" width="298">
          <br><sub><i>Üç etiketli düğme içeren Düğme bölümü</i></sub>
        </p>

Yerleşim düzenini diyagramladıktan sonra, onu nasıl kodlayacağınızı düşünün.

Tüm kodu tek bir sınıfta mı yazarsınız? Yoksa yerleşim düzeninin her bölümü için bir sınıf mı oluşturursunuz?

Flutter en iyi uygulamalarını izlemek için, yerleşim düzeninizin her bölümünü içerecek bir sınıf veya Widget oluşturun. Flutter'ın bir kullanıcı arayüzünün bir bölümünü yeniden render etmesi gerektiğinde, değişen en küçük bölümü günceller. Flutter'ın "her şeyi bir widget" yapmasının nedeni budur. Bir `Text` widget'ında yalnızca metin değişirse, Flutter yalnızca o metni yeniden çizer. Flutter, kullanıcı girdisine karşılık olarak arayüzün mümkün olan en az kısmını değiştirir.

Bu öğretici için, belirlediğiniz her öğeyi kendi widget'ı olarak yazın.

<a id="tutorial-create-the-app-base-code"></a>

## Uygulamanın temel kodunu oluşturma

Bu bölümde, uygulamanıza başlamak için temel Flutter uygulama kodunun iskeletini oluşturun.

1. [Flutter ortamınızı kurun.](https://docs.flutter.dev/install)
2. [Yeni bir Flutter uygulaması oluşturun.](https://docs.flutter.dev/reference/create-new-app)
3. `lib/main.dart` dosyasının içeriğini aşağıdaki kodla değiştirin. Bu uygulama, uygulama başlığı ve uygulamanın `appBar`'ında gösterilen başlık için bir parametre kullanır. Bu karar kodu basitleştirir.

<a id="tutorial-add-the-title-section"></a>

## Başlık bölümünü ekleme

Bu bölümde, aşağıdaki yerleşim düzenine benzeyen bir `TitleSection` widget'ı oluşturun.

<p align="center">
  <img src="gorseller/layout-sketch-title-block-unlabeled.svg" alt="Taslak ve prototip arayüz olarak Başlık bölümü" width="312">
  <br><sub><i>Taslak ve prototip arayüz olarak Başlık bölümü</i></sub>
</p>

<a id="tutorial-add-the-titlesection-widget"></a>

### `TitleSection` widget'ını ekleme

`MyApp` sınıfından sonra aşağıdaki kodu ekleyin.

```dart
class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );
  }
}
```

1. Satırdaki kalan boş alanın tamamını kullanmak için, `Column` widget'ını esnetmek (stretch) üzere `Expanded` widget'ını kullanın. Sütunu satırın başına yerleştirmek için `crossAxisAlignment` özelliğini `CrossAxisAlignment.start` olarak ayarlayın.
2. Metin satırları arasına boşluk eklemek için, bu satırları bir `Padding` widget'ına koyun.
3. Başlık satırı, kırmızı bir yıldız ikonu ve `41` metniyle biter. Satırın tamamı bir `Padding` widget'ının içine düşer ve her kenarı 32 piksel iç boşlukla doldurur.

<a id="tutorial-change-the-app-body-to-a-scrolling-view"></a>

### Uygulama gövdesini kaydırılabilir bir görünüme dönüştürme

`body` özelliğinde, `Center` widget'ını bir `SingleChildScrollView` widget'ı ile değiştirin. [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) widget'ının içinde, `Text` widget'ını bir `Column` widget'ı ile değiştirin.

```diff
- body: const Center(
-   child: Text('Hello World'),
+ body: const SingleChildScrollView(
+   child: Column(
+     children: [
```

Bu kod güncellemeleri uygulamayı aşağıdaki şekillerde değiştirir.

-   Bir `SingleChildScrollView` widget'ı kaydırılabilir. Bu, mevcut ekrana sığmayan öğelerin görüntülenmesini sağlar.
-   Bir `Column` widget'ı, `children` özelliği içindeki tüm öğeleri listelenen sırayla görüntüler. `children` listesinde ilk listelenen öğe, listenin en üstünde görüntülenir. `children` listesindeki öğeler ekranda dizi sırasıyla yukarıdan aşağıya doğru görüntülenir.

<a id="tutorial-update-the-app-to-display-the-title-section"></a>

### Uygulamayı başlık bölümünü gösterecek şekilde güncelleme

`TitleSection` widget'ını `children` listesindeki ilk öğe olarak ekleyin. Bu, onu ekranın en üstüne yerleştirir. Verilen ad (name) ve konumu (location) `TitleSection` yapıcısına (constructor) geçirin.

```diff
  children: [
+   TitleSection(
+     name: 'Oeschinen Lake Campground',
+     location: 'Kandersteg, Switzerland',
+   ),
  ],
```

> 💡 **İpucu**
>
> -   Kodu uygulamanıza yapıştırırken girinti (indentation) bozulabilir. Bunu düzeltmek için Flutter editörünüzde [otomatik biçimlendirme desteğini](https://docs.flutter.dev/tools/formatting) kullanın.
> -   Geliştirmenizi hızlandırmak için Flutter'ın [hot reload](https://docs.flutter.dev/tools/hot-reload) özelliğini deneyin.
> -   Sorun yaşarsanız, kodunuzu [`lib/main.dart`](https://github.com/flutter/website/blob/main/examples/layout/lakes/step2/lib/main.dart) ile karşılaştırın.

<a id="tutorial-add-the-button-section"></a>

## Düğme bölümünü ekleme

Bu bölümde, uygulamanıza işlevsellik katacak düğmeleri ekleyin.

**Düğme** bölümü aynı yerleşim düzenini kullanan üç sütun içerir: bir metin satırının üzerinde bir ikon.

<p align="center">
  <img src="gorseller/layout-sketch-button-block-unlabeled.svg" alt="Taslak ve prototip arayüz olarak Düğme bölümü" width="299">
  <br><sub><i>Taslak ve prototip arayüz olarak Düğme bölümü</i></sub>
</p>

Bu sütunları, her biri aynı miktarda alan kaplayacak şekilde tek bir satırda dağıtmayı planlayın. Tüm metinleri ve ikonları birincil renk (primary color) ile boyayın.

<a id="tutorial-add-the-buttonsection-widget"></a>

### `ButtonSection` widget'ını ekleme

Düğme satırını oluşturacak kodu içermesi için `TitleSection` widget'ından sonra aşağıdaki kodu ekleyin.

```dart
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    // ···
  }

}
```

<a id="tutorial-create-a-widget-to-make-buttons"></a>

### Düğme oluşturmak için bir widget oluşturma

Her sütunun kodu aynı sözdizimini kullanabileceğinden, `ButtonWithText` adında bir widget oluşturun. Widget'ın yapıcısı bir renk, ikon verisi ve düğme için bir etiket kabul eder. Bu değerleri kullanarak widget, alt widget'ları bir `Icon` ve biçimlendirilmiş bir `Text` widget'ı olan bir `Column` oluşturur. Bu alt widget'ları birbirinden ayırmaya yardımcı olmak için, `Text` widget'ı bir `Padding` widget'ı ile sarmalanmıştır.

`ButtonSection` sınıfından sonra aşağıdaki kodu ekleyin.

```dart
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  // ···
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```

<a id="tutorial-position-the-buttons-with-a-row-widget"></a>

### Düğmeleri bir `Row` widget'ı ile konumlandırma

Aşağıdaki kodu `ButtonSection` widget'ına ekleyin.

1. Her düğme için bir kez olmak üzere `ButtonWithText` widget'ının üç örneğini (instance) ekleyin.
2. O düğmeye özgü rengi, `Icon`'u ve metni geçirin.
3. Sütunları ana eksen (main axis) boyunca `MainAxisAlignment.spaceEvenly` değeriyle hizalayın. Bir `Row` widget'ının ana ekseni yataydır, bir `Column` widget'ının ana ekseni ise dikeydir. Bu değer, Flutter'a boş alanı `Row` boyunca her sütunun öncesinde, arasında ve sonrasında eşit miktarlarda düzenlemesini söyler.

```diff
  class ButtonSection extends StatelessWidget {
    const ButtonSection({super.key});
 
    @override
    Widget build(BuildContext context) {
      final Color color = Theme.of(context).primaryColor;
+     return SizedBox(
+       child: Row(
+         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
+         children: [
+           ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
+           ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
+           ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
+         ],
+       ),
+     );
    }
 
  }
 
  class ButtonWithText extends StatelessWidget {
    const ButtonWithText({
      super.key,
      required this.color,
      required this.icon,
      required this.label,
    });
 
    final Color color;
    final IconData icon;
    final String label;
 
    @override
    Widget build(BuildContext context) {
      return Column(
        // ···
      );
    }
  }
```

<a id="tutorial-update-the-app-to-display-the-button-section"></a>

### Uygulamayı düğme bölümünü gösterecek şekilde güncelleme

Düğme bölümünü `children` listesine ekleyin.

```diff
    TitleSection(
      name: 'Oeschinen Lake Campground',
      location: 'Kandersteg, Switzerland',
    ),
+   ButtonSection(),
  ],
```

<a id="tutorial-add-the-text-section"></a>

## Metin bölümünü ekleme

Bu bölümde, bu uygulamaya metin açıklamasını ekleyin.

<p align="center">
  <img src="gorseller/layout-sketch-add-text-block.svg" alt="Taslak ve prototip arayüz olarak metin bloğu" width="449">
  <br><sub><i>Taslak ve prototip arayüz olarak metin bloğu</i></sub>
</p>

<a id="tutorial-add-the-textsection-widget"></a>

### `TextSection` widget'ını ekleme

Aşağıdaki kodu, `ButtonSection` widget'ından sonra ayrı bir widget olarak ekleyin.

```dart
class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}
```

[`softWrap`](https://api.flutter.dev/flutter/widgets/Text/softWrap.html) değerini `true` olarak ayarlayarak, metin satırları bir kelime sınırında alt satıra geçmeden (wrap) önce sütun genişliğini doldurur.

<a id="tutorial-update-the-app-to-display-the-text-section"></a>

### Uygulamayı metin bölümünü gösterecek şekilde güncelleme

`ButtonSection`'dan sonra yeni bir `TextSection` widget'ını alt widget olarak ekleyin. `TextSection` widget'ını eklerken, `description` özelliğini konum açıklamasının metnine ayarlayın.

```diff
      location: 'Kandersteg, Switzerland',
    ),
    ButtonSection(),
+   TextSection(
+     description:
+         'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
+         'Bernese Alps. Situated 1,578 meters above sea level, it '
+         'is one of the larger Alpine Lakes. A gondola ride from '
+         'Kandersteg, followed by a half-hour walk through pastures '
+         'and pine forest, leads you to the lake, which warms to 20 '
+         'degrees Celsius in the summer. Activities enjoyed here '
+         'include rowing, and riding the summer toboggan run.',
+   ),
  ],
```

<a id="tutorial-add-the-image-section"></a>

## Resim bölümünü ekleme

Bu bölümde, yerleşim düzeninizi tamamlamak için resim dosyasını ekleyin.

<a id="tutorial-configure-your-app-to-use-supplied-images"></a>

### Uygulamanızı sağlanan resimleri kullanacak şekilde yapılandırma

Uygulamanızı resimlere başvuracak şekilde yapılandırmak için `pubspec.yaml` dosyasını değiştirin.

1. Projenin en üstünde bir `images` dizini oluşturun.
2. [`lake.jpg`](https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step5/images/lake.jpg) resmini indirin ve yeni `images` dizinine ekleyin.

3. Resimleri dahil etmek için, uygulamanızın kök dizinindeki `pubspec.yaml` dosyasına bir `assets` etiketi (tag) ekleyin. `assets` eklediğinizde, kodunuzun kullanabileceği resimlere işaretçiler (pointer) kümesi olarak görev yapar.

> 💡 **İpucu**

<a id="tutorial-create-the-imagesection-widget"></a>

### `ImageSection` widget'ını oluşturma

Diğer bildirimlerden sonra aşağıdaki `ImageSection` widget'ını tanımlayın.

```dart
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
```

`BoxFit.cover` değeri, Flutter'a resmi iki kısıtlamayla (constraint) görüntülemesini söyler. Birincisi, resmi mümkün olduğunca küçük görüntüle. İkincisi, yerleşim düzeninin ayırdığı, render kutusu (render box) olarak adlandırılan tüm alanı kapla.

<a id="tutorial-update-the-app-to-display-the-image-section"></a>

### Uygulamayı resim bölümünü gösterecek şekilde güncelleme

`ImageSection` widget'ını `children` listesindeki ilk alt widget olarak ekleyin. `image` özelliğini, [Uygulamanızı sağlanan resimleri kullanacak şekilde yapılandırma](#tutorial-configure-your-app-to-use-supplied-images) bölümünde eklediğiniz resmin yoluna ayarlayın.

```diff
  children: [
+   ImageSection(
+     image: 'images/lake.jpg',
+   ),
    TitleSection(
      name: 'Oeschinen Lake Campground',
      location: 'Kandersteg, Switzerland',
```

<a id="tutorial-congratulations"></a>

## Tebrikler

Hepsi bu kadar! Uygulamanıza hot reload yaptığınızda, uygulamanız şöyle görünmelidir.

<p align="center">
  <img src="gorseller/layout-demo-app.png" alt="Tamamlanmış uygulama" height="380">
  <br><sub><i>Tamamlanmış uygulama</i></sub>
</p>

<a id="tutorial-resources"></a>

## Kaynaklar

Bu öğreticide kullanılan kaynaklara şu konumlardan erişebilirsiniz:

**Dart kodu:** [`main.dart`](https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/lib/main.dart)  
 **Resim:** [ch-photo](https://unsplash.com/photos/red-and-gray-tents-in-grass-covered-mountain-5Rhl-kSRydQ)  
 **Pubspec:** [`pubspec.yaml`](https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/pubspec.yaml)

<a id="tutorial-next-steps"></a>

## Sonraki adımlar

Bu yerleşim düzenine etkileşim eklemek için [etkileşim öğreticisini](https://docs.flutter.dev/ui/interactivity) (interactivity tutorial) izleyin.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-01) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-03)

</div>

<a id="bolum-03"></a>

<div align="center">

<sub>BÖLÜM 03 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# 📋 Liste kullanma

**Bir listenin nasıl uygulanacağı.**

`Cookbook › Listeler (Lists) › Liste kullanma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/basic-list)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47.2`

[⬅️ Önceki bölüm](#bolum-02) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-04)

</div>

---

Veri listelerini görüntülemek, mobil uygulamalar için temel bir kalıptır. Flutter, listelerle çalışmayı çocuk oyuncağı hâline getirmek için [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) widget'ını içerir.

<a id="list-create-a-listview"></a>

## `ListView` oluşturma

Standart `ListView` yapıcısını (constructor) kullanmak, yalnızca birkaç öğe içeren listeler için mükemmeldir. Yerleşik [`ListTile`](https://api.flutter.dev/flutter/material/ListTile-class.html) widget'ı, öğelere görsel bir yapı kazandırmanın bir yoludur.

```dart
ListView(
  children: const <Widget>[
    ListTile(leading: Icon(Icons.map), title: Text('Map')),
    ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
    ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
  ],
),
```

<a id="list-interactive-example"></a>

## Etkileşimli örnek

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView(
          children: const <Widget>[
            ListTile(leading: Icon(Icons.map), title: Text('Map')),
            ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          ],
        ),
      ),
    );
  }
}
```

▶️ Canlı çalıştırmak için orijinal sayfadaki [DartPad penceresini](https://docs.flutter.dev/cookbook/lists/basic-list#interactive-example) kullanın.

<p align="center">
  <img src="gorseller/basic-list.png" alt="Çıktı" height="380">
  <br><sub><i>Çıktı</i></sub>
</p>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-02) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-04)

</div>

<a id="bolum-04"></a>

<div align="center">

<sub>BÖLÜM 04 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# ↔️ Yatay liste oluşturma

**Yatay bir listenin nasıl uygulanacağı.**

`Cookbook › Listeler (Lists) › Yatay liste oluşturma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/horizontal-list)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-03) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-05)

</div>

---

Dikey yerine yatay olarak kayan bir liste oluşturmak isteyebilirsiniz. [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) widget'ı yatay listeleri destekler.

Standart `ListView` yapıcısını (constructor) kullanın ve varsayılan dikey yönü geçersiz kılan yatay bir `scrollDirection` değeri geçirin.

```dart
ListView(
  scrollDirection: Axis.horizontal,
  children: [
    for (final color in Colors.primaries)
      Container(width: 160, color: color),
  ],
),
```

<a id="horizontal-interactive-example"></a>

## Etkileşimli örnek

```dart
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal list';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ScrollConfiguration(
            // Tüm cihazların listeyi sürükleyebilmesine
            // izin veren özel bir kaydırma davranışı ekleyin.
            behavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {...PointerDeviceKind.values},
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final color in Colors.primaries)
                  Container(width: 160, color: color),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

▶️ Canlı çalıştırmak için orijinal sayfadaki [DartPad penceresini](https://docs.flutter.dev/cookbook/lists/horizontal-list#interactive-example) kullanın.

<p align="center">
  <img src="gorseller/horizontal-list.webp" alt="Çıktı" height="380">
  <br><sub><i>Çıktı</i></sub>
</p>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-03) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-05)

</div>

<a id="bolum-05"></a>

<div align="center">

<sub>BÖLÜM 05 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# 🔲 Izgara listesi oluşturma

**Izgara listesinin nasıl uygulanacağı.**

`Cookbook › Listeler (Lists) › Izgara listesi oluşturma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/grid-lists)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-04) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-06)

</div>

---

Bazı durumlarda, öğelerinizi birbirini takip eden normal bir öğe listesi yerine bir ızgara (grid) olarak görüntülemek isteyebilirsiniz. Bu görev için [`GridView`](https://api.flutter.dev/flutter/widgets/GridView-class.html) widget'ını kullanın.

Izgaraları kullanmaya başlamanın en basit yolu, [`GridView.count()`](https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html) yapıcısını (constructor) kullanmaktır; çünkü kaç satır veya sütun istediğinizi belirtmenize olanak tanır.

`GridView`'ın nasıl çalıştığını görselleştirmek için, listedeki indekslerini (index) görüntüleyen 100 widget'lık bir liste oluşturun.

```dart
GridView.count(
  // 2 sütunlu bir ızgara oluşturun.
  // scrollDirection değerini yatay olarak değiştirirseniz,
  // bu, 2 satır oluşturur.
  crossAxisCount: 2,
  // Listedeki indekslerini görüntüleyen 100 widget oluşturun.
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        style: TextTheme.of(context).headlineSmall,
      ),
    );
  }),
),
```

<a id="grid-interactive-example"></a>

## Etkileşimli örnek

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: GridView.count(
          // 2 sütunlu bir ızgara oluşturun.
          // scrollDirection değerini yatay olarak değiştirirseniz,
          // bu, 2 satır oluşturur.
          crossAxisCount: 2,
          // Listedeki indekslerini görüntüleyen 100 widget oluşturun.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: TextTheme.of(context).headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}
```

▶️ Canlı çalıştırmak için orijinal sayfadaki [DartPad penceresini](https://docs.flutter.dev/cookbook/lists/grid-lists#interactive-example) kullanın.

<p align="center">
  <img src="gorseller/grid-list.webp" alt="Çıktı" height="380">
  <br><sub><i>Çıktı</i></sub>
</p>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-04) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-06)

</div>

<a id="bolum-06"></a>

<div align="center">

<sub>BÖLÜM 06 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# 🧩 Farklı öğe türlerine sahip listeler oluşturma

**Farklı türde varlıklar (assets) içeren bir listenin nasıl uygulanacağı.**

`Cookbook › Listeler (Lists) › Farklı öğe türlerine sahip listeler oluşturma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/mixed-list)  ·  🗓️ 05.05.2026  ·  `Flutter 3.44.7`

[⬅️ Önceki bölüm](#bolum-05) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-07)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [1. Farklı öğe türlerine sahip bir veri kaynağı oluşturma](#mixed-1-create-a-data-source-with-different-types-of-items)
  - [Öğe türleri](#mixed-types-of-items)
  - [Öğelerden oluşan bir liste oluşturma](#mixed-create-a-list-of-items)
- [2. Veri kaynağını bir widget listesine dönüştürme](#mixed-2-convert-the-data-source-into-a-list-of-widgets)
- [Etkileşimli örnek](#mixed-interactive-example)

</details>

Farklı türde içerikler görüntüleyen listeler oluşturmanız gerekebilir. Örneğin; bir başlık, ardından bu başlıkla ilgili birkaç öğe, ardından başka bir başlık ve bu şekilde devam eden bir liste üzerinde çalışıyor olabilirsiniz.

Flutter ile böyle bir yapıyı şu şekilde oluşturabilirsiniz:

1. Farklı öğe türlerine sahip bir veri kaynağı (data source) oluşturun.
2. Veri kaynağını bir widget listesine dönüştürün.

<a id="mixed-1-create-a-data-source-with-different-types-of-items"></a>

## 1. Farklı öğe türlerine sahip bir veri kaynağı oluşturma

<a id="mixed-types-of-items"></a>

### Öğe türleri

Bir listedeki farklı öğe türlerini temsil etmek için, her öğe türü için bir sınıf tanımlayın.

Bu örnekte, bir başlık ve ardından beş mesaj gösteren bir uygulama oluşturun. Bu nedenle üç sınıf oluşturun: `ListItem`, `HeadingItem` ve `MessageItem`.

```dart
/// Listenin içerebileceği farklı öğe türleri için temel sınıf.
abstract class ListItem {
  /// Bir liste öğesinde gösterilecek başlık satırı.
  Widget buildTitle(BuildContext context);

  /// Bir liste öğesinde gösterilecek alt başlık satırı (varsa).
  Widget buildSubtitle(BuildContext context);
}

/// Bir başlığı görüntülemek için gereken veriyi içeren bir ListItem.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(heading, style: Theme.of(context).textTheme.headlineSmall);
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// Bir mesajı görüntülemek için gereken veriyi içeren bir ListItem.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
```

<a id="mixed-create-a-list-of-items"></a>

### Öğelerden oluşan bir liste oluşturma

Çoğu zaman veriyi internetten veya yerel bir veritabanından alır ve bu veriyi bir öğe listesine dönüştürürsünüz.

Bu örnek için, üzerinde çalışılacak bir öğe listesi oluşturun. Liste, bir başlık ve ardından beş mesaj içerir. Her mesaj 3 türden birine sahiptir: `ListItem`, `HeadingItem` veya `MessageItem`.

```dart
final items = List<ListItem>.generate(
  1000,
  (i) => i % 6 == 0
      ? HeadingItem('Heading $i')
      : MessageItem('Sender $i', 'Message body $i'),
);
```

<a id="mixed-2-convert-the-data-source-into-a-list-of-widgets"></a>

## 2. Veri kaynağını bir widget listesine dönüştürme

Her öğeyi bir widget'a dönüştürmek için [`ListView.builder()`](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) yapıcısını (constructor) kullanın.

Genel olarak, ne tür bir öğeyle uğraştığınızı kontrol eden ve o öğe türü için uygun widget'ı döndüren bir oluşturucu fonksiyonu (builder function) sağlayın.

```dart
ListView.builder(
  // ListView'a kaç öğe oluşturması gerektiğini bildirin.
  itemCount: items.length,
  // Bir builder fonksiyonu sağlayın. Sihir burada gerçekleşir.
  // Her öğeyi, türüne göre bir widget'a dönüştürün.
  itemBuilder: (context, index) {
    final item = items[index];

    return ListTile(
      title: item.buildTitle(context),
      subtitle: item.buildSubtitle(context),
    );
  },
)
```

<a id="mixed-interactive-example"></a>

## Etkileşimli örnek

Örneğin tam kodu:

<details>
<summary><b>📄 Kodun tamamını göster</b> <sub>(84 satır)</sub></summary>

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<ListItem>.generate(
        1000,
        (i) => i % 6 == 0
            ? HeadingItem('Heading $i')
            : MessageItem('Sender $i', 'Message body $i'),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView.builder(
          // ListView'a kaç öğe oluşturması gerektiğini bildirin.
          itemCount: items.length,
          // Bir builder fonksiyonu sağlayın. Sihir burada gerçekleşir.
          // Her öğeyi, türüne göre bir widget'a dönüştürün.
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        ),
      ),
    );
  }
}

/// Listenin içerebileceği farklı öğe türleri için temel sınıf.
abstract class ListItem {
  /// Bir liste öğesinde gösterilecek başlık satırı.
  Widget buildTitle(BuildContext context);

  /// Bir liste öğesinde gösterilecek alt başlık satırı (varsa).
  Widget buildSubtitle(BuildContext context);
}

/// Bir başlığı görüntülemek için gereken veriyi içeren bir ListItem.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(heading, style: Theme.of(context).textTheme.headlineSmall);
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// Bir mesajı görüntülemek için gereken veriyi içeren bir ListItem.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
```

</details>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-05) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-07)

</div>

<a id="bolum-07"></a>

<div align="center">

<sub>BÖLÜM 07 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# 📏 Aralıklı öğelerle liste

**Aralıklı veya genişletilmiş öğelerle bir liste nasıl oluşturulur.**

`Cookbook › Listeler (Lists) › Aralıklı öğelerle liste`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/spaced-items)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-06) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-08)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [1. `SingleChildScrollView` ile bir `LayoutBuilder` ekleme](#spaced-1-add-a-layoutbuilder-with-a-singlechildscrollview)
- [2. `SingleChildScrollView`'ın içine bir `ConstrainedBox` ekleme](#spaced-2-add-a-constrainedbox-inside-the-singlechildscrollview)
- [3. Aralıklı öğelerle bir `Column` oluşturma](#spaced-3-create-a-column-with-spaced-items)
- [Etkileşimli örnek](#spaced-interactive-example)

</details>

Belki de tüm liste öğelerinin eşit aralıklarla yerleştirildiği ve öğelerin görünür alanı kapladığı bir liste oluşturmak istiyorsunuzdur. Örneğin, aşağıdaki görseldeki dört öğe eşit aralıklıdır; "Item 0" en üstte, "Item 3" ise en alttadır.

<p align="center">
  <img src="gorseller/spaced-items-1.png" alt="Aralıklı öğeler (Spaced items)" height="380">
  <br><sub><i>Aralıklı öğeler (Spaced items)</i></sub>
</p>

Aynı zamanda, öğe listesi sığmadığında kullanıcıların listeyi kaydırabilmesine izin vermek isteyebilirsiniz; örneğin cihaz çok küçük olduğunda, kullanıcı bir pencereyi yeniden boyutlandırdığında veya öğe sayısı ekran boyutunu aştığında.

<p align="center">
  <img src="gorseller/spaced-items-2.png" alt="Kaydırılabilir öğeler (Scrollable items)" height="380">
  <br><sub><i>Kaydırılabilir öğeler (Scrollable items)</i></sub>
</p>

Genellikle widget'lar arasındaki boşluğu ayarlamak için [`Spacer`](https://api.flutter.dev/flutter/widgets/Spacer-class.html)'ı, bir widget'ı kullanılabilir alanı dolduracak şekilde genişletmek için ise [`Expanded`](https://api.flutter.dev/flutter/widgets/Expanded-class.html)'ı kullanırsınız. Ancak bu çözümler kaydırılabilir widget'ların içinde mümkün değildir, çünkü sonlu bir yükseklik kısıtlaması (finite height constraint) gerektirirler.

Bu tarif, yeterli alan olduğunda liste öğelerini eşit aralıklarla yerleştirmek ve yeterli alan olmadığında kullanıcıların kaydırabilmesini sağlamak için [`LayoutBuilder`](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html) ve [`ConstrainedBox`](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html)'ın nasıl kullanılacağını şu adımlarla gösterir:

1. [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) ile bir [`LayoutBuilder`](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html) ekleyin.
2. [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)'ın içine bir [`ConstrainedBox`](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) ekleyin.
3. Aralıklı öğelere sahip bir [`Column`](https://api.flutter.dev/flutter/widgets/Column-class.html) oluşturun.

<a id="spaced-1-add-a-layoutbuilder-with-a-singlechildscrollview"></a>

## 1. `SingleChildScrollView` ile bir `LayoutBuilder` ekleme

Önce bir [`LayoutBuilder`](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html) oluşturarak başlayın. İki parametreli bir `builder` geri çağırma fonksiyonu (callback) sağlamanız gerekir:

1. [`LayoutBuilder`](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html) tarafından sağlanan [`BuildContext`](https://api.flutter.dev/flutter/widgets/BuildContext-class.html).
2. Üst widget'ın (parent) [`BoxConstraints`](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html) değeri.

Bu tarifte `BuildContext`'i kullanmayacaksınız, ancak bir sonraki adımda `BoxConstraints`'e ihtiyacınız olacak.

`builder` fonksiyonunun içinde bir [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html) döndürün. Bu widget, üst kapsayıcı çok küçük olsa bile alt widget'ın kaydırılabilmesini sağlar.

```dart
LayoutBuilder(
  builder: (context, constraints) {
    return SingleChildScrollView(child: Placeholder());
  },
);
```

<a id="spaced-2-add-a-constrainedbox-inside-the-singlechildscrollview"></a>

## 2. `SingleChildScrollView`'ın içine bir `ConstrainedBox` ekleme

Bu adımda, [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)'ın alt widget'ı olarak bir [`ConstrainedBox`](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) ekleyin.

`ConstrainedBox` widget'ı, alt widget'ına ek kısıtlamalar uygular.

`minHeight` parametresini `LayoutBuilder` kısıtlamalarının `maxHeight` değerine ayarlayarak kısıtlamayı yapılandırın.

Bu, alt widget'ın en az `LayoutBuilder` kısıtlamalarının sağladığı kullanılabilir alana, yani `BoxConstraints`'in azami yüksekliğine eşit bir yüksekliğe sahip olmasını sağlar.

```dart
LayoutBuilder(
  builder: (context, constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: Placeholder(),
      ),
    );
  },
);
```

Ancak `maxHeight` parametresini ayarlamazsınız, çünkü öğeler ekrana sığmazsa alt widget'ın `LayoutBuilder` boyutundan büyük olmasına izin vermeniz gerekir.

<a id="spaced-3-create-a-column-with-spaced-items"></a>

## 3. Aralıklı öğelerle bir `Column` oluşturma

Son olarak, [`ConstrainedBox`](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html)'ın alt widget'ı olarak bir [`Column`](https://api.flutter.dev/flutter/widgets/Column-class.html) ekleyin.

Öğeleri eşit aralıklarla yerleştirmek için `mainAxisAlignment` değerini `MainAxisAlignment.spaceBetween` olarak ayarlayın.

```dart
LayoutBuilder(
  builder: (context, constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItemWidget(text: 'Item 1'),
            ItemWidget(text: 'Item 2'),
            ItemWidget(text: 'Item 3'),
          ],
        ),
      ),
    );
  },
);
```

Alternatif olarak, öğeler arasındaki boşluğu ayarlamak için [`Spacer`](https://api.flutter.dev/flutter/widgets/Spacer-class.html) widget'ını veya bir widget'ın diğerlerinden daha fazla alan kaplamasını istiyorsanız [`Expanded`](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget'ını kullanabilirsiniz.

Bunun için [`Column`](https://api.flutter.dev/flutter/widgets/Column-class.html)'u, `Column` widget'ını sonsuza kadar genişlemek yerine en küçük yüksekliğe göre boyutlandırmaya zorlayan bir [`IntrinsicHeight`](https://api.flutter.dev/flutter/widgets/IntrinsicHeight-class.html) widget'ı ile sarmalamanız gerekir.

```dart
LayoutBuilder(
  builder: (context, constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: IntrinsicHeight(
          child: Column(
            children: [
              ItemWidget(text: 'Item 1'),
              Spacer(),
              ItemWidget(text: 'Item 2'),
              Expanded(child: ItemWidget(text: 'Item 3')),
            ],
          ),
        ),
      ),
    );
  },
);
```

> 💡 **İpucu**

<a id="spaced-interactive-example"></a>

## Etkileşimli örnek

Bu örnek, bir sütun içinde eşit aralıklarla yerleştirilmiş bir öğe listesi gösterir. Öğeler ekrana sığmadığında liste yukarı ve aşağı kaydırılabilir. Öğe sayısı `items` değişkeniyle tanımlanır; öğelerin ekrana sığmadığı durumda ne olduğunu görmek için bu değeri değiştirin.

<details>
<summary><b>📄 Örnek kodun tamamı</b> <sub>(53 satır)</sub></summary>

```dart
import 'package:flutter/material.dart';

void main() => runApp(const SpacedItemsList());

class SpacedItemsList extends StatelessWidget {
  const SpacedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = 4;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: CardThemeData(color: Colors.blue.shade50),
      ),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    items,
                    (index) => ItemWidget(text: 'Item $index'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(height: 100, child: Center(child: Text(text))),
    );
  }
}
```

</details>

▶️ Canlı çalıştırmak için orijinal sayfadaki [DartPad penceresini](https://docs.flutter.dev/cookbook/lists/spaced-items#interactive-example) kullanın.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-06) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-08)

</div>

<a id="bolum-08"></a>

<div align="center">

<sub>BÖLÜM 08 / 19  ·  📋 COOKBOOK · LISTELER</sub>

# ♾️ Uzun listelerle çalışma

**Uzun veya sonsuz bir liste uygulamak için ListView.builder'ı kullanın.**

`Cookbook › Listeler (Lists) › Uzun listelerle çalışma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/lists/long-lists)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-07) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-09)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [1. Bir veri kaynağı oluşturma](#long-1-create-a-data-source)
- [2. Veri kaynağını widget'lara dönüştürme](#long-2-convert-the-data-source-into-widgets)
- [Etkileşimli örnek](#long-interactive-example)
- [Alt widget'ların boyutu (Children's extent)](#long-childrens-extent)

</details>

Standart [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) yapıcısı (constructor) küçük listeler için iyi çalışır. Çok sayıda öğe içeren listelerle çalışmak için [`ListView.builder`](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) yapıcısını kullanmak en iyisidir.

Tüm öğelerin aynı anda oluşturulmasını gerektiren varsayılan `ListView` yapıcısının aksine, `ListView.builder()` yapıcısı öğeleri ekrana kaydırıldıkça oluşturur.

<a id="long-1-create-a-data-source"></a>

## 1. Bir veri kaynağı oluşturma

Önce bir veri kaynağına (data source) ihtiyacınız var. Örneğin veri kaynağınız bir mesaj listesi, arama sonuçları veya bir mağazadaki ürünler olabilir. Çoğu zaman bu veri internetten veya bir veritabanından gelir.

Bu örnek için, [`List.generate`](https://api.flutter.dev/flutter/dart-core/List/List.generate.html) yapıcısını kullanarak 10.000 `String`'lik bir liste oluşturun.

```dart
List<String>.generate(10000, (i) => 'Item $i'),
```

<a id="long-2-convert-the-data-source-into-widgets"></a>

## 2. Veri kaynağını widget'lara dönüştürme

String listesini görüntülemek için, `ListView.builder()` kullanarak her `String`'i bir widget olarak render edin. Bu örnekte her `String`'i kendi satırında görüntüleyin.

```dart
ListView.builder(
  itemCount: items.length,
  prototypeItem: ListTile(title: Text(items.first)),
  itemBuilder: (context, index) {
    return ListTile(title: Text(items[index]));
  },
)
```

<a id="long-interactive-example"></a>

## Etkileşimli örnek

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(title: Text(items.first)),
          itemBuilder: (context, index) {
            return ListTile(title: Text(items[index]));
          },
        ),
      ),
    );
  }
}
```

▶️ Canlı çalıştırmak için orijinal sayfadaki [DartPad penceresini](https://docs.flutter.dev/cookbook/lists/long-lists#interactive-example) kullanın.

<p align="center">
  <img src="gorseller/long-lists.webp" alt="Çıktı" height="380">
  <br><sub><i>Çıktı</i></sub>
</p>

<a id="long-childrens-extent"></a>

## Alt widget'ların boyutu (Children's extent)

Her öğenin boyutunu (extent) belirtmek için [`prototypeItem`](https://api.flutter.dev/flutter/widgets/ListView/prototypeItem.html), [`itemExtent`](https://api.flutter.dev/flutter/widgets/ListView/itemExtent.html) veya [`itemExtentBuilder`](https://api.flutter.dev/flutter/widgets/ListView/itemExtentBuilder.html)'dan birini kullanabilirsiniz.

Bunlardan birini belirtmek, alt widget'ların kendi boyutunu belirlemesine izin vermekten daha verimlidir; çünkü kaydırma mekanizması, alt widget'ların boyutunu önceden bilmesinden yararlanarak, örneğin kaydırma konumu çarpıcı biçimde değiştiğinde, iş yükünden tasarruf edebilir.

Listenizde sabit boyutlu öğeler varsa `prototypeItem` veya `itemExtent` kullanın.

Listenizde farklı boyutlarda öğeler varsa `itemExtentBuilder` kullanın.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-07) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-09)

</div>

<a id="bolum-09"></a>

<div align="center">

<sub>BÖLÜM 09 / 19  ·  📜 KAYDIRMA VE EFEKTLER</sub>

# 📜 Kaydırma (Scrolling)

**Flutter'ın kaydırma desteğine genel bakış.**

`UI › Yerleşim düzeni (Layout) › Kaydırma (Scrolling)`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/layout/scrolling)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-08) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-10)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Temel kaydırma (Basic scrolling)](#scrolling-basic-scrolling)
  - [Sonsuz kaydırma (Infinite scrolling)](#scrolling-infinite-scrolling)
  - [Özelleşmiş kaydırılabilir widget'lar](#scrolling-specialized-scrollable-widgets)
- [Gösterişli kaydırma (Fancy scrolling)](#scrolling-fancy-scrolling)
- [İç içe kaydırılabilir widget'lar (Nested scrolling widgets)](#scrolling-nested-scrolling-widgets)

</details>

Flutter'ın otomatik olarak kayan birçok yerleşik widget'ı vardır ve belirli kaydırma davranışları oluşturmak için özelleştirebileceğiniz çeşitli widget'lar da sunar.

<a id="scrolling-basic-scrolling"></a>

## Temel kaydırma (Basic scrolling)

Birçok Flutter widget'ı kaydırmayı kutudan çıktığı gibi destekler ve işin çoğunu sizin yerinize yapar. Örneğin [`SingleChildScrollView`](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html), gerektiğinde alt widget'ını otomatik olarak kaydırır. Diğer kullanışlı widget'lar arasında [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) ve [`GridView`](https://api.flutter.dev/flutter/widgets/GridView-class.html) bulunur. Bu widget'ların daha fazlasına, Widget kataloğunun [kaydırma sayfasından](https://docs.flutter.dev/ui/widgets/scrolling) (scrolling page) göz atabilirsiniz.

▶️ **Video:** [Scrollbar \| Flutter widget of the week](https://www.youtube.com/watch/DbkIQSvwnZc) <sub>· YouTube'da açılır</sub>

▶️ **Video:** [ListView \| Flutter widget of the week](https://www.youtube.com/watch/KJpkjHGiI5A) <sub>· YouTube'da açılır</sub>

<a id="scrolling-infinite-scrolling"></a>

### Sonsuz kaydırma (Infinite scrolling)

`ListView` veya `GridView` içinde uzun bir öğe listeniz olduğunda (*sonsuz* bir liste dahil), öğeleri ekrana kaydırıldıkça isteğe bağlı olarak (on demand) oluşturabilirsiniz. Bu, çok daha performanslı bir kaydırma deneyimi sağlar. Daha fazla bilgi için [`ListView.builder`](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) veya [`GridView.builder`](https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html)'a göz atın.

<a id="scrolling-specialized-scrollable-widgets"></a>

### Özelleşmiş kaydırılabilir widget'lar

Aşağıdaki widget'lar daha belirli kaydırma davranışları sağlar.

[`DraggableScrollableSheet`](https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html) kullanımına dair bir video:

▶️ **Video:** [DraggableScrollableSheet \| Flutter widget of the week](https://www.youtube.com/watch/Hgw819mL_78) <sub>· YouTube'da açılır</sub>

Kaydırılabilir alanı [`ListWheelScrollView`](https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html) ile bir çarka dönüştürün!

▶️ **Video:** [ListWheelScrollView \| Flutter widget of the week](https://www.youtube.com/watch/dUhmWAz4C7Y) <sub>· YouTube'da açılır</sub>

<a id="scrolling-fancy-scrolling"></a>

## Gösterişli kaydırma (Fancy scrolling)

Belki *esnek* (elastic) kaydırma, diğer adıyla *kaydırma sıçraması* (scroll bouncing) uygulamak istiyorsunuzdur. Ya da paralaks kaydırma gibi başka dinamik kaydırma efektleri uygulamak isteyebilirsiniz. Veya küçülen ya da kaybolan gibi çok özel bir davranışa sahip, kaydırılan bir başlık isteyebilirsiniz.

Tüm bunları ve daha fazlasını Flutter'ın `Sliver*` sınıflarını kullanarak yapabilirsiniz. *Sliver*, kaydırılabilir alanın bir parçasını ifade eder. Bir sliver tanımlayıp bir [`CustomScrollView`](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) içine ekleyerek o alan üzerinde daha ayrıntılı kontrol sağlayabilirsiniz.

Daha fazla bilgi için [Gösterişli kaydırma elde etmek için sliver kullanma](#bolum-10) (Using slivers to achieve fancy scrolling) ve [Sliver sınıfları](https://docs.flutter.dev/ui/widgets/layout#sliver-widgets) sayfalarına bakın.

<a id="scrolling-nested-scrolling-widgets"></a>

## İç içe kaydırılabilir widget'lar (Nested scrolling widgets)

Kaydırma performansına zarar vermeden bir kaydırılabilir widget'ı başka bir kaydırılabilir widget'ın içine nasıl yerleştirirsiniz? `ShrinkWrap` özelliğini `true` olarak mı ayarlarsınız, yoksa bir sliver mı kullanırsınız?

"ShrinkWrap vs Slivers" videosuna göz atın:

▶️ **Video:** [ShrinkWrap vs Slivers \| Decoding Flutter](https://www.youtube.com/watch/LUqDNnv_dh0) <sub>· YouTube'da açılır</sub>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-08) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-10)

</div>

<a id="bolum-10"></a>

<div align="center">

<sub>BÖLÜM 10 / 19  ·  📜 KAYDIRMA VE EFEKTLER</sub>

# 🌀 Gösterişli kaydırma elde etmek için sliver kullanma

**Flutter'da esnek (elastic) kaydırma gibi gösterişli kaydırma efektlerini uygulamak için sliver kullanımı hakkında bilgiyi nerede bulabileceğiniz.**

`UI › Yerleşim düzeni (Layout) › Kaydırma (Scrolling) › Sliver kullanma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/layout/scrolling/slivers)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-09) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-11)

</div>

---

Sliver, kaydırılabilir bir alanın, özel bir şekilde davranacak biçimde tanımlayabileceğiniz bir parçasıdır. Esnek kaydırma gibi özel kaydırma efektleri elde etmek için sliver'ları kullanabilirsiniz.

DartPad kullanan, ücretsiz ve eğitmen eşliğinde bir video atölyesi için, sliver kullanımına dair aşağıdaki videoya göz atın.

▶️ **Video:** [Building scrolling experiences in Flutter](https://www.youtube.com/watch/YY-_yrZdjGc) <sub>· YouTube'da açılır</sub>

<a id="slivers-resources"></a>

## Kaynaklar

Flutter'da gösterişli kaydırma efektlerini uygulama hakkında daha fazla bilgi için aşağıdaki kaynaklara bakın:

**[Slivers, Demystified](https://blog.flutter.dev/slivers-demystified-6ff68ab0296f)**  
Sliver sınıflarını kullanarak özel kaydırmanın nasıl uygulanacağını açıklayan bir Flutter blog yazısı.

**[SliverAppBar](https://www.youtube.com/watch?v=R9C5KMJKluE)**  
`SliverAppBar` widget'ına genel bir bakış sunan, bir dakikalık bir Widget-of-the-week videosu.

▶️ **Video:** [SliverAppBar \| Flutter widget of the week](https://www.youtube.com/watch/R9C5KMJKluE) <sub>· YouTube'da açılır</sub>

**[SliverList and SliverGrid](https://www.youtube.com/watch?v=ORiTTaVY6mM)**  
`SliverList` ve `SliverGrid` widget'larına genel bir bakış sunan, bir dakikalık bir Widget-of-the-week videosu.

▶️ **Video:** [SliverList & SliverGrid \| Flutter widget of the week](https://www.youtube.com/watch/ORiTTaVY6mM) <sub>· YouTube'da açılır</sub>

**[Slivers explained - Making dynamic layouts](https://www.youtube.com/watch?v=Mz3kHQxBjGg)**  
Flutter'ın Teknik Lideri Ian Hickson ile Filip Hracek'in sliver'ların gücünü tartıştığı, [The Boring Show](https://www.youtube.com/playlist?list=PLOU2XLYxmsIK0r_D-zWcmJ1plIcDNnRkK)'un 50 dakikalık bir bölümü.

▶️ **Video:** [Slivers explained - Making dynamic layouts](https://www.youtube.com/watch/Mz3kHQxBjGg) <sub>· YouTube'da açılır</sub>

<a id="slivers-api-docs"></a>

## API dokümanları

Kullanılabilir sliver API'leri hakkında daha fazla bilgi edinmek için şu ilgili API dokümanlarına göz atın:

-   [`CustomScrollView`](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)
-   [`SliverAppBar`](https://pub.dev/documentation/material_ui/latest/material_ui/SliverAppBar-class.html)
-   [`SliverGrid`](https://api.flutter.dev/flutter/widgets/SliverGrid-class.html)
-   [`SliverList`](https://api.flutter.dev/flutter/widgets/SliverList-class.html)

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-09) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-11)

</div>

<a id="bolum-11"></a>

<div align="center">

<sub>BÖLÜM 11 / 19  ·  📜 KAYDIRMA VE EFEKTLER</sub>

# 🏔️ Kaydırmalı paralaks efekti oluşturma

**Kaydırmalı bir paralaks efektinin nasıl uygulanacağı.**

`Cookbook › Efektler (Effects) › Kaydırmalı paralaks efekti oluşturma`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/cookbook/effects/parallax-scrolling)  ·  🗓️ 24.08.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-10) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-12)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Paralaks öğelerini tutacak bir liste oluşturma](#parallax-create-a-list-to-hold-the-parallax-items)
- [Metin ve statik resim içeren öğeleri görüntüleme](#parallax-display-items-with-text-and-a-static-image)
- [Paralaks efektini uygulama](#parallax-implement-the-parallax-effect)
- [Etkileşimli örnek](#parallax-interactive-example)

</details>

Bir uygulamada (örneğin resim içeren) bir kart listesini kaydırdığınızda, bu resimlerin ekranın geri kalanından daha yavaş kaydığını fark edebilirsiniz. Neredeyse listedeki kartlar ön plandaymış, resimlerin kendisi ise uzak bir arka plandaymış gibi görünür. Bu efekte *paralaks* (parallax) denir.

Bu tarifte, paralaks efektini yuvarlatılmış köşeli ve içinde biraz metin bulunan kartlardan oluşan bir liste oluşturarak yaratırsınız. Her kart ayrıca bir resim içerir. Kartlar ekranda yukarı kaydıkça, her kartın içindeki resimler aşağı kayar.

Aşağıdaki animasyon uygulamanın davranışını gösterir:

<p align="center">
  <img src="gorseller/parallax.png" alt="Paralaks kaydırma (Parallax scrolling)" height="380">
  <br><sub><i>Paralaks kaydırma (Parallax scrolling)</i></sub>
</p>

<a id="parallax-create-a-list-to-hold-the-parallax-items"></a>

## Paralaks öğelerini tutacak bir liste oluşturma

Paralaks kaydırmalı resimlerden oluşan bir liste görüntülemek için önce bir liste görüntülemeniz gerekir.

`ParallaxRecipe` adında yeni bir stateless widget oluşturun. `ParallaxRecipe` içinde, bir liste oluşturan bir `SingleChildScrollView` ve bir `Column` içeren bir widget ağacı kurun.

```dart
class ParallaxRecipe extends StatelessWidget {
  const ParallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: Column(children: []));
  }
}
```

<a id="parallax-display-items-with-text-and-a-static-image"></a>

## Metin ve statik resim içeren öğeleri görüntüleme

Her liste öğesi, dünyadaki yedi konumdan birini temsil eden, yuvarlatılmış dikdörtgen biçiminde bir arka plan resmi görüntüler. Bu arka plan resminin üzerine, sol alt köşede konumlandırılmış olarak konumun adı ve ülkesi yerleştirilir. Arka plan resmi ile metin arasında, metnin arka plana karşı okunabilirliğini artıran koyu bir gradyan (gradient) bulunur.

Yukarıda bahsedilen görsellerden oluşan `LocationListItem` adında bir stateless widget uygulayın. Şimdilik arka plan için statik bir `Image` widget'ı kullanın. Daha sonra bu widget'ı paralaks sürümüyle değiştireceksiniz.

<details>
<summary><b>📄 Kodun tamamını göster</b> <sub>(77 satır)</sub></summary>

```dart
@immutable
class LocationListItem extends StatelessWidget {
  const LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.country,
  });

  final String imageUrl;
  final String name;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Positioned.fill(child: Image.network(imageUrl, fit: BoxFit.cover));
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
```

</details>

Sonra, liste öğelerini `ParallaxRecipe` widget'ınıza ekleyin.

```dart
class ParallaxRecipe extends StatelessWidget {
  const ParallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            ),
        ],
      ),
    );
  }
}
```

Artık dünyadaki yedi benzersiz konumu görüntüleyen, tipik, kaydırılabilir bir kart listeniz var. Bir sonraki adımda arka plan resmine paralaks efekti ekleyeceksiniz.

<a id="parallax-implement-the-parallax-effect"></a>

## Paralaks efektini uygulama

Paralaks kaydırma efekti, arka plan resmini listenin geri kalanına göre ters yöne doğru hafifçe iterek elde edilir. Liste öğeleri ekranda yukarı kaydıkça her arka plan resmi hafifçe aşağı kayar. Tersine, liste öğeleri ekranda aşağı kaydıkça her arka plan resmi hafifçe yukarı kayar. Görsel olarak bu, paralaks ile sonuçlanır.

Paralaks efekti, liste öğesinin üst (ancestor) `Scrollable` içindeki mevcut konumuna bağlıdır. Liste öğesinin kaydırma konumu değiştikçe, liste öğesinin arka plan resminin konumu da değişmelidir. Bu, çözülmesi ilginç bir problemdir. Bir liste öğesinin `Scrollable` içindeki konumu, Flutter'ın yerleşim (layout) aşaması tamamlanana kadar kullanılamaz. Bu, arka plan resminin konumunun, yerleşim aşamasından sonra gelen boyama (paint) aşamasında belirlenmesi gerektiği anlamına gelir. Neyse ki Flutter, bir alt widget'ın dönüşümü (transform) üzerinde, widget boyanmadan hemen önce kontrol sağlamak için özel olarak tasarlanmış `Flow` adında bir widget sağlar. Başka bir deyişle, boyama aşamasını yakalayabilir ve alt widget'larınızı istediğiniz gibi yeniden konumlandırmak için kontrolü ele alabilirsiniz.

> ℹ️ **Not**
>
> Daha fazla bilgi için `Flow` widget'ı hakkındaki şu kısa Widget of the Week videosuna göz atın:
>
> ▶️ **Video:** [Flow \| Flutter widget of the week](https://www.youtube.com/watch/NG6pvXpnIso) <sub>· YouTube'da açılır</sub>

> ℹ️ **Not**

Arka plan `Image` widget'ınızı bir [`Flow`](https://api.flutter.dev/flutter/widgets/Flow-class.html) widget'ı ile sarmalayın.

```dart
Widget _buildParallaxBackground(BuildContext context) {
  return Flow(
    children: [Image.network(imageUrl, fit: BoxFit.cover)],
  );
}
```

`ParallaxFlowDelegate` adında yeni bir `FlowDelegate` tanıtın.

```dart
Widget _buildParallaxBackground(BuildContext context) {
  return Flow(
    delegate: ParallaxFlowDelegate(),
    children: [Image.network(imageUrl, fit: BoxFit.cover)],
  );
}
```

```dart
class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate();

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    // TODO: Bunu daha sonra genişleteceğiz.
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: Bunu daha sonra genişleteceğiz.
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: Bunu daha sonra genişleteceğiz.
    return true;
  }
}
```

Bir `FlowDelegate`, alt widget'larının nasıl boyutlandırılacağını ve bu alt widget'ların nerede boyanacağını kontrol eder. Bu durumda `Flow` widget'ınızın yalnızca bir alt widget'ı vardır: arka plan resmi. Bu resim, `Flow` widget'ı ile tam olarak aynı genişlikte olmalıdır.

Arka plan resmi alt widget'ınız için sıkı genişlik kısıtlamaları (tight width constraints) döndürün.

```dart
@override
BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
  return BoxConstraints.tightFor(width: constraints.maxWidth);
}
```

Arka plan resimleriniz artık uygun şekilde boyutlandırıldı, ancak her arka plan resminin dikey konumunu kaydırma konumuna göre hesaplamanız ve ardından boyamanız hâlâ gerekiyor.

Bir arka plan resminin istenen konumunu hesaplamak için ihtiyaç duyduğunuz üç kritik bilgi var:

-   Üst `Scrollable`'ın sınırları (bounds)
-   Tek tek liste öğesinin sınırları
-   Resmin, liste öğesine sığacak şekilde küçültüldükten sonraki boyutu

`Scrollable`'ın sınırlarını bulmak için `FlowDelegate`'inize bir `ScrollableState` geçirirsiniz.

Tek tek liste öğenizin sınırlarını bulmak için liste öğenizin `BuildContext`'ini `FlowDelegate`'inize geçirin.

Arka plan resminizin nihai boyutunu bulmak için `Image` widget'ınıza bir `GlobalKey` atayın ve ardından bu `GlobalKey`'i `FlowDelegate`'inize geçirin.

Bu bilgiyi `ParallaxFlowDelegate` için kullanılabilir hâle getirin.

```dart
@immutable
class LocationListItem extends StatelessWidget {
  final GlobalKey _backgroundImageKey = GlobalKey();

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(imageUrl, key: _backgroundImageKey, fit: BoxFit.cover),
      ],
    );
  }
}
```

```dart
class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  });

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;
}
```

Paralaks kaydırmayı uygulamak için gereken tüm bilgiye sahip olduğunuza göre, `shouldRepaint()` metodunu uygulayın.

```dart
@override
bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
  return scrollable != oldDelegate.scrollable ||
      listItemContext != oldDelegate.listItemContext ||
      backgroundImageKey != oldDelegate.backgroundImageKey;
}
```

Şimdi paralaks efekti için yerleşim hesaplamalarını uygulayın.

Önce, bir liste öğesinin üst `Scrollable` içindeki piksel konumunu hesaplayın.

```dart
@override
void paintChildren(FlowPaintingContext context) {
  // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
  final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
  final listItemBox = listItemContext.findRenderObject() as RenderBox;
  final listItemOffset = listItemBox.localToGlobal(
    listItemBox.size.centerLeft(Offset.zero),
    ancestor: scrollableBox,
  );
}
```

Liste öğesinin piksel konumunu kullanarak, `Scrollable`'ın üstüne göre yüzdesini hesaplayın. Kaydırılabilir alanın en üstündeki bir liste öğesi %0, kaydırılabilir alanın en altındaki bir liste öğesi ise %100 üretmelidir.

```dart
@override
void paintChildren(FlowPaintingContext context) {
  // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
  final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
  final listItemBox = listItemContext.findRenderObject() as RenderBox;
  final listItemOffset = listItemBox.localToGlobal(
    listItemBox.size.centerLeft(Offset.zero),
    ancestor: scrollableBox,
  );

  // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
  // belirleyin.
  final viewportDimension = scrollable.position.viewportDimension;
  final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
    0.0,
    1.0,
  );
  // ···
}
```

Kaydırma yüzdesini kullanarak bir [`Alignment`](https://api.flutter.dev/flutter/painting/Alignment-class.html) hesaplayın. %0'da `Alignment(0.0, -1.0)`, %100'de ise `Alignment(0.0, 1.0)` istersiniz. Bu koordinatlar sırasıyla üst ve alt hizalamaya karşılık gelir.

```dart
@override
void paintChildren(FlowPaintingContext context) {
  // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
  final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
  final listItemBox = listItemContext.findRenderObject() as RenderBox;
  final listItemOffset = listItemBox.localToGlobal(
    listItemBox.size.centerLeft(Offset.zero),
    ancestor: scrollableBox,
  );

  // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
  // belirleyin.
  final viewportDimension = scrollable.position.viewportDimension;
  final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
    0.0,
    1.0,
  );

  // Kaydırma yüzdesine göre arka planın dikey hizalamasını
  // hesaplayın.
  final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);
}
```

`verticalAlignment`'ı, liste öğesinin boyutu ve arka plan resminin boyutuyla birlikte kullanarak, arka plan resminin nereye konumlandırılacağını belirleyen bir `Rect` üretin.

```dart
@override
void paintChildren(FlowPaintingContext context) {
  // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
  final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
  final listItemBox = listItemContext.findRenderObject() as RenderBox;
  final listItemOffset = listItemBox.localToGlobal(
    listItemBox.size.centerLeft(Offset.zero),
    ancestor: scrollableBox,
  );

  // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
  // belirleyin.
  final viewportDimension = scrollable.position.viewportDimension;
  final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
    0.0,
    1.0,
  );

  // Kaydırma yüzdesine göre arka planın dikey hizalamasını
  // hesaplayın.
  final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

  // Arka plan hizalamasını, boyama amacıyla piksel ofsetine dönüştürün.
  final backgroundSize =
      (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
          .size;
  final listItemSize = context.size;
  final childRect = verticalAlignment.inscribe(
    backgroundSize,
    Offset.zero & listItemSize,
  );
}
```

`childRect`'i kullanarak, arka plan resmini istenen öteleme dönüşümüyle (translation transformation) boyayın. Paralaks efektini veren şey, bu dönüşümün zaman içindeki değişimidir.

```dart
@override
void paintChildren(FlowPaintingContext context) {
  // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
  final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
  final listItemBox = listItemContext.findRenderObject() as RenderBox;
  final listItemOffset = listItemBox.localToGlobal(
    listItemBox.size.centerLeft(Offset.zero),
    ancestor: scrollableBox,
  );

  // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
  // belirleyin.
  final viewportDimension = scrollable.position.viewportDimension;
  final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
    0.0,
    1.0,
  );

  // Kaydırma yüzdesine göre arka planın dikey hizalamasını
  // hesaplayın.
  final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

  // Arka plan hizalamasını, boyama amacıyla piksel ofsetine dönüştürün.
  final backgroundSize =
      (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
          .size;
  final listItemSize = context.size;
  final childRect = verticalAlignment.inscribe(
    backgroundSize,
    Offset.zero & listItemSize,
  );

  // Arka planı boyayın.
  context.paintChild(
    0,
    transform: Transform.translate(offset: Offset(0.0, childRect.top))
        .transform,
  );
}
```

Paralaks efektini elde etmek için son bir ayrıntıya ihtiyacınız var. `ParallaxFlowDelegate`, girdiler değiştiğinde yeniden boyanır, ancak kaydırma konumu her değiştiğinde yeniden boyanmaz.

`FlowDelegate`'in [`ScrollPosition`](https://api.flutter.dev/flutter/widgets/ScrollPosition-class.html) her değiştiğinde yeniden boyanması için, `ScrollableState`'in `ScrollPosition`'ını `FlowDelegate` üst sınıfına geçirin.

```dart
class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);
```

Tebrikler! Artık paralaks efektli, arka plan resimleri kayan bir kart listeniz var.

<a id="parallax-interactive-example"></a>

## Etkileşimli örnek

Uygulamayı çalıştırın:

-   Paralaks efektini gözlemlemek için yukarı ve aşağı kaydırın.

Örneğin tam kodu:

<details>
<summary><b>📄 Kodun tamamını göster</b> <sub>(358 satır)</sub></summary>

```dart
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: Center(child: ExampleParallax())),
    );
  }
}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations)
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place,
            ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.country,
  });

  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(imageUrl, key: _backgroundImageKey, fit: BoxFit.cover),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Bu liste öğesinin görünüm alanı (viewport) içindeki konumunu hesaplayın.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
    // belirleyin.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
      0.0,
      1.0,
    );

    // Kaydırma yüzdesine göre arka planın dikey hizalamasını
    // hesaplayın.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Arka plan hizalamasını, boyama amacıyla piksel ofsetine dönüştürün.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect = verticalAlignment.inscribe(
      backgroundSize,
      Offset.zero & listItemSize,
    );

    // Arka planı boyayın.
    context.paintChild(
      0,
      transform: Transform.translate(offset: Offset(0.0, childRect.top))
          .transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({super.key, required Widget background})
    : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderParallax renderObject,
  ) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({required this._scrollable});

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    // Arka planı, kullanılabilir tüm genişliği kaplamaya zorlayın ve
    // ardından yüksekliğini resmin en-boy oranına göre ölçekleyin.
    final background = child!;
    final backgroundImageConstraints = BoxConstraints.tightFor(
      width: size.width,
    );
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    // Arka planın yerel ofsetini, yani sıfırı ayarlayın.
    (background.parentData as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Kaydırılabilir alanın boyutunu alın.
    final viewportDimension = scrollable.position.viewportDimension;

    // Bu liste öğesinin genel (global) konumunu hesaplayın.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final backgroundOffset = localToGlobal(
      size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    // Bu liste öğesinin kaydırılabilir alan içindeki yüzde konumunu
    // belirleyin.
    final scrollFraction = (backgroundOffset.dy / viewportDimension).clamp(
      0.0,
      1.0,
    );

    // Kaydırma yüzdesine göre arka planın dikey hizalamasını
    // hesaplayın.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Arka plan hizalamasını, boyama amacıyla piksel ofsetine dönüştürün.
    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect = verticalAlignment.inscribe(
      backgroundSize,
      Offset.zero & listItemSize,
    );

    // Arka planı boyayın.
    context.paintChild(
      background,
      (background.parentData as ParallaxParentData).offset +
          offset +
          Offset(0.0, childRect.top),
    );
  }
}

class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}

const urlPrefix =
    'https://docs.flutter.dev/assets/images/exercise/effects/parallax';

const locations = [
  Location(
    name: 'Mount Rushmore',
    place: 'U.S.A',
    imageUrl: '$urlPrefix/01-mount-rushmore.jpg',
  ),
  Location(
    name: 'Gardens By The Bay',
    place: 'Singapore',
    imageUrl: '$urlPrefix/02-singapore.jpg',
  ),
  Location(
    name: 'Machu Picchu',
    place: 'Peru',
    imageUrl: '$urlPrefix/03-machu-picchu.jpg',
  ),
  Location(
    name: 'Vitznau',
    place: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  Location(
    name: 'Bali',
    place: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  Location(
    name: 'Mexico City',
    place: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  Location(name: 'Cairo', place: 'Egypt', imageUrl: '$urlPrefix/07-cairo.jpg'),
];
```

</details>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-10) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-12)

</div>

<a id="bolum-12"></a>

<div align="center">

<sub>BÖLÜM 12 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 📱 Flutter'da uyarlanabilir ve duyarlı tasarım

**Mobil veya web için olsun, boyut ve yön değişikliklerine yanıt veren ve her platformdan en iyi şekilde yararlanan bir uygulama oluşturmak önemlidir.**

`UI › Uyarlanabilir tasarım (Adaptive design)`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-11) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-13)

</div>

---

<p align="center">
  <img src="gorseller/platforms.png" alt="Desteklenen platformların listesi" width="720">
  <br><sub><i>Desteklenen platformların listesi</i></sub>
</p>

Flutter'ın temel hedeflerinden biri, herhangi bir platformda harika görünen ve harika hissettiren uygulamaları tek bir kod tabanından geliştirmenize olanak tanıyan bir çatı (framework) oluşturmaktır.

Bu, uygulamanızın bir saatten iki ekranlı katlanabilir bir telefona ve yüksek çözünürlüklü bir monitöre kadar birçok farklı boyuttaki ekranda görünebileceği anlamına gelir. Girdi aygıtınız ise fiziksel veya sanal bir klavye, fare, dokunmatik ekran ya da başka birçok aygıt olabilir.

Bu tasarım kavramlarını tanımlayan iki terim *uyarlanabilir* (adaptive) ve *duyarlı* (responsive) terimleridir. İdeal olarak uygulamanızın *her ikisi* de olmasını istersiniz, peki bu tam olarak ne anlama gelir?

<a id="adaptive-what-is-responsive-vs-adaptive"></a>

## Duyarlı ve uyarlanabilir nedir?

Bunu düşünmenin kolay bir yolu şudur: duyarlı tasarım, arayüzü alana *sığdırmakla*; uyarlanabilir tasarım ise arayüzün o alanda *kullanılabilir* olmasıyla ilgilidir.

Dolayısıyla duyarlı bir uygulama, tasarım öğelerinin yerleşimini kullanılabilir alana *sığacak* şekilde ayarlar. Uyarlanabilir bir uygulama ise kullanılabilir alanda *kullanılabilir* olmak için uygun yerleşimi ve girdi aygıtlarını seçer. Örneğin, bir tablet arayüzü alt gezinme (bottom navigation) mi yoksa yan panel gezinmesi (side-panel navigation) mi kullanmalı?

> ℹ️ **Not**

Bu bölüm, uyarlanabilir ve duyarlı tasarımın çeşitli yönlerini kapsar:

-   [Genel yaklaşım](#bolum-13) (General approach)
-   [SafeArea & MediaQuery](#bolum-14)
-   [Büyük ekranlar ve katlanabilir cihazlar](#bolum-15) (Large screens & foldables)
-   [Kullanıcı girdisi ve erişilebilirlik](#bolum-16) (User input & accessibility)
-   [Yetenekler ve politikalar](https://docs.flutter.dev/ui/adaptive-responsive/capabilities) (Capabilities & policies)
-   [Uyarlanabilir uygulamalar için en iyi uygulamalar](#bolum-18) (Best practices for adaptive apps)
-   [Ek kaynaklar](#bolum-19) (Additional resources)

> ℹ️ **Not**
>
> ▶️ **Video:** [How to build adaptive UI with Flutter](https://www.youtube.com/watch/LeKLGzpsz9I) <sub>· YouTube'da açılır</sub>

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-11) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-13)

</div>

<a id="bolum-13"></a>

<div align="center">

<sub>BÖLÜM 13 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 🧭 Uyarlanabilir uygulamalara genel yaklaşım

**Flutter uygulamanızı uyarlanabilir hâle getirmeye nasıl yaklaşacağınıza dair genel tavsiyeler.**

`UI › Uyarlanabilir tasarım (Adaptive design) › Genel yaklaşım`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/general)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-12) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-14)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Adım 1: Soyutlama (Abstract)](#general-step-1-abstract)
- [Adım 2: Ölçme (Measure)](#general-step-2-measure)
  - [MediaQuery](#general-mediaquery)
  - [LayoutBuilder](#general-layoutbuilder)
- [Adım 3: Dallandırma (Branch)](#general-step-3-branch)

</details>

Peki, geleneksel mobil cihazlar için tasarlanmış bir uygulamayı, geniş bir cihaz yelpazesinde harika görünecek hâle *nasıl* getirirsiniz? Hangi adımlar gereklidir?

Büyük uygulamalarda tam olarak bunu yapma deneyimi olan Google mühendisleri, aşağıdaki 3 adımlı yaklaşımı öneriyor.

<a id="general-step-1-abstract"></a>

## Adım 1: Soyutlama (Abstract)

<p align="center">
  <img src="gorseller/abstract.png" alt="Adım 1: Herhangi bir UI widget&#x27;ında ortak olan bilgiyi soyutlayın" width="720">
  <br><sub><i>Adım 1: Herhangi bir UI widget&#x27;ında ortak olan bilgiyi soyutlayın</i></sub>
</p>

Önce, dinamik hâle getirmeyi planladığınız widget'ları belirleyin. Bu widget'ların yapıcılarını (constructor) analiz edin ve paylaşabileceğiniz veriyi soyutlayın.

Uyarlanabilirlik gerektiren yaygın widget'lar şunlardır:

-   Hem tam ekran hem de modal iletişim kutuları (dialog)
-   Hem gezinme rayı (rail) hem de alt çubuk (bottom bar) şeklindeki gezinme arayüzü
-   "Arayüz alanı daha uzun mu yoksa daha geniş mi?" gibi özel yerleşimler

Örneğin bir `Dialog` widget'ında, iletişim kutusunun *içeriğini* barındıran bilgiyi paylaşabilirsiniz.

Ya da uygulama penceresi küçükken bir `NavigationBar`, pencere büyükken ise bir `NavigationRail` arasında geçiş yapmak istiyor olabilirsiniz. Bu widget'lar büyük olasılıkla gezinilebilir hedeflerin (destination) bir listesini paylaşır. Bu durumda, bu bilgiyi tutmak için bir `Destination` widget'ı oluşturabilir ve `Destination`'ı hem bir ikon hem de bir metin etiketine sahip olarak belirleyebilirsiniz.

Sonra, arayüzünüzü nasıl göstereceğinize karar vermek için ekran boyutunuzu değerlendireceksiniz.

<a id="general-step-2-measure"></a>

## Adım 2: Ölçme (Measure)

<p align="center">
  <img src="gorseller/measure.png" alt="Adım 2: Ekran boyutu nasıl ölçülür" width="720">
  <br><sub><i>Adım 2: Ekran boyutu nasıl ölçülür</i></sub>
</p>

Görüntüleme alanınızın boyutunu belirlemenin iki yolu vardır: `MediaQuery` ve `LayoutBuilder`.

<a id="general-mediaquery"></a>

### MediaQuery

Geçmişte, cihaz ekranının boyutunu belirlemek için `MediaQuery.of` kullanmış olabilirsiniz. Ancak günümüzün cihazları çok çeşitli boyut ve şekillerde ekranlara sahiptir ve bu test yanıltıcı olabilir.

Örneğin, uygulamanız şu anda büyük bir ekranda küçük bir pencere kaplıyor olabilir. `MediaQuery.of` metodunu kullanıp ekranın küçük olduğu sonucuna varırsanız (oysa uygulama aslında büyük bir ekranda küçük bir pencerede görüntüleniyor) ve uygulamanızı dikey (portrait) yönde kilitlediyseniz, bu uygulamanın penceresinin ekranın ortasına kilitlenip etrafının siyahla çevrelenmesine yol açar. Bu, büyük bir ekranda pek de ideal bir arayüz değildir.

> ℹ️ **Not**

`MediaQuery.sizeOf`'un, tek bir widget'ın değil, uygulamanın ekranının tamamının mevcut boyutunu döndürdüğünü unutmayın.

Ekran alanınızı ölçmenin iki yolu vardır. Tüm uygulama penceresinin boyutunu mu yoksa daha yerel bir boyutlandırmayı mı istediğinize bağlı olarak `MediaQuery.sizeOf` veya `LayoutBuilder` kullanabilirsiniz.

Uygulama penceresi küçük olsa bile widget'ınızın tam ekran olmasını istiyorsanız, arayüzü uygulama penceresinin kendi boyutuna göre seçebilmek için `MediaQuery.sizeOf` kullanın. Önceki bölümde, boyutlandırma davranışını uygulamanın tüm penceresine göre belirlemek istediğiniz için `MediaQuery.sizeOf` kullanırdınız.

**Neden `MediaQuery.of` yerine `MediaQuery.sizeOf` kullanılmalı?**

Önceki tavsiye, uygulama penceresinin boyutlarını elde etmek için `MediaQuery`'nin `of` metodunu kullanmanızı öneriyordu. Bu tavsiye neden değişti? Kısa cevap: **performans nedenleriyle.**

`MediaQuery` çok sayıda veri içerir, ancak yalnızca `size` özelliğiyle ilgileniyorsanız `sizeOf` metodunu kullanmak daha verimlidir. Her iki metot da uygulama penceresinin boyutunu mantıksal piksel (logical pixel) cinsinden, diğer adıyla *yoğunluktan bağımsız piksel* (density independent pixel) cinsinden döndürür. Mantıksal piksel boyutları, tüm cihazlarda kabaca aynı görsel boyutta olduğu için genellikle en iyi sonucu verir. `MediaQuery` sınıfı, aynı nedenle her bir özelliği için ayrı özelleşmiş fonksiyonlara sahiptir.

Uygulama penceresinin boyutunu `build` metodunun içinden `MediaQuery.sizeOf(context)` şeklinde istemek, boyut özelliği her değiştiğinde verilen `BuildContext`'in yeniden oluşturulmasına (rebuild) neden olur.

<a id="general-layoutbuilder"></a>

### LayoutBuilder

`LayoutBuilder`, bazı farklarla `MediaQuery.sizeOf` ile benzer bir amaca hizmet eder.

Uygulamanın penceresinin boyutunu sağlamak yerine `LayoutBuilder`, üst `Widget`'tan (parent) gelen yerleşim kısıtlamalarını (layout constraints) sağlar. Bu, `LayoutBuilder`'ı eklediğiniz widget ağacındaki belirli konuma göre boyut bilgisi elde ettiğiniz anlamına gelir. Ayrıca `LayoutBuilder`, bir `Size` nesnesi yerine bir `BoxConstraints` nesnesi döndürür; böylece içerik için yalnızca sabit bir boyut değil, geçerli genişlik ve yükseklik aralıklarını (en az ve en çok) elde edersiniz. Bu, özel widget'lar için faydalı olabilir.

Örneğin, boyutlandırmanın genel olarak uygulama penceresine değil, o widget'a özel olarak verilen alana dayanmasını istediğiniz özel bir widget düşünün. Bu senaryoda `LayoutBuilder` kullanın.

<a id="general-step-3-branch"></a>

## Adım 3: Dallandırma (Branch)

<p align="center">
  <img src="gorseller/branch.png" alt="Adım 3: Kodu istenen arayüze göre dallandırın" width="720">
  <br><sub><i>Adım 3: Kodu istenen arayüze göre dallandırın</i></sub>
</p>

Bu noktada, hangi arayüz sürümünü göstereceğinizi seçerken hangi boyut kesme noktalarını (breakpoint) kullanacağınıza karar vermelisiniz. Örneğin [Material yerleşim](https://m3.material.io/foundations/layout/applying-layout/window-size-classes) yönergeleri, 600 mantıksal pikselden dar pencereler için alt gezinme çubuğu, 600 piksel veya daha geniş pencereler için ise gezinme rayı (nav rail) kullanılmasını önerir. Yine, seçiminiz cihazın *türüne* değil, cihazın mevcut pencere boyutuna dayanmalıdır.

`NavigationRail` ve `NavigationBar` arasında geçiş yapan bir örnek üzerinde çalışmak için [Building an animated responsive app layout with Material 3](https://codelabs.developers.google.com/codelabs/flutter-animated-responsive-layout) kod laboratuvarına (codelab) göz atın.

Sonraki sayfa, uygulamanızın büyük ekranlarda ve katlanabilir cihazlarda en iyi şekilde görünmesinin nasıl sağlanacağını ele alır.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-12) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-14)

</div>

<a id="bolum-14"></a>

<div align="center">

<sub>BÖLÜM 14 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 🛡️ SafeArea ve MediaQuery

**Uyarlanabilir bir uygulama oluşturmak için SafeArea ve MediaQuery'nin nasıl kullanılacağını öğrenin.**

`UI › Uyarlanabilir tasarım (Adaptive design) › SafeArea ve MediaQuery`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/safearea-mediaquery)  ·  🗓️ 05.05.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-13) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-15)

</div>

---

Bu sayfa, `SafeArea` ve `MediaQuery` widget'larının nasıl ve ne zaman kullanılacağını ele alır.

<a id="safearea-safearea"></a>

## SafeArea

Uygulamanızı en yeni cihazlarda çalıştırırken, arayüzün bazı bölümlerinin cihaz ekranındaki girintiler (cutout) tarafından engellendiğini görebilirsiniz. Bunu, alt widget'ını girintiler (çentikler ve kamera boşlukları gibi), işletim sistemi arayüzü (Android'deki durum çubuğu gibi) veya fiziksel ekranın yuvarlatılmış köşeleri tarafından engellenmekten kurtaracak şekilde içeri iten [`SafeArea`](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget'ı ile çözebilirsiniz.

Bu davranışı istemiyorsanız, `SafeArea` widget'ı dört kenarından herhangi birindeki iç boşluğu (padding) devre dışı bırakmanıza olanak tanır. Varsayılan olarak dört kenarın tamamı etkindir.

Başlangıç için bir `Scaffold` widget'ının gövdesini (body) `SafeArea` ile sarmalamak genellikle önerilir, ancak onu `Widget` ağacında her zaman bu kadar yukarıya koymanız gerekmez.

Örneğin, uygulamanızın bilerek girintilerin altına uzanmasını istiyorsanız, `SafeArea`'yı mantıklı olan içeriği sarmalayacak şekilde taşıyabilir ve uygulamanın geri kalanının tam ekranı kaplamasına izin verebilirsiniz.

`SafeArea` kullanmak, uygulama içeriğinizin fiziksel ekran özellikleri veya işletim sistemi arayüzü tarafından kesilmeyeceğinden emin olmanızı sağlar ve farklı şekil ve stillerde girintilere sahip yeni cihazlar piyasaya girse bile uygulamanızı başarıya hazırlar.

`SafeArea` bu kadar çok işi nasıl küçük bir kodla yapar? Perde arkasında `MediaQuery` nesnesini kullanır.

<a id="safearea-mediaquery"></a>

## MediaQuery

[SafeArea](#safearea-safearea) bölümünde tartışıldığı gibi, `MediaQuery` uyarlanabilir uygulamalar oluşturmak için güçlü bir widget'tır. Bazen `MediaQuery`'yi doğrudan, bazen de perde arkasında `MediaQuery` kullanan `SafeArea`'yı kullanırsınız.

`MediaQuery`, uygulamanın mevcut pencere boyutu dahil birçok bilgi sağlar. Yüksek kontrast modu ve metin ölçekleme gibi erişilebilirlik ayarlarını veya kullanıcının TalkBack ya da VoiceOver gibi bir erişilebilirlik hizmeti kullanıp kullanmadığını da sunar. `MediaQuery` ayrıca cihazınızın ekranının menteşe veya kıvrım (fold) gibi özelliklerine dair bilgi de içerir.

`SafeArea`, alt `Widget`'ını ne kadar içeri iteceğini belirlemek için `MediaQuery`'den gelen veriyi kullanır. Özellikle, temelde ekranın sistem arayüzü, ekran çentikleri veya durum çubuğu tarafından kısmen örtülen miktarı olan `MediaQuery` `padding` özelliğini kullanır.

Peki, neden doğrudan `MediaQuery` kullanmayalım?

Cevap, `SafeArea`'nın, onu ham `MediaQueryData` yerine kullanmayı avantajlı kılan akıllıca bir şey yapmasıdır. Özellikle `SafeArea`'nın alt widget'larına sunulan `MediaQuery`'yi, `SafeArea`'ya eklenen iç boşluk yokmuş gibi görünecek şekilde değiştirir. Bu, `SafeArea`'ları iç içe yerleştirebileceğiniz ve çentiklerden ve sistem arayüzünden kaçınmak için gereken iç boşluğu yalnızca en üsttekinin uygulayacağı anlamına gelir.

Uygulamanız büyüdükçe ve widget'ları yerlerinden oynattıkça, birden fazla `SafeArea`'nız varsa çok fazla iç boşluk uygulanmasından endişelenmeniz gerekmez; oysa `MediaQueryData.padding`'i doğrudan kullanırsanız sorunlarla karşılaşırsınız.

Bir `Scaffold` widget'ının gövdesini bir `SafeArea` ile sarmalayabilirsiniz, ancak onu widget ağacında bu kadar yukarıya koymak *zorunda* değilsiniz. `SafeArea`'nın yalnızca, daha önce bahsedilen donanım özellikleri tarafından kesildiğinde bilgi kaybına yol açacak içeriği sarmalaması yeterlidir.

Örneğin, uygulamanızın bilerek girintilerin altına uzanmasını istiyorsanız, `SafeArea`'yı mantıklı olan içeriği sarmalayacak şekilde taşıyabilir ve uygulamanın geri kalanının tam ekranı kaplamasına izin verebilirsiniz. Bir yan not olarak, `AppBar` widget'ının varsayılan olarak yaptığı şey budur; bu yüzden sistem durum çubuğunun altına girer. Bu aynı zamanda, tüm `Scaffold`'u sarmalamak yerine `Scaffold`'un gövdesini bir `SafeArea` içine almanın önerilmesinin nedenidir.

`SafeArea`, uygulama içeriğinizin genel bir şekilde kesilmeyeceğinden emin olmanızı sağlar ve farklı şekil ve stillerde girintilere sahip yeni cihazlar piyasaya girse bile uygulamanızı başarıya hazırlar.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-13) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-15)

</div>

<a id="bolum-15"></a>

<div align="center">

<sub>BÖLÜM 15 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 🖥️ Büyük ekranlı cihazlar

**Uygulamaları büyük ekranlara uyarlarken akılda tutulması gerekenler.**

`UI › Uyarlanabilir tasarım (Adaptive design) › Büyük ekranlar`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/large-screens)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-14) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-16)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [GridView ile yerleşim düzeni (Layout with GridView)](#large-layout-with-gridview)
  - [GridView](#large-gridview)
  - [Diğer çözümler](#large-other-solutions)
- [Katlanabilir cihazlar (Foldables)](#large-foldables)
- [Uyarlanabilir girdi (Adaptive input)](#large-adaptive-input)
  - [Gezinme (Navigation)](#large-navigation)

</details>

Bu sayfa, uygulamanızın büyük ekranlardaki davranışını iyileştirmek için optimizasyon rehberliği sunar.

Flutter, Android gibi, [büyük ekranları](https://developer.android.com/guide/topics/large-screens/get-started-with-large-screens) tabletler, katlanabilir cihazlar (foldable) ve Android çalıştıran ChromeOS cihazları olarak tanımlar. Flutter *ayrıca* büyük ekranlı cihazları web, masaüstü ve iPad'ler olarak da tanımlar.

Büyük ekranlar neden özellikle önemli?

Büyük ekranlara olan talep artmaya devam ediyor. Ocak 2024 itibarıyla [270 milyondan fazla aktif büyük ekranlı](https://developer.android.com/guide/topics/large-screens/get-started-with-large-screens) ve katlanabilir cihaz Android üzerinde çalışıyor ve [14,9 milyondan fazla iPad kullanıcısı](https://www.statista.com/statistics/299632/tablet-shipments-apple/) bulunuyor.

Uygulamanız büyük ekranları desteklediğinde başka faydalar da elde eder. Uygulamanızı ekranı dolduracak şekilde optimize etmek, örneğin:

-   Uygulamanızın kullanıcı etkileşimi (engagement) metriklerini iyileştirir.
-   Uygulamanızın Play Store'daki görünürlüğünü artırır. Son [Play Store güncellemeleri](https://developer.android.com/2022/03/helping-users-discover-quality-apps-on.html), cihaz türüne göre puanları gösteriyor ve bir uygulamada büyük ekran desteği olmadığında bunu belirtiyor.
-   Uygulamanızın iPadOS gönderim yönergelerini karşıladığından ve [App Store'da kabul edildiğinden](https://developer.apple.com/ipados/submit/) emin olmanızı sağlar.

<a id="large-layout-with-gridview"></a>

## GridView ile yerleşim düzeni (Layout with GridView)

Bir uygulamanın aşağıdaki ekran görüntülerini düşünün. Uygulama arayüzünü bir `ListView` içinde gösteriyor. Soldaki görsel uygulamanın bir mobil cihazda çalışmasını gösteriyor. Sağdaki görsel ise uygulamanın, *bu sayfadaki tavsiyeler uygulanmadan önce* büyük ekranlı bir cihazda çalışmasını gösteriyor.

<p align="center">
  <img src="gorseller/largescreen.png" alt="Büyük ekran örneği" width="720">
  <br><sub><i>Büyük ekran örneği</i></sub>
</p>

Bu ideal değil.

[Android Büyük Ekran Uygulama Kalitesi Yönergeleri](https://developer.android.com/docs/quality-guidelines/large-screen-app-quality) ve [iOS karşılığı](https://developer.apple.com/design/human-interface-guidelines/designing-for-ipados), ne metnin ne de kutuların ekran genişliğinin tamamını kaplamaması gerektiğini söyler. Bunu uyarlanabilir bir şekilde nasıl çözersiniz?

Yaygın bir çözüm, sonraki bölümde gösterildiği gibi `GridView` kullanır.

<a id="large-gridview"></a>

### GridView

Mevcut `ListView`'ınızı daha makul boyutlu öğelere dönüştürmek için `GridView` widget'ını kullanabilirsiniz.

`GridView`, [`ListView`](https://api.flutter.dev/flutter/widgets/ListView-class.html) widget'ına benzer, ancak yalnızca doğrusal olarak düzenlenmiş bir widget listesini yönetmek yerine, `GridView` widget'ları iki boyutlu bir dizi (array) içinde düzenleyebilir.

`GridView` ayrıca `ListView`'a benzer yapıcılara sahiptir. `ListView` varsayılan yapıcısı `GridView.count`'a, `ListView.builder` ise `GridView.builder`'a karşılık gelir.

`GridView`, daha özel yerleşimler için bazı ek yapıcılara sahiptir. Daha fazla bilgi için [`GridView`](https://api.flutter.dev/flutter/widgets/GridView-class.html) API sayfasını ziyaret edin.

Örneğin, orijinal uygulamanız bir `ListView.builder` kullanıyorsa, onu `GridView.builder` ile değiştirin. Uygulamanızda çok sayıda öğe varsa, yalnızca gerçekten görünür olan öğe widget'larını oluşturmak için bu builder yapıcısını kullanmanız önerilir.

Yapıcıdaki parametrelerin çoğu iki widget arasında aynıdır, bu nedenle bu değişim basittir. Ancak `gridDelegate` için neyi ayarlayacağınızı belirlemeniz gerekir.

Flutter, kullanabileceğiniz güçlü hazır `gridDelegates` sunar; bunlar:

- [`SliverGridDelegateWithFixedCrossAxisCount`](https://api.flutter.dev/flutter/rendering/SliverGridDelegateWithFixedCrossAxisCount-class.html) — Izgaranıza belirli sayıda sütun atamanıza olanak tanır.

- [`SliverGridDelegateWithMaxCrossAxisExtent`](https://api.flutter.dev/flutter/rendering/SliverGridDelegateWithMaxCrossAxisExtent-class.html) — Azami öğe genişliğini tanımlamanıza olanak tanır.

Sütun sayısını doğrudan ayarlamanıza olanak tanıyan bu sınıfların ızgara delegesini (grid delegate) kullanıp ardından sütun sayısını cihazın tablet olup olmadığına veya benzeri bir şeye göre sabit kodlamayın. Sütun sayısı, fiziksel cihazın boyutuna değil pencerenin boyutuna dayanmalıdır.

Bu ayrım önemlidir, çünkü birçok mobil cihaz çoklu pencere modunu destekler; bu da uygulamanızın ekranın fiziksel boyutundan daha küçük bir alanda render edilmesine neden olabilir. Ayrıca Flutter uygulamaları, birçok farklı şekilde boyutlandırılabilen web ve masaüstünde çalışabilir. **Bu nedenle, fiziksel cihaz boyutu yerine uygulama penceresi boyutunu almak için `MediaQuery` kullanın.**

<a id="large-other-solutions"></a>

### Diğer çözümler

Bu durumlara yaklaşmanın bir başka yolu, `BoxConstraints`'in `maxWidth` özelliğini kullanmaktır. Bu şunları içerir:

-   `GridView`'ı bir `ConstrainedBox` içine sarın ve ona azami genişliği ayarlanmış bir `BoxConstraints` verin.
-   Arka plan rengi ayarlamak gibi başka işlevler istiyorsanız `ConstrainedBox` yerine bir `Container` kullanın.

Azami genişlik değerini seçerken, Material 3'ün [Applying layout](https://m3.material.io/foundations/layout/applying-layout/window-size-classes) kılavuzunda önerdiği değerleri kullanmayı düşünün.

<a id="large-foldables"></a>

## Katlanabilir cihazlar (Foldables)

Daha önce belirtildiği gibi, Android ve Flutter tasarım rehberliklerinde ekran yönünü **kilitlememenizi** önerir, ancak bazı uygulamalar yine de ekran yönünü kilitler. Bunun, uygulamanızı katlanabilir bir cihazda çalıştırırken sorunlara yol açabileceğini unutmayın.

Katlanabilir bir cihazda çalışırken, cihaz katlıyken uygulama iyi görünebilir. Ancak katı açtığınızda uygulamanın letterbox'lı (siyah şeritlerle çevrili) göründüğünü fark edebilirsiniz.

[SafeArea ve MediaQuery](#bolum-14) sayfasında açıklandığı gibi, letterboxing, uygulamanın penceresinin ekranın ortasına kilitlenmesi ve pencerenin siyahla çevrelenmesi anlamına gelir.

Bu neden olabilir?

Bu, uygulamanızın pencere boyutunu belirlemek için `MediaQuery` kullanıldığında olabilir. Cihaz katlıyken yön, dikey (portrait) moda kısıtlanır. Perde arkasında `setPreferredOrientations`, Android'in bir dikey uyumluluk modu kullanmasına neden olur ve uygulama letterbox'lı bir durumda görüntülenir. Letterbox'lı durumda `MediaQuery`, arayüzün genişlemesine izin verecek daha büyük pencere boyutunu hiçbir zaman almaz.

Bunu iki yoldan biriyle çözebilirsiniz:

-   Tüm yönleri destekleyin.
-   *Fiziksel ekranın* boyutlarını kullanın. Aslında bu, pencere boyutlarını değil de fiziksel ekran boyutlarını kullanacağınız *birkaç* durumdan biridir.

Fiziksel ekran boyutları nasıl elde edilir?

Fiziksel cihazın boyutunu, piksel oranını ve yenileme hızını içeren [`Display`](https://api.flutter.dev/flutter/dart-ui/Display-class.html) API'sini kullanabilirsiniz.

Aşağıdaki örnek kod bir `Display` nesnesi alır:

```dart
/// AppState nesnesi.
ui.FlutterView? _view;

@override
void didChangeDependencies() {
  super.didChangeDependencies();
  _view = View.maybeOf(context);
}

void didChangeMetrics() {
  final ui.Display? display = _view?.display;
}
```

Önemli olan, ilgilendiğiniz görünümün (view) ekranını bulmaktır. Bu, mevcut *ve* gelecekteki çoklu ekranlı ve çoklu görünümlü cihazları ele alması gereken, ileriye dönük bir API oluşturur.

<a id="large-adaptive-input"></a>

## Uyarlanabilir girdi (Adaptive input)

Daha fazla ekran için destek eklemek, girdi denetimlerini de genişletmek anlamına gelir.

Android yönergeleri, büyük formatlı cihaz desteğinin üç kademesini (tier) tanımlar.

<p align="center">
  <img src="gorseller/tiers.png" alt="Büyük formatlı cihaz desteğinin 3 kademesi" width="720">
  <br><sub><i>Büyük formatlı cihaz desteğinin 3 kademesi</i></sub>
</p>

Desteğin en düşük düzeyi olan Kademe 3, fare ve kalem (stylus) girdisi desteğini içerir ([Material 3 yönergeleri](https://developer.android.com/docs/quality-guidelines/large-screen-app-quality), [Apple yönergeleri](https://developer.apple.com/design/human-interface-guidelines/designing-for-ipados#Best-practices)).

Uygulamanız Material 3 ve onun düğmelerini ve seçicilerini kullanıyorsa, uygulamanızda çeşitli ek girdi durumları için yerleşik destek zaten vardır.

Peki ya özel bir widget'ınız varsa? [Widget'lar için girdi desteği](#input-custom-widgets) ekleme rehberliği için [Kullanıcı girdisi](#bolum-16) (User input) sayfasına göz atın.

<a id="large-navigation"></a>

### Gezinme (Navigation)

Gezinme, farklı boyutlardaki cihazlarla çalışırken kendine özgü zorluklar yaratabilir. Genellikle, kullanılabilir ekran alanına bağlı olarak bir [`BottomNavigationBar`](https://pub.dev/documentation/material_ui/latest/material_ui/BottomNavigationBar-class.html) ile bir [`NavigationRail`](https://pub.dev/documentation/material_ui/latest/material_ui/NavigationRail-class.html) arasında geçiş yapmak istersiniz.

Daha fazla bilgi (ve karşılık gelen örnek kod) için [Developing Flutter apps for Large screens](https://blog.flutter.dev/developing-flutter-apps-for-large-screens-53b7b0e17f10) makalesindeki [Problem: Navigation rail](https://blog.flutter.dev/developing-flutter-apps-for-large-screens-53b7b0e17f10#:~:text=Problem%3A%20Navigation%20rail1) bölümüne göz atın.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-14) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-16)

</div>

<a id="bolum-16"></a>

<div align="center">

<sub>BÖLÜM 16 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# ⌨️ Kullanıcı girdisi ve erişilebilirlik

**Gerçekten uyarlanabilir bir uygulama, kullanıcı girdisinin çalışma biçimindeki farklılıkları ve erişilebilirlik sorunu yaşayan kişilere yardımcı olan düzenlemeleri de ele alır.**

`UI › Uyarlanabilir tasarım (Adaptive design) › Kullanıcı girdisi ve erişilebilirlik`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/input)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-15) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-17)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Özel widget'lar için kaydırma tekerleği (Scroll wheel for custom widgets)](#input-scroll-wheel-for-custom-widgets)
- [Sekme ile gezinme ve odak etkileşimleri (Tab traversal and focus interactions)](#input-tab-traversal-and-focus-interactions)
  - [Gezinme sırasını kontrol etme (Controlling traversal order)](#input-controlling-traversal-order)
- [Klavye kısayolları (Keyboard accelerators)](#input-keyboard-accelerators)
- [Özel widget'lar için fare girişi, çıkışı ve üzerine gelme (Mouse enter, exit, and hover for custom widgets)](#input-custom-widgets)
- [Görsel yoğunluk (Visual density)](#input-visual-density)

</details>

Uygulamanızın yalnızca görünümünü uyarlamak yeterli değildir, çeşitli kullanıcı girdilerini de desteklemeniz gerekir. Fare ve klavye; kaydırma tekerleği (scroll wheel), sağ tıklama, üzerine gelme (hover) etkileşimleri, sekme ile gezinme (tab traversal) ve klavye kısayolları gibi, dokunmatik cihazlarda bulunmayan girdi türlerini getirir.

Bu özelliklerin bazıları Material widget'larında varsayılan olarak çalışır. Ancak özel bir widget oluşturduysanız, bunları doğrudan uygulamanız gerekebilir.

İyi tasarlanmış bir uygulamayı oluşturan bazı özellikler, yardımcı teknolojilerle çalışan kullanıcılara da yardımcı olur. Örneğin, **iyi uygulama tasarımı** olmalarının yanı sıra, sekme ile gezinme ve klavye kısayolları gibi bazı özellikler *yardımcı cihazlarla çalışan kullanıcılar için kritiktir*. [Erişilebilir uygulamalar oluşturmaya](https://docs.flutter.dev/ui/accessibility) dair standart tavsiyelere ek olarak, bu sayfa hem uyarlanabilir *hem de* erişilebilir uygulamalar oluşturmaya dair bilgileri kapsar.

<a id="input-scroll-wheel-for-custom-widgets"></a>

## Özel widget'lar için kaydırma tekerleği (Scroll wheel for custom widgets)

`ScrollView` veya `ListView` gibi kaydırma widget'ları kaydırma tekerleğini varsayılan olarak destekler ve neredeyse her kaydırılabilir özel widget bunlardan biri kullanılarak oluşturulduğundan, bunlarla da çalışır.

Özel kaydırma davranışı uygulamanız gerekiyorsa, arayüzünüzün kaydırma tekerleğine nasıl tepki vereceğini özelleştirmenizi sağlayan [`Listener`](https://api.flutter.dev/flutter/widgets/Listener-class.html) widget'ını kullanabilirsiniz.

```dart
return Listener(
  onPointerSignal: (event) {
    if (event is PointerScrollEvent) print(event.scrollDelta.dy);
  },
  child: ListView(),
);
```

<a id="input-tab-traversal-and-focus-interactions"></a>

## Sekme ile gezinme ve odak etkileşimleri (Tab traversal and focus interactions)

Fiziksel klavyesi olan kullanıcılar, bir uygulamada hızla gezinmek için sekme (tab) tuşunu kullanabileceklerini bekler; motor veya görme farklılıkları olan kullanıcılar ise çoğu zaman tamamen klavyeyle gezinmeye güvenir.

Sekme etkileşimleri için iki husus vardır: odağın widget'tan widget'a nasıl taşındığı (*traversal* olarak bilinir) ve bir widget odaklandığında gösterilen görsel vurgu.

Düğmeler ve metin alanları gibi yerleşik bileşenlerin çoğu, gezinmeyi ve vurguları varsayılan olarak destekler. Gezinmeye dahil edilmesini istediğiniz kendi widget'ınız varsa, kendi denetimlerinizi oluşturmak için [`FocusableActionDetector`](https://api.flutter.dev/flutter/widgets/FocusableActionDetector-class.html) widget'ını kullanabilirsiniz. [`FocusableActionDetector`](https://api.flutter.dev/flutter/widgets/FocusableActionDetector-class.html) widget'ı, odak, fare girdisi ve kısayolları tek bir widget'ta birleştirmek için faydalıdır. Eylemleri ve tuş atamalarını tanımlayan ve odak ile üzerine gelme vurgularını ele almak için geri çağırmalar (callback) sağlayan bir dedektör oluşturabilirsiniz.

```dart
class _BasicActionDetectorState extends State<BasicActionDetector> {
  bool _hasFocus = false;
  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onFocusChange: (value) => setState(() => _hasFocus = value),
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<Intent>(
          onInvoke: (intent) {
            print('Enter or Space was pressed!');
            return null;
          },
        ),
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const FlutterLogo(size: 100),
          // Güzel bir efekt için odağı negatif dış boşlukta konumlandırın
          if (_hasFocus)
            Positioned(
              left: -4,
              top: -4,
              bottom: -4,
              right: -4,
              child: _roundedBorder(),
            ),
        ],
      ),
    );
  }
}
```

<a id="input-controlling-traversal-order"></a>

### Gezinme sırasını kontrol etme (Controlling traversal order)

Kullanıcı sekme ile ilerlerken widget'lara odaklanma sırası üzerinde daha fazla kontrol için, sekme ile ilerlerken bir grup olarak ele alınması gereken ağaç bölümlerini tanımlamak üzere [`FocusTraversalGroup`](https://api.flutter.dev/flutter/widgets/FocusTraversalGroup-class.html) kullanabilirsiniz.

Örneğin, gönder düğmesine geçmeden önce bir formdaki tüm alanlar arasında sekme ile ilerlemek isteyebilirsiniz:

```dart
return Column(
  children: [
    FocusTraversalGroup(child: MyFormWithMultipleColumnsAndRows()),
    SubmitButton(),
  ],
);
```

Flutter, widget'ları ve grupları dolaşmak için varsayılan olarak `ReadingOrderTraversalPolicy` sınıfını kullanan birkaç yerleşik yola sahiptir. Bu sınıf genellikle iyi çalışır, ancak bunu başka bir önceden tanımlı `TraversalPolicy` sınıfıyla veya özel bir politika oluşturarak değiştirmek mümkündür.

<a id="input-keyboard-accelerators"></a>

## Klavye kısayolları (Keyboard accelerators)

Sekme ile gezinmeye ek olarak, masaüstü ve web kullanıcıları belirli eylemlere bağlı çeşitli klavye kısayollarına alışkındır. İster hızlı silme için `Delete` tuşu, ister yeni bir belge için `Control+N` olsun, kullanıcılarınızın beklediği farklı kısayolları dikkate aldığınızdan emin olun. Klavye güçlü bir girdi aracıdır, bu yüzden ondan mümkün olduğunca fazla verim almaya çalışın. Kullanıcılarınız bunu takdir edecektir!

Flutter'da klavye kısayolları, hedeflerinize bağlı olarak birkaç şekilde elde edilebilir.

`TextField` veya `Button` gibi zaten bir odak düğümüne (focus node) sahip tek bir widget'ınız varsa, onu bir [`KeyboardListener`](https://api.flutter.dev/flutter/widgets/KeyboardListener-class.html) veya [`Focus`](https://api.flutter.dev/flutter/widgets/Focus-class.html) widget'ı ile sarmalayıp klavye olaylarını dinleyebilirsiniz:

```dart
  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          print(event.logicalKey);
        }
        return KeyEventResult.ignored;
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: const TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
```

Ağacın büyük bir bölümüne bir dizi klavye kısayolu uygulamak için [`Shortcuts`](https://api.flutter.dev/flutter/widgets/Shortcuts-class.html) widget'ını kullanın:

```dart
// İstediğiniz her kısayol eylemi türü için bir sınıf tanımlayın
class CreateNewItemIntent extends Intent {
  const CreateNewItemIntent();
}

Widget build(BuildContext context) {
  return Shortcuts(
    // Niyetleri (intent) tuş kombinasyonlarına bağlayın
    shortcuts: const <ShortcutActivator, Intent>{
      SingleActivator(LogicalKeyboardKey.keyN, control: true):
          CreateNewItemIntent(),
    },
    child: Actions(
      // Niyetleri kodunuzdaki gerçek bir metoda bağlayın
      actions: <Type, Action<Intent>>{
        CreateNewItemIntent: CallbackAction<CreateNewItemIntent>(
          onInvoke: (intent) => _createNewItem(),
        ),
      },
      // Alt ağacınız odak alabilmesi için bir focusNode içine sarılmalıdır.
      child: Focus(autofocus: true, child: Container()),
    ),
  );
}
```

[`Shortcuts`](https://api.flutter.dev/flutter/widgets/Shortcuts-class.html) widget'ı faydalıdır, çünkü kısayolların yalnızca bu widget ağacı veya alt widget'larından biri odağa sahip ve görünür olduğunda tetiklenmesine izin verir.

Son seçenek genel (global) bir dinleyicidir. Bu dinleyici, her zaman açık, uygulama genelindeki kısayollar için veya görünür oldukları sürece (odak durumlarından bağımsız olarak) kısayolları kabul edebilen paneller için kullanılabilir. [`HardwareKeyboard`](https://api.flutter.dev/flutter/services/HardwareKeyboard-class.html) ile genel dinleyici eklemek kolaydır:

```dart
@override
void initState() {
  super.initState();
  HardwareKeyboard.instance.addHandler(_handleKey);
}

@override
void dispose() {
  HardwareKeyboard.instance.removeHandler(_handleKey);
  super.dispose();
}
```

Genel dinleyiciyle tuş kombinasyonlarını kontrol etmek için `HardwareKeyboard.instance.logicalKeysPressed` kümesini kullanabilirsiniz. Örneğin aşağıdaki gibi bir metot, verilen tuşlardan herhangi birinin basılı tutulup tutulmadığını kontrol edebilir:

```dart
static bool isKeyDown(Set<LogicalKeyboardKey> keys) {
  return keys
      .intersection(HardwareKeyboard.instance.logicalKeysPressed)
      .isNotEmpty;
}
```

Bu ikisini bir araya getirerek, `Shift+N` tuşlarına basıldığında bir eylem tetikleyebilirsiniz:

```dart
bool _handleKey(KeyEvent event) {
  bool isShiftDown = isKeyDown({
    LogicalKeyboardKey.shiftLeft,
    LogicalKeyboardKey.shiftRight,
  });

  if (isShiftDown && event.logicalKey == LogicalKeyboardKey.keyN) {
    _createNewItem();
    return true;
  }

  return false;
}
```

Statik dinleyiciyi kullanırken bir uyarı: kullanıcı bir alana yazı yazarken veya ilişkili olduğu widget görünümden gizlendiğinde onu çoğu zaman devre dışı bırakmanız gerekir. `Shortcuts` veya `KeyboardListener`'dan farklı olarak, bunu yönetmek sizin sorumluluğunuzdadır. Bu, özellikle `Delete` için bir Delete/Backspace kısayolu bağladığınızda, ancak kullanıcının yazı yazıyor olabileceği alt `TextField`'larınız olduğunda önemli olabilir.

<a id="input-custom-widgets"></a>

## Özel widget'lar için fare girişi, çıkışı ve üzerine gelme (Mouse enter, exit, and hover for custom widgets)

Masaüstünde, farenin üzerinde durduğu içeriğin işlevselliğini belirtmek için fare imlecini değiştirmek yaygındır. Örneğin bir düğmenin üzerine geldiğinizde genellikle el imleci, metnin üzerine geldiğinizde ise `I` imleci görürsünüz.

Flutter'ın Material düğmeleri, standart düğme ve metin imleçleri için temel odak durumlarını ele alır. (Önemli bir istisna, Material düğmelerinin varsayılan stilini değiştirip `overlayColor`'ı saydam olarak ayarlamanızdır.)

Uygulamanızdaki özel düğmeler veya hareket algılayıcılar (gesture detector) için bir odak durumu uygulayın. Varsayılan Material düğme stillerini değiştirirseniz, klavye odak durumlarını test edin ve gerekirse kendinizinkini uygulayın.

Özel widget'larınızın içinden imleci değiştirmek için [`MouseRegion`](https://api.flutter.dev/flutter/widgets/MouseRegion-class.html) kullanın:

```dart
// El imlecini göster
return MouseRegion(
  cursor: SystemMouseCursors.click,
  // Tıklandığında odak iste
  child: GestureDetector(
    onTap: () {
      Focus.of(context).requestFocus();
      _submit();
    },
    child: Logo(showBorder: hasFocus),
  ),
);
```

`MouseRegion` ayrıca özel üzerine gelme (rollover) ve hover efektleri oluşturmak için de faydalıdır:

```dart
return MouseRegion(
  onEnter: (_) => setState(() => _isMouseOver = true),
  onExit: (_) => setState(() => _isMouseOver = false),
  onHover: (e) => print(e.localPosition),
  child: Container(
    height: 500,
    color: _isMouseOver ? Colors.blue : Colors.black,
  ),
);
```

Düğmeye odaklandığında düğme stilini, düğmeyi çerçeveleyecek şekilde değiştiren bir örnek için [Wonderous uygulamasının düğme koduna](https://github.com/gskinnerTeam/flutter-wonderous-app/blob/8a29d6709668980340b1b59c3d3588f123edd4d8/lib/ui/common/controls/buttons.dart#L143) göz atın. Uygulama, düğmenin odakta olup olmadığını kontrol etmek için [`FocusNode.hasFocus`](https://api.flutter.dev/flutter/widgets/FocusNode/hasFocus.html) özelliğini kullanır ve odaktaysa bir çerçeve ekler.

<a id="input-visual-density"></a>

## Görsel yoğunluk (Visual density)

Örneğin dokunmatik bir ekrana uyum sağlamak için bir widget'ın "isabet alanını" (hit area) büyütmeyi düşünebilirsiniz.

Farklı girdi aygıtları çeşitli hassasiyet düzeyleri sunar ve bu da farklı boyutlarda isabet alanları gerektirir. Flutter'ın `VisualDensity` sınıfı, örneğin bir düğmeyi dokunmatik bir cihazda daha büyük (ve dolayısıyla dokunması daha kolay) yaparak, uygulamanın tamamındaki görünümlerinizin yoğunluğunu ayarlamayı kolaylaştırır.

`MaterialApp`'inizin `VisualDensity` değerini değiştirdiğinizde, bunu destekleyen `MaterialComponents` bileşenleri yoğunluklarını buna uyacak şekilde animasyonla değiştirir. Varsayılan olarak hem yatay hem dikey yoğunluk 0,0 olarak ayarlıdır, ancak yoğunlukları istediğiniz herhangi bir negatif veya pozitif değere ayarlayabilirsiniz. Farklı yoğunluklar arasında geçiş yaparak arayüzünüzü kolayca ayarlayabilirsiniz.

<p align="center">
  <img src="gorseller/adaptive_scaffold.png" alt="Uyarlanabilir iskele (Adaptive scaffold)" width="720">
  <br><sub><i>Uyarlanabilir iskele (Adaptive scaffold)</i></sub>
</p>

Özel bir görsel yoğunluk ayarlamak için, yoğunluğu `MaterialApp` temanıza enjekte edin:

```dart
double densityAmt = touchMode ? 0.0 : -1.0;
VisualDensity density = VisualDensity(
  horizontal: densityAmt,
  vertical: densityAmt,
);
return MaterialApp(
  theme: ThemeData(visualDensity: density),
  home: MainAppScaffold(),
  debugShowCheckedModeBanner: false,
);
```

Kendi görünümlerinizin içinde `VisualDensity` kullanmak için onu sorgulayabilirsiniz:

```dart
VisualDensity density = Theme.of(context).visualDensity;
```

Kapsayıcı yalnızca yoğunluk değişikliklerine otomatik tepki vermekle kalmaz, değiştiğinde animasyon da uygular. Bu, özel bileşenlerinizi yerleşik bileşenlerle birleştirerek uygulama genelinde pürüzsüz bir geçiş efekti sağlar.

Gösterildiği gibi, `VisualDensity` birimsizdir (unit-less), bu nedenle farklı görünümler için farklı anlamlara gelebilir. Aşağıdaki örnekte 1 yoğunluk birimi 6 piksele eşittir, ancak bu tamamen sizin kararınıza bağlıdır. Birimsiz olması onu oldukça çok yönlü yapar ve çoğu bağlamda çalışması gerekir.

Material'ın genellikle her görsel yoğunluk birimi için yaklaşık 4 mantıksal piksellik bir değer kullandığını belirtmekte fayda var. Desteklenen bileşenler hakkında daha fazla bilgi için [`VisualDensity`](https://pub.dev/documentation/material_ui/latest/material_ui/VisualDensity-class.html) API'sine bakın. Yoğunluk ilkeleri hakkında genel olarak daha fazla bilgi için [Material Design kılavuzuna](https://m2.material.io/design/layout/applying-density.html#usage) bakın.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-15) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-17)

</div>

<a id="bolum-17"></a>

<div align="center">

<sub>BÖLÜM 17 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 🔄 Otomatik platform uyarlamaları

**Flutter'ın platforma uyarlanabilirliği hakkında daha fazla bilgi edinin.**

`UI › Uyarlanabilir tasarım (Adaptive design) › Otomatik platform uyarlamaları`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/platform-adaptations)  ·  🗓️ 29.09.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-16) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-18)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Uyarlama felsefesi (Adaptation philosophy)](#platform-adaptation-philosophy)
- [Sayfa gezinmesi (Page navigation)](#platform-page-navigation)
  - [Gezinme geçişleri (Navigation transitions)](#platform-navigation-transitions)
  - [Platforma özgü geçiş ayrıntıları (Platform-specific transition details)](#platform-platform-specific-transition-details)
  - [Geri gezinme (Back navigation)](#platform-back-navigation)
- [Kaydırma (Scrolling)](#platform-scrolling)
  - [Fizik simülasyonu (Physics simulation)](#platform-physics-simulation)
  - [Aşırı kaydırma davranışı (Overscroll behavior)](#platform-overscroll-behavior)
  - [Kaydırma çubukları (Scrollbars)](#platform-scrollbars)
  - [Momentum](#platform-momentum)
  - [En üste dönme (Return to top)](#platform-return-to-top)
- [Tipografi (Typography)](#platform-typography)
- [İkonografi (Iconography)](#platform-iconography)
- [Dokunsal geri bildirim (Haptic feedback)](#platform-haptic-feedback)
- [Metin düzenleme (Text editing)](#platform-text-editing)
  - [Klavye hareketiyle gezinme (Keyboard gesture navigation)](#platform-keyboard-gesture-navigation)
  - [Metin seçim araç çubuğu (Text selection toolbar)](#platform-text-selection-toolbar)
  - [Tek dokunma hareketi (Single tap gesture)](#platform-single-tap-gesture)
  - [Uzun basma hareketi (Long-press gesture)](#platform-long-press-gesture)
  - [Uzun basıp sürükleme hareketi (Long-press drag gesture)](#platform-long-press-drag-gesture)
  - [Çift dokunma hareketi (Double tap gesture)](#platform-double-tap-gesture)
- [UI bileşenleri (UI components)](#platform-ui-components)
  - [`.adaptive()` yapıcılı widget'lar (Widgets with .adaptive() constructors)](#platform-widgets-with-adaptive-constructors)
  - [Üst uygulama çubuğu ve gezinme çubuğu (Top app bar and navigation bar)](#platform-top-app-bar-and-navigation-bar)
  - [Alt gezinme çubukları (Bottom navigation bars)](#platform-bottom-navigation-bars)
  - [Metin alanları (Text fields)](#platform-text-fields)

</details>

<a id="platform-adaptation-philosophy"></a>

## Uyarlama felsefesi (Adaptation philosophy)

Genel olarak, platform uyarlanabilirliğinin iki durumu vardır:

1. İşletim sistemi ortamının davranışları olan (metin düzenleme ve kaydırma gibi) ve farklı bir davranış gerçekleşirse 'yanlış' olacak şeyler.
2. Geleneksel olarak OEM'in SDK'ları kullanılarak uygulamalarda gerçekleştirilen şeyler (iOS'ta paralel sekmeler kullanmak veya Android'de bir [`android.app.AlertDialog`](https://developer.android.com/reference/android/app/AlertDialog.html) göstermek gibi).

Bu makale esas olarak Flutter'ın Android ve iOS'ta 1. durum için sağladığı otomatik uyarlamaları kapsar.

2\. durum için Flutter, platform geleneklerinin uygun etkilerini üretmenin yollarını bir arada sunar ancak uygulama tasarım tercihleri gerektiğinde otomatik olarak uyum sağlamaz. Bir tartışma için [issue #8410](https://github.com/flutter/flutter/issues/8410#issuecomment-468034023) ve [Material/Cupertino uyarlanabilir widget problem tanımına](https://bit.ly/flutter-adaptive-widget-problem) bakın.

Android ve iOS'ta farklı bilgi mimarisi yapıları kullanan ancak aynı içerik kodunu paylaşan bir uygulama örneği için [platform\_design kod örneklerine](https://github.com/flutter/samples/tree/main/platform_design) bakın.

2\. durumu ele alan ön rehberler UI bileşenleri bölümüne ekleniyor. [issue #8427](https://github.com/flutter/website/issues/8427) üzerinde yorum yaparak ek rehberler talep edebilirsiniz.

<a id="platform-page-navigation"></a>

## Sayfa gezinmesi (Page navigation)

Flutter, Android ve iOS'ta görülen gezinme kalıplarını sağlar ve gezinme animasyonunu da otomatik olarak mevcut platforma uyarlar.

<a id="platform-navigation-transitions"></a>

### Gezinme geçişleri (Navigation transitions)

**Android**'de varsayılan [`Navigator.push()`](https://api.flutter.dev/flutter/widgets/Navigator/push.html) geçişi, genellikle alttan yukarıya tek bir animasyon varyantına sahip olan [`startActivity()`](https://developer.android.com/reference/kotlin/android/app/Activity#startactivity) örnek alınarak modellenmiştir.

**iOS**'ta:

-   Varsayılan [`Navigator.push()`](https://api.flutter.dev/flutter/widgets/Navigator/push.html) API'si, yerel ayarın (locale) RTL ayarına bağlı olarak sondan başa doğru animasyonlanan bir iOS Show/Push tarzı geçiş üretir. Yeni rotanın arkasındaki sayfa da iOS'taki gibi aynı yönde paralaks kaydırmayla kayar.
-   [`PageRoute.fullscreenDialog`](https://api.flutter.dev/flutter/widgets/PageRoute-class.html) değeri true olan bir sayfa rotası itilirken ayrı bir alttan yukarıya geçiş stili bulunur. Bu, iOS'un Present/Modal tarzı geçişini temsil eder ve genellikle tam ekran modal sayfalarda kullanılır.

| <sub><b>Android sayfa geçişi</b></sub> | <sub><b>iOS push geçişi</b></sub> | <sub><b>iOS present geçişi</b></sub> |
|:-:|:-:|:-:|
| <img src="gorseller/navigation-android.webp" alt="Android sayfa geçişi" height="340"> | <img src="gorseller/navigation-ios.webp" alt="iOS push geçişi" height="340"> | <img src="gorseller/navigation-ios-modal.webp" alt="iOS present geçişi" height="340"> |

<a id="platform-platform-specific-transition-details"></a>

### Platforma özgü geçiş ayrıntıları (Platform-specific transition details)

**Android**'de Flutter, [`ZoomPageTransitionsBuilder`](https://pub.dev/documentation/material_ui/latest/material_ui/ZoomPageTransitionsBuilder-class.html) animasyonunu kullanır. Kullanıcı bir öğeye dokunduğunda, arayüz o öğeyi içeren bir ekrana yakınlaşır. Kullanıcı geri gitmek için dokunduğunda, arayüz önceki ekrana uzaklaşır.

**iOS**'ta push stili geçiş kullanıldığında, Flutter'ın paketlenmiş [`CupertinoNavigationBar`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoNavigationBar-class.html) ve [`CupertinoSliverNavigationBar`](https://pub.dev/documentation/cupertino_ui/latest/cupertino_ui/CupertinoSliverNavigationBar-class.html) gezinme çubukları, her alt bileşeni bir sonraki veya önceki sayfanın `CupertinoNavigationBar` ya da `CupertinoSliverNavigationBar`'ındaki karşılık gelen alt bileşene otomatik olarak animasyonla taşır.

| <sub><b>Android</b></sub> | <sub><b>iOS gezinme çubuğu (Nav Bar)</b></sub> |
|:-:|:-:|
| <img src="gorseller/android-zoom-animation.png" alt="Android" height="340"> | <img src="gorseller/navigation-ios-nav-bar.webp" alt="iOS gezinme çubuğu (Nav Bar)" height="340"> |

<a id="platform-back-navigation"></a>

### Geri gezinme (Back navigation)

**Android**'de işletim sisteminin geri düğmesi varsayılan olarak Flutter'a gönderilir ve [`WidgetsApp`](https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html)'in Navigator'ının en üstteki rotasını çıkarır (pop).

**iOS**'ta en üstteki rotayı çıkarmak için bir kenar kaydırma hareketi (edge swipe gesture) kullanılabilir.

| <sub><b>Android geri düğmesi</b></sub> | <sub><b>iOS geri kaydırma hareketi</b></sub> |
|:-:|:-:|
| <img src="gorseller/navigation-android-back.webp" alt="Android geri düğmesi" height="340"> | <img src="gorseller/navigation-ios-back.webp" alt="iOS geri kaydırma hareketi" height="340"> |

<a id="platform-scrolling"></a>

## Kaydırma (Scrolling)

Kaydırma, platformun görünüm ve hissinin önemli bir parçasıdır ve Flutter kaydırma davranışını mevcut platforma uyacak şekilde otomatik olarak ayarlar.

<a id="platform-physics-simulation"></a>

### Fizik simülasyonu (Physics simulation)

Android ve iOS'un her ikisi de sözlü olarak tarif edilmesi zor, karmaşık kaydırma fizik simülasyonlarına sahiptir. Genel olarak, iOS'un kaydırılabilir alanı daha fazla ağırlığa ve dinamik sürtünmeye, Android ise daha fazla statik sürtünmeye sahiptir. Bu nedenle iOS yüksek hıza daha kademeli ulaşır ancak daha az ani durur ve düşük hızlarda daha kaygandır.

| <sub><b>Hafif fırlatma karşılaştırması</b></sub> | <sub><b>Orta fırlatma karşılaştırması</b></sub> | <sub><b>Güçlü fırlatma karşılaştırması</b></sub> |
|:-:|:-:|:-:|
| <img src="gorseller/scroll-soft.webp" alt="Hafif fırlatma karşılaştırması" height="340"> | <img src="gorseller/scroll-medium.webp" alt="Orta fırlatma karşılaştırması" height="340"> | <img src="gorseller/scroll-strong.webp" alt="Güçlü fırlatma karşılaştırması" height="340"> |

<a id="platform-overscroll-behavior"></a>

### Aşırı kaydırma davranışı (Overscroll behavior)

**Android**'de, bir kaydırılabilir alanın kenarını aşarak kaydırmak (mevcut Material temasının rengine dayalı) bir [aşırı kaydırma parıltısı göstergesi](https://api.flutter.dev/flutter/widgets/GlowingOverscrollIndicator-class.html) (overscroll glow indicator) gösterir.

**iOS**'ta, bir kaydırılabilir alanın kenarını aşarak kaydırmak, artan dirençle [aşırı kaydırır](https://api.flutter.dev/flutter/widgets/BouncingScrollPhysics-class.html) (overscroll) ve geri sıçrar.

| <sub><b>Dinamik aşırı kaydırma karşılaştırması</b></sub> | <sub><b>Statik aşırı kaydırma karşılaştırması</b></sub> |
|:-:|:-:|
| <img src="gorseller/scroll-overscroll.webp" alt="Dinamik aşırı kaydırma karşılaştırması" height="340"> | <img src="gorseller/scroll-static-overscroll.webp" alt="Statik aşırı kaydırma karşılaştırması" height="340"> |

<a id="platform-scrollbars"></a>

### Kaydırma çubukları (Scrollbars)

**Material tabanlı platformlarda** (Android ve web gibi), kaydırma çubukları genellikle kaydırma sırasında görünür ve platforma ile temaya bağlı olarak görünür kalabilir.

**Cupertino tabanlı platformlarda** (iOS gibi), kaydırma çubukları daha minimaldir ve genellikle yalnızca kullanıcı aktif olarak kaydırırken kısa süreliğine görünür, etkileşim durduğunda solar.

Bu fark, her platformun görsel geleneklerini yansıtır ve cihazlar arasında yerel bir görünüm ve his korumaya yardımcı olur.

<a id="platform-momentum"></a>

### Momentum

**iOS**'ta, aynı yönde tekrarlanan fırlatmalar momentumu biriktirir ve art arda her fırlatmayla daha fazla hız kazanır. Android'de bunun bir karşılığı yoktur.

<p align="center">
  <img src="gorseller/scroll-momentum-ios.webp" alt="iOS kaydırma momentumu" height="380">
  <br><sub><i>iOS kaydırma momentumu</i></sub>
</p>

<a id="platform-return-to-top"></a>

### En üste dönme (Return to top)

**iOS**'ta, işletim sistemi durum çubuğuna dokunmak birincil kaydırma denetleyicisini (scroll controller) en üst konuma kaydırır. Android'de bunun bir karşılığı yoktur.

<p align="center">
  <img src="gorseller/scroll-tap-to-top-ios.webp" alt="iOS durum çubuğuna dokunarak en üste dönme" height="380">
  <br><sub><i>iOS durum çubuğuna dokunarak en üste dönme</i></sub>
</p>

<a id="platform-typography"></a>

## Tipografi (Typography)

Material paketi kullanılırken, tipografi otomatik olarak platform için uygun yazı tipi ailesine varsayılan olarak ayarlanır. Android Roboto yazı tipini kullanır. iOS San Francisco yazı tipini kullanır.

Cupertino paketi kullanılırken [varsayılan tema](https://github.com/flutter/flutter/blob/main/packages/flutter/lib/src/cupertino/text_theme.dart) San Francisco yazı tipini kullanır.

San Francisco yazı tipi lisansı, kullanımını yalnızca iOS, macOS veya tvOS üzerinde çalışan yazılımlarla sınırlar. Bu nedenle, platform hata ayıklama amacıyla iOS olarak geçersiz kılındığında veya varsayılan Cupertino teması kullanıldığında Android üzerinde çalışırken bir yedek yazı tipi kullanılır.

Material widget'larının metin stilini iOS'taki varsayılan metin stiline uyacak şekilde uyarlamayı seçebilirsiniz. Widget'a özel örnekleri [UI Bileşenleri bölümünde](#platform-ui-components) görebilirsiniz.

| <sub><b>Android&#x27;de Roboto</b></sub> | <sub><b>iOS&#x27;ta San Francisco</b></sub> |
|:-:|:-:|
| <img src="gorseller/typography-android.png" alt="Android&#x27;de Roboto" height="340"> | <img src="gorseller/typography-ios.png" alt="iOS&#x27;ta San Francisco" height="340"> |

<a id="platform-iconography"></a>

## İkonografi (Iconography)

Material paketi kullanılırken, bazı ikonlar platforma bağlı olarak otomatik olarak farklı grafikler gösterir. Örneğin, taşma (overflow) düğmesinin üç noktası iOS'ta yatay, Android'de dikeydir. Geri düğmesi iOS'ta basit bir köşeli ayraç (chevron) iken Android'de bir sap/gövde (stem/shaft) içerir.

| <sub><b>Android&#x27;de ikonlar</b></sub> | <sub><b>iOS&#x27;ta ikonlar</b></sub> |
|:-:|:-:|
| <img src="gorseller/iconography-android.png" alt="Android&#x27;de ikonlar" width="200"> | <img src="gorseller/iconography-ios.png" alt="iOS&#x27;ta ikonlar" width="200"> |

Material kütüphanesi ayrıca [`Icons.adaptive`](https://pub.dev/documentation/material_ui/latest/material_ui/PlatformAdaptiveIcons-class.html) aracılığıyla bir platform uyarlanabilir ikon seti de sağlar.

<a id="platform-haptic-feedback"></a>

## Dokunsal geri bildirim (Haptic feedback)

Material ve Cupertino paketleri, belirli senaryolarda platforma uygun dokunsal geri bildirimi otomatik olarak tetikler.

Örneğin, bir metin alanında uzun basarak kelime seçmek Android'de 'vızıltı' titreşimi tetikler, iOS'ta tetiklemez.

iOS'ta seçici (picker) öğeleri arasında kaydırmak 'hafif darbe' (light impact) tıkırtısı tetikler, Android'de geri bildirim yoktur.

<a id="platform-text-editing"></a>

## Metin düzenleme (Text editing)

Hem Material hem de Cupertino metin girdi alanları yazım denetimini (spellcheck) destekler ve platform için uygun yazım denetimi yapılandırmasını, uygun yazım denetimi menüsünü ve vurgu renklerini kullanacak şekilde uyum sağlar.

Flutter ayrıca, mevcut platforma uyum sağlamak için metin alanlarının içeriğini düzenlerken aşağıdaki uyarlamaları da yapar.

<a id="platform-keyboard-gesture-navigation"></a>

### Klavye hareketiyle gezinme (Keyboard gesture navigation)

**Android**'de, Material ve Cupertino metin alanlarında imleci hareket ettirmek için ekran klavyesinin `space` tuşu üzerinde yatay kaydırmalar yapılabilir.

3D Touch özelliğine sahip **iOS** cihazlarda, imleci kayan bir imleç (floating cursor) aracılığıyla 2 boyutlu olarak hareket ettirmek için ekran klavyesi üzerinde bir kuvvetli basma-sürükleme hareketi yapılabilir. Bu, hem Material hem de Cupertino metin alanlarında çalışır.

| <sub><b>Android space tuşuyla imleç taşıma</b></sub> | <sub><b>iOS 3D Touch sürüklemesiyle imleç taşıma</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-keyboard-move-android.webp" alt="Android space tuşuyla imleç taşıma" height="340"> | <img src="gorseller/text-keyboard-move-ios.webp" alt="iOS 3D Touch sürüklemesiyle imleç taşıma" height="340"> |

<a id="platform-text-selection-toolbar"></a>

### Metin seçim araç çubuğu (Text selection toolbar)

**Android'de Material** ile, bir metin alanında metin seçimi yapıldığında Android tarzı seçim araç çubuğu gösterilir.

**iOS'ta Material** ile veya **Cupertino** kullanıldığında, bir metin alanında metin seçimi yapıldığında iOS tarzı seçim araç çubuğu gösterilir.

| <sub><b>Android metin seçim araç çubuğu</b></sub> | <sub><b>iOS metin seçim araç çubuğu</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-toolbar-android.png" alt="Android metin seçim araç çubuğu" height="280"> | <img src="gorseller/text-toolbar-ios.png" alt="iOS metin seçim araç çubuğu" height="280"> |

<a id="platform-single-tap-gesture"></a>

### Tek dokunma hareketi (Single tap gesture)

**Android'de Material** ile, bir metin alanında tek dokunuş imleci dokunulan konuma yerleştirir.

Daraltılmış (collapsed) bir metin seçimi, imleci sonradan taşımak için sürüklenebilir bir tutamaç (handle) da gösterir.

**iOS'ta Material** ile veya **Cupertino** kullanıldığında, bir metin alanında tek dokunuş imleci dokunulan kelimenin en yakın kenarına yerleştirir.

iOS'ta daraltılmış metin seçimlerinde sürüklenebilir tutamaç yoktur.

| <sub><b>Android dokunuşu</b></sub> | <sub><b>iOS dokunuşu</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-single-tap-android.webp" alt="Android dokunuşu" width="268"> | <img src="gorseller/text-single-tap-ios.webp" alt="iOS dokunuşu" width="243"> |

<a id="platform-long-press-gesture"></a>

### Uzun basma hareketi (Long-press gesture)

**Android'de Material** ile, uzun basış uzun basılan yerdeki kelimeyi seçer. Seçim araç çubuğu bırakıldığında gösterilir.

**iOS'ta Material** ile veya **Cupertino** kullanıldığında, uzun basış imleci uzun basılan konuma yerleştirir. Seçim araç çubuğu bırakıldığında gösterilir.

| <sub><b>Android uzun basma</b></sub> | <sub><b>iOS uzun basma</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-long-press-android.webp" alt="Android uzun basma" width="268"> | <img src="gorseller/text-long-press-ios.webp" alt="iOS uzun basma" width="243"> |

<a id="platform-long-press-drag-gesture"></a>

### Uzun basıp sürükleme hareketi (Long-press drag gesture)

**Android'de Material** ile, uzun basışı tutarken sürüklemek seçili kelimeleri genişletir.

**iOS'ta Material** ile veya **Cupertino** kullanıldığında, uzun basışı tutarken sürüklemek imleci hareket ettirir.

| <sub><b>Android uzun basıp sürükleme</b></sub> | <sub><b>iOS uzun basıp sürükleme</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-long-press-drag-android.webp" alt="Android uzun basıp sürükleme" width="268"> | <img src="gorseller/text-long-press-drag-ios.webp" alt="iOS uzun basıp sürükleme" width="243"> |

<a id="platform-double-tap-gesture"></a>

### Çift dokunma hareketi (Double tap gesture)

Hem Android hem de iOS'ta, çift dokunuş çift dokunulan kelimeyi seçer ve seçim araç çubuğunu gösterir.

| <sub><b>Android çift dokunuş</b></sub> | <sub><b>iOS çift dokunuş</b></sub> |
|:-:|:-:|
| <img src="gorseller/text-double-tap-android.webp" alt="Android çift dokunuş" width="268"> | <img src="gorseller/text-double-tap-ios.webp" alt="iOS çift dokunuş" width="243"> |

<a id="platform-ui-components"></a>

## UI bileşenleri (UI components)

Bu bölüm, Material widget'larını iOS'ta doğal ve etkileyici bir deneyim sunacak şekilde nasıl uyarlayacağınıza dair ön önerileri içerir. Geri bildirimlerinizi [issue #8427](https://github.com/flutter/website/issues/8427) üzerinde bekliyoruz.

<a id="platform-widgets-with-adaptive-constructors"></a>

### `.adaptive()` yapıcılı widget'lar (Widgets with .adaptive() constructors)

Birçok widget `.adaptive()` yapıcılarını destekler. Aşağıdaki tablo bu widget'ları listeler. Uyarlanabilir yapıcılar, uygulama bir iOS cihazında çalıştırıldığında karşılık gelen Cupertino bileşenlerini yerine koyar.

Aşağıdaki tablodaki widget'lar öncelikle girdi, seçim ve sistem bilgisini göstermek için kullanılır. Bu denetimler işletim sistemiyle sıkı biçimde bütünleştiği için, kullanıcılar bunları tanımaya ve onlara yanıt vermeye alışmıştır. Bu nedenle platform geleneklerini izlemenizi öneririz.

| Material widget | Cupertino widget | Uyarlanabilir yapıcı |
|:--|:--|:--|
| <img src="gorseller/m3-switch.png" alt="" width="192"><br>`Switch` | <img src="gorseller/hig-switch.png" alt="" width="86"><br>`CupertinoSwitch` | [`Switch.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/Switch/Switch.adaptive.html) |
| <img src="gorseller/m3-slider.png" alt="" width="200"><br>`Slider` | <img src="gorseller/hig-slider.png" alt="" width="200"><br>`CupertinoSlider` | [`Slider.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/Slider/Slider.adaptive.html) |
| <img src="gorseller/m3-progress.png" alt="" width="170"><br>`CircularProgressIndicator` | <img src="gorseller/hig-progress.png" alt="" width="78"><br>`CupertinoActivityIndicator` | [`CircularProgressIndicator.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/CircularProgressIndicator/CircularProgressIndicator.adaptive.html) |
| <img src="gorseller/m3-refresh.png" alt="" width="135"><br>`RefreshProgressIndicator` | <img src="gorseller/hig-refresh.png" alt="" width="71"><br>`CupertinoActivityIndicator` | [`RefreshIndicator.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/RefreshIndicator/RefreshIndicator.adaptive.html) |
| <img src="gorseller/m3-checkbox.png" alt="" width="100"><br>`Checkbox` | <img src="gorseller/hig-checkbox.png" alt="" width="70"><br>`CupertinoCheckbox` | [`Checkbox.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/Checkbox/Checkbox.adaptive.html) |
| <img src="gorseller/m3-radio.png" alt="" width="80"><br>`Radio` | <img src="gorseller/hig-radio.png" alt="" width="110"><br>`CupertinoRadio` | [`Radio.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/Radio/Radio.adaptive.html) |
| <img src="gorseller/m3-alert.png" alt="" width="200"><br>`AlertDialog` | <img src="gorseller/cupertino-alert.png" alt="" width="200"><br>`CupertinoAlertDialog` | [`AlertDialog.adaptive()`](https://pub.dev/documentation/material_ui/latest/material_ui/AlertDialog/AlertDialog.adaptive.html) |

<a id="platform-top-app-bar-and-navigation-bar"></a>

### Üst uygulama çubuğu ve gezinme çubuğu (Top app bar and navigation bar)

Android 12'den itibaren, üst uygulama çubukları için varsayılan arayüz [Material 3](https://m3.material.io/components/top-app-bar/overview)'te tanımlanan tasarım yönergelerini izler. iOS'ta, "Navigation Bars" (Gezinme Çubukları) adı verilen eşdeğer bir bileşen [Apple'ın İnsan Arayüzü Yönergeleri'nde](https://developer.apple.com/design/human-interface-guidelines/components/navigation-and-search/navigation-bars/) (HIG) tanımlanmıştır.

| <sub><b>Material 3&#x27;te üst uygulama çubuğu</b></sub> | <sub><b>İnsan Arayüzü Yönergeleri&#x27;nde gezinme çubuğu</b></sub> |
|:-:|:-:|
| <img src="gorseller/mat-appbar.png" alt="Material 3&#x27;te üst uygulama çubuğu" height="340"> | <img src="gorseller/hig-appbar.png" alt="İnsan Arayüzü Yönergeleri&#x27;nde gezinme çubuğu" width="320"> |

Flutter uygulamalarındaki uygulama çubuklarının sistem ikonları ve sayfa geçişleri gibi bazı özellikleri uyarlanmalıdır. Material `AppBar` ve `SliverAppBar` widget'ları kullanılırken bunlar zaten otomatik olarak uyarlanır. Bu widget'ların özelliklerini aşağıda gösterildiği gibi iOS platform stillerine daha iyi uyacak şekilde daha fazla özelleştirebilirsiniz.

```dart
// Metin temasını iOS stillerine eşleyin
TextTheme cupertinoTextTheme = TextTheme(
    headlineMedium: CupertinoThemeData()
        .textTheme
        .navLargeTitleTextStyle
         // aralıkla ilgili küçük bir hatayı düzeltir
        .copyWith(letterSpacing: -1.5),
    titleLarge: CupertinoThemeData().textTheme.navTitleTextStyle)
...

// iOS cihazlarda iOS metin temasını kullanın
ThemeData(
      textTheme: Platform.isIOS ? cupertinoTextTheme : null,
      ...
)
...

// AppBar özelliklerini değiştirin
AppBar(
        surfaceTintColor: Platform.isIOS ? Colors.transparent : null,
        shadowColor: Platform.isIOS ? CupertinoColors.darkBackgroundGray : null,
        scrolledUnderElevation: Platform.isIOS ? .1 : null,
        toolbarHeight: Platform.isIOS ? 44 : null,
        ...
      ),
```

Ancak uygulama çubukları sayfanızdaki diğer içeriklerle birlikte gösterildiği için, stilin uygulamanızın geri kalanıyla uyumlu olduğu sürece uyarlanması önerilir. Ek kod örneklerini ve daha ayrıntılı bir açıklamayı [uygulama çubuğu uyarlamaları hakkındaki GitHub tartışmasında](https://github.com/flutter/uxr/discussions/93) görebilirsiniz.

<a id="platform-bottom-navigation-bars"></a>

### Alt gezinme çubukları (Bottom navigation bars)

Android 12'den itibaren, alt gezinme çubukları için varsayılan arayüz [Material 3](https://m3.material.io/components/navigation-bar/overview)'te tanımlanan tasarım yönergelerini izler. iOS'ta, "Tab Bars" (Sekme Çubukları) adı verilen eşdeğer bir bileşen [Apple'ın İnsan Arayüzü Yönergeleri'nde](https://developer.apple.com/design/human-interface-guidelines/components/navigation-and-search/tab-bars/) (HIG) tanımlanmıştır.

| <sub><b>Material 3&#x27;te alt gezinme çubuğu</b></sub> | <sub><b>İnsan Arayüzü Yönergeleri&#x27;nde sekme çubuğu</b></sub> |
|:-:|:-:|
| <img src="gorseller/mat-navbar.png" alt="Material 3&#x27;te alt gezinme çubuğu" width="320"> | <img src="gorseller/hig-tabbar.png" alt="İnsan Arayüzü Yönergeleri&#x27;nde sekme çubuğu" width="320"> |

Sekme çubukları uygulamanız boyunca kalıcı olduğu için kendi markanızla eşleşmelidir. Ancak Android'de Material'ın varsayılan stilini kullanmayı seçerseniz, varsayılan iOS sekme çubuklarına uyum sağlamayı düşünebilirsiniz.

Platforma özgü alt gezinme çubukları uygulamak için, Android'de Flutter'ın `NavigationBar` widget'ını, iOS'ta ise `CupertinoTabBar` widget'ını kullanabilirsiniz. Aşağıda, platforma özgü gezinme çubukları göstermek için uyarlayabileceğiniz bir kod parçacığı bulunmaktadır.

```dart
final Map<String, Icon> _navigationItems = {
    'Menu': Platform.isIOS ? Icon(CupertinoIcons.house_fill) : Icon(Icons.home),
    'Order': Icon(Icons.adaptive.share),
  };

...

Scaffold(
  body: _currentWidget,
  bottomNavigationBar: Platform.isIOS
          ? CupertinoTabBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() => _currentIndex = index);
                _loadScreen();
              },
              items: _navigationItems.entries
                  .map<BottomNavigationBarItem>(
                      (entry) => BottomNavigationBarItem(
                            icon: entry.value,
                            label: entry.key,
                          ))
                  .toList(),
            )
          : NavigationBar(
              selectedIndex: _currentIndex,
              onDestinationSelected: (index) {
                setState(() => _currentIndex = index);
                _loadScreen();
              },
              destinations: _navigationItems.entries
                  .map<Widget>((entry) => NavigationDestination(
                        icon: entry.value,
                        label: entry.key,
                      ))
                  .toList(),
            ));
```

<a id="platform-text-fields"></a>

### Metin alanları (Text fields)

Android 12'den itibaren, metin alanları [Material 3](https://m3.material.io/components/text-fields/overview) (M3) tasarım yönergelerini izler. iOS'ta, Apple'ın [İnsan Arayüzü Yönergeleri](https://developer.apple.com/design/human-interface-guidelines/text-fields) (HIG) eşdeğer bir bileşen tanımlar.

| <sub><b>Material 3&#x27;te metin alanı</b></sub> | <sub><b>HIG&#x27;de metin alanı</b></sub> |
|:-:|:-:|
| <img src="gorseller/m3-text-field.png" alt="Material 3&#x27;te metin alanı" width="320"> | <img src="gorseller/hig-text-field.png" alt="HIG&#x27;de metin alanı" width="320"> |

Metin alanları kullanıcı girdisi gerektirdiğinden, tasarımları platform geleneklerini izlemelidir.

Flutter'da platforma özgü bir `TextField` uygulamak için, Material `TextField`'in stilini uyarlayabilirsiniz.

```dart
Widget _createAdaptiveTextField() {
  final _border = OutlineInputBorder(
    borderSide: BorderSide(color: CupertinoColors.lightBackgroundGray),
  );

  final iOSDecoration = InputDecoration(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
    filled: true,
    fillColor: CupertinoColors.white,
    hoverColor: CupertinoColors.white,
    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
  );

  return Platform.isIOS
      ? SizedBox(
          height: 36.0,
          child: TextField(
            decoration: iOSDecoration,
          ),
        )
      : TextField();
}
```

Metin alanlarını uyarlama hakkında daha fazla bilgi için [metin alanları hakkındaki GitHub tartışmasına](https://github.com/flutter/uxr/discussions/95) göz atın. Tartışmada geri bildirim bırakabilir veya soru sorabilirsiniz.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-16) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-18)

</div>

<a id="bolum-18"></a>

<div align="center">

<sub>BÖLÜM 18 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# ✅ Uyarlanabilir tasarım için en iyi uygulamalar

**Uyarlanabilir tasarım için en iyi uygulamalardan bazılarının özeti.**

`UI › Uyarlanabilir tasarım (Adaptive design) › En iyi uygulamalar`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/best-practices)  ·  🗓️ 31.07.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-17) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-19)

</div>

---

<details>
<summary><b>📌 Bu bölümdeki başlıklar</b></summary>

- [Tasarım değerlendirmeleri (Design considerations)](#best-design-considerations)
  - [Widget'larınızı parçalara ayırın (Break down your widgets)](#best-break-down-your-widgets)
  - [Her form faktörünün güçlü yönlerine göre tasarlayın (Design to the strengths of each form factor)](#best-design-to-the-strengths-of-each-form-factor)
  - [Önce dokunmayı çözün (Solve touch first)](#best-solve-touch-first)
- [Uygulama ayrıntıları (Implementation details)](#best-implementation-details)
  - [Uygulamanızın yönünü kilitlemeyin.](#best-dont-lock-the-orientation-of-your-app)
  - [Cihaz yönüne dayalı yerleşimlerden kaçının (Avoid device orientation-based layouts)](#best-avoid-device-orientation-based-layouts)
  - [Tüm yatay alanı kaplamayın (Don't gobble up all of the horizontal space)](#best-dont-gobble-up-all-of-the-horizontal-space)
  - [Donanım türlerini kontrol etmekten kaçının (Avoid checking for hardware types)](#best-avoid-checking-for-hardware-types)
  - [Çeşitli girdi aygıtlarını destekleyin (Support a variety of input devices)](#best-support-a-variety-of-input-devices)
  - [Liste durumunu geri yükleme (Restore List state)](#best-restore-list-state)
- [Uygulama durumunu kaydetme (Save app state)](#best-save-app-state)

</details>

Uyarlanabilir tasarım için önerilen en iyi uygulamalar şunları içerir:

<a id="best-design-considerations"></a>

## Tasarım değerlendirmeleri (Design considerations)

<a id="best-break-down-your-widgets"></a>

### Widget'larınızı parçalara ayırın (Break down your widgets)

Uygulamanızı tasarlarken, büyük ve karmaşık widget'ları daha küçük ve daha basit olanlara ayırmaya çalışın.

Widget'ları yeniden düzenlemek (refactoring), çekirdek kod parçalarını paylaşarak uyarlanabilir bir arayüze geçmenin karmaşıklığını azaltabilir. Başka faydaları da vardır:

-   Performans tarafında, çok sayıda küçük `const` widget'a sahip olmak, büyük ve karmaşık widget'lara kıyasla yeniden oluşturma (rebuild) sürelerini iyileştirir.
-   Flutter `const` widget örneklerini yeniden kullanabilir; daha büyük ve karmaşık bir widget ise her yeniden oluşturmada baştan kurulmak zorundadır.
-   Kod sağlığı açısından, arayüzünüzü daha küçük, kolay yönetilebilir parçalara bölmek her `Widget`'ın karmaşıklığını düşük tutmaya yardımcı olur. Daha az karmaşık bir `Widget` daha okunabilir, yeniden düzenlenmesi daha kolay ve sürpriz davranış sergileme olasılığı daha düşüktür.

Daha fazla bilgi için [Genel yaklaşım](#bolum-13) sayfasındaki uyarlanabilir tasarımın 3 adımına göz atın.

<a id="best-design-to-the-strengths-of-each-form-factor"></a>

### Her form faktörünün güçlü yönlerine göre tasarlayın (Design to the strengths of each form factor)

Ekran boyutunun ötesinde, farklı form faktörlerinin kendine özgü güçlü ve zayıf yönlerini düşünmeye de zaman ayırmalısınız. Çok platformlu uygulamanızın her yerde birebir aynı işlevselliği sunması her zaman ideal değildir. Bazı cihaz kategorilerinde belirli yeteneklere odaklanmanın, hatta bazı özellikleri kaldırmanın mantıklı olup olmadığını düşünün.

Örneğin, mobil cihazlar taşınabilirdir ve kameraları vardır, ancak ayrıntılı yaratıcı işler için pek uygun değildir. Bunu akılda tutarak, mobil arayüzde içeriği yakalamaya ve konum verisiyle etiketlemeye daha çok odaklanırken, tablet veya masaüstü arayüzünde bu içeriği düzenlemeye veya üzerinde değişiklik yapmaya odaklanabilirsiniz.

Bir başka örnek, web'in paylaşım için son derece düşük giriş engelinden yararlanmaktır. Bir web uygulaması yayınlıyorsanız, hangi [derin bağlantıları](https://docs.flutter.dev/ui/navigation/deep-linking) (deep link) destekleyeceğinize karar verin ve gezinme rotalarınızı bunları göz önünde bulundurarak tasarlayın.

Buradaki temel çıkarım, her platformun en iyi ne yaptığını düşünmek ve yararlanabileceğiniz benzersiz yetenekler olup olmadığına bakmaktır.

<a id="best-solve-touch-first"></a>

### Önce dokunmayı çözün (Solve touch first)

Harika bir dokunmatik arayüz oluşturmak, kısmen sağ tıklama, kaydırma tekerleği veya klavye kısayolları gibi girdi hızlandırıcılarının olmaması nedeniyle, çoğu zaman geleneksel bir masaüstü arayüzünden daha zor olabilir.

Bu zorluğa yaklaşmanın bir yolu, başlangıçta harika bir dokunmatik odaklı arayüze odaklanmaktır. Test işlemlerinizin çoğunu yine de yineleme hızı nedeniyle masaüstü hedefini kullanarak yapabilirsiniz. Ancak her şeyin doğru hissettirdiğini doğrulamak için sık sık bir mobil cihaza geçmeyi unutmayın.

Dokunmatik arayüzü cilaladıktan sonra, fare kullanıcıları için görsel yoğunluğu ayarlayabilir ve ardından tüm ek girdileri üzerine ekleyebilirsiniz. Bu diğer girdilere hızlandırıcı (accelerator) olarak yaklaşın; yani bir görevi daha hızlı hâle getiren alternatifler. Dikkate alınması gereken önemli nokta, kullanıcının belirli bir girdi aygıtını kullanırken ne beklediği ve bunu uygulamanıza yansıtmak için çalışmaktır.

<a id="best-implementation-details"></a>

## Uygulama ayrıntıları (Implementation details)

<a id="best-dont-lock-the-orientation-of-your-app"></a>

### Uygulamanızın yönünü kilitlemeyin.

Uyarlanabilir bir uygulama, farklı boyut ve şekillerdeki pencerelerde iyi görünmelidir. Uygulamayı telefonlarda dikey moda kilitlemek, asgari uygulanabilir ürünün (MVP) kapsamını daraltmaya yardımcı olsa da, uygulamayı gelecekte uyarlanabilir hâle getirmek için gereken çabayı artırabilir.

Örneğin, telefonların uygulamanızı yalnızca tam ekran dikey modda render edeceği varsayımı garanti değildir. Çoklu pencere uygulama desteği yaygınlaşıyor ve katlanabilir cihazların birçok kullanım senaryosu, yan yana çalışan birden fazla uygulamayla en iyi şekilde çalışıyor.

Uygulamanızı kesinlikle dikey modda kilitlemeniz gerekiyorsa (ama yapmayın), ekranın fiziksel boyutlarını almak için `MediaQuery` gibi bir şey yerine `Display` API'sini kullanın.

Özetle:

-   Kilitli ekranlar bazı kullanıcılar için [bir erişilebilirlik sorunu](https://www.w3.org/WAI/WCAG21/Understanding/orientation.html) olabilir
-   Android büyük format kademeleri, [en düşük düzeyde](https://developer.android.com/docs/quality-guidelines/large-screen-app-quality#T3-8) dikey ve yatay desteği gerektirir.
-   Android cihazlar [kilitli bir ekranı geçersiz kılabilir](https://developer.android.com/guide/topics/large-screens/large-screen-compatibility-mode#per-app_overrides)
-   Apple yönergeleri [her iki yönü de desteklemeyi hedeflemenizi](https://www.w3.org/WAI/WCAG21/Understanding/orientation.html) söyler

<a id="best-avoid-device-orientation-based-layouts"></a>

### Cihaz yönüne dayalı yerleşimlerden kaçının (Avoid device orientation-based layouts)

Farklı uygulama yerleşimleri arasında geçiş yapmak için widget ağacınızın üst kısımlarında `MediaQuery`'nin `orientation` alanını veya `OrientationBuilder`'ı kullanmaktan kaçının. Bu, ekran boyutunu belirlemek için cihaz türlerini kontrol etmeme tavsiyesine benzerdir. Cihazın yönü de uygulama pencerenizin ne kadar alana sahip olduğunu mutlaka bildirmez.

Bunun yerine, [Genel yaklaşım](#bolum-13) sayfasında tartışıldığı gibi `MediaQuery`'nin `sizeOf`'unu veya `LayoutBuilder`'ı kullanın. Ardından [Material](https://m3.material.io/foundations/layout/applying-layout/window-size-classes)'ın önerdiği gibi uyarlanabilir kesme noktalarını (breakpoint) kullanın.

<a id="best-dont-gobble-up-all-of-the-horizontal-space"></a>

### Tüm yatay alanı kaplamayın (Don't gobble up all of the horizontal space)

Pencerenin tüm genişliğini kutuları veya metin alanlarını göstermek için kullanan uygulamalar, büyük ekranlarda çalıştırıldığında iyi görünmez.

Bunu nasıl önleyeceğinizi öğrenmek için [GridView ile yerleşim düzeni](#large-layout-with-gridview) bölümüne göz atın.

<a id="best-avoid-checking-for-hardware-types"></a>

### Donanım türlerini kontrol etmekten kaçının (Avoid checking for hardware types)

Yerleşim kararları verirken üzerinde çalıştığınız cihazın bir "telefon" mu, "tablet" mi yoksa başka bir tür cihaz mı olduğunu kontrol eden kod yazmaktan kaçının.

Uygulamanıza render etmesi için gerçekte verilen alan her zaman cihazın tam ekran boyutuna bağlı değildir. Flutter birçok farklı platformda çalışabilir ve uygulamanız ChromeOS'ta yeniden boyutlandırılabilir bir pencerede, tabletlerde çoklu pencere modunda başka bir uygulamayla yan yana ya da telefonlarda hatta pencere içinde pencere (picture-in-picture) modunda çalışıyor olabilir. Bu nedenle cihaz türü ile uygulama pencere boyutu gerçekte güçlü bir şekilde bağlantılı değildir.

Bunun yerine, uygulamanızın şu anda çalıştığı pencerenin boyutunu almak için `MediaQuery` kullanın.

Bu yalnızca arayüz kodu için faydalı değildir. Cihaz yeteneklerini soyutlamanın iş mantığı (business logic) kodunuza nasıl yardımcı olabileceğini öğrenmek için 2022 Google I/O konuşması [Flutter lessons for federated plugin development](https://www.youtube.com/watch?v=GAnSNplNpCA)'a göz atın.

<a id="best-support-a-variety-of-input-devices"></a>

### Çeşitli girdi aygıtlarını destekleyin (Support a variety of input devices)

Uygulamalar temel fareleri, izleme yüzeylerini (trackpad) ve klavye kısayollarını desteklemelidir. En yaygın kullanıcı akışları, erişilebilirliği sağlamak için klavye ile gezinmeyi desteklemelidir. Özellikle uygulamanız, büyük cihazlarda klavyeler için erişilebilir en iyi uygulamaları izlemelidir.

Material kütüphanesi dokunma, fare ve klavye etkileşimi için mükemmel varsayılan davranışa sahip widget'lar sağlar.

Bu desteği özel widget'lara nasıl ekleyeceğinizi öğrenmek için [Kullanıcı girdisi ve erişilebilirlik](#bolum-16) (User input & accessibility) sayfasına göz atın.

<a id="best-restore-list-state"></a>

### Liste durumunu geri yükleme (Restore List state)

Cihaz yönü değiştiğinde yerleşimini değiştirmeyen bir listede kaydırma konumunu korumak için [`PageStorageKey`](https://api.flutter.dev/flutter/widgets/PageStorageKey-class.html) sınıfını kullanın. `PageStorageKey`, widget yok edildikten sonra widget durumunu depolamada saklar ve yeniden oluşturulduğunda durumu geri yükler.

Bunun bir örneğini, listenin durumunu `SingleChildScrollView` widget'ında sakladığı [Wonderous uygulamasında](https://github.com/gskinnerTeam/flutter-wonderous-app/blob/8a29d6709668980340b1b59c3d3588f123edd4d8/lib/ui/screens/wonder_events/widgets/_events_list.dart#L64) görebilirsiniz.

`List` widget'ı cihaz yönü değiştiğinde yerleşimini değiştiriyorsa, ekran döndürüldüğünde kaydırma konumunu değiştirmek için biraz matematik ([örnek](https://github.com/gskinnerTeam/flutter-wonderous-app/blob/34e49a08084fbbe69ed67be948ab00ef23819313/lib/ui/screens/collection/widgets/_collection_list.dart#L39)) yapmanız gerekebilir.

<a id="best-save-app-state"></a>

## Uygulama durumunu kaydetme (Save app state)

Uygulamalar, cihaz döndüğünde, pencere boyutu değiştiğinde veya cihaz katlanıp açıldığında [uygulama durumunu](https://developer.android.com/jetpack/compose/state#store-state) (app state) korumalı veya geri yüklemelidir. Varsayılan olarak bir uygulama durumunu korumalıdır.

Uygulamanız cihaz yapılandırması sırasında durumunu kaybediyorsa, uygulamanızın kullandığı eklentilerin (plugin) ve yerel uzantıların (native extension) büyük ekran gibi cihaz türünü desteklediğini doğrulayın. Bazı yerel uzantılar cihaz konumunu değiştirdiğinde durumu kaybedebilir.

Bunun yaşandığı gerçek bir olay hakkında daha fazla bilgi için, Flutter blogundaki [Developing Flutter apps for Large screens](https://blog.flutter.dev/developing-flutter-apps-for-large-screens-53b7b0e17f10) yazısındaki [Problem: Folding/unfolding causes state loss](https://blog.flutter.dev/developing-flutter-apps-for-large-screens-53b7b0e17f10#:~:text=Problem%3A%20Folding/Unfolding%20causes%20state%2Dloss) bölümüne göz atın.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-17) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; [Sonraki bölüm ➡️](#bolum-19)

</div>

<a id="bolum-19"></a>

<div align="center">

<sub>BÖLÜM 19 / 19  ·  📱 UYARLANABILIR VE DUYARLI TASARIM</sub>

# 📚 Ek kaynaklar

**Uyarlanabilir uygulamalar yazarken faydalı bulabileceğiniz diğer kaynaklar.**

`UI › Uyarlanabilir tasarım (Adaptive design) › Ek kaynaklar`  ·  🔗 [Orijinal sayfa](https://docs.flutter.dev/ui/adaptive-responsive/more-info)  ·  🗓️ 31.07.2026  ·  `Flutter 3.47`

[⬅️ Önceki bölüm](#bolum-18) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; <sub>Son bölüm ➡️</sub>

</div>

---

<a id="more-examples"></a>

## Örnekler (Examples)

Bu sayfalarda anlatılan uyarlanabilir ve duyarlı kavramların bir araya nasıl geldiğini görmek isterseniz, aşağıdaki uygulamaların kaynak koduna göz atın:

-   [Wonderous](https://github.com/gskinnerTeam/flutter-wonderous-app)
-   [Flutter adaptive demo](https://github.com/gskinnerTeam/flutter-adaptive-demo)

<a id="more-learn-more-about-basic-usability-principles"></a>

## Temel kullanılabilirlik ilkeleri hakkında daha fazla bilgi edinin

Elbette bu sayfalar, göz önünde bulundurabileceğiniz şeylerin kapsamlı bir listesini oluşturmaz. Ne kadar çok işletim sistemini, form faktörünü ve girdi aygıtını destekliyorsanız, tasarımdaki her bir permütasyonu belirlemek o kadar zorlaşır.

Bir geliştirici olarak temel kullanılabilirlik ilkelerini öğrenmeye zaman ayırmak, daha iyi kararlar vermenizi sağlar, üretim sırasında tasarımla yapılan gidiş-geliş yinelemelerini azaltır ve daha iyi sonuçlarla artan verimlilik sağlar.

İşte faydalı bulabileceğiniz bazı kaynaklar:

-   [Android büyük ekran yönergeleri](https://developer.android.com/docs/quality-guidelines/large-screen-app-quality)
-   [Yerleşim düzeni uygulamaya dair Material yönergeleri](https://m3.material.io/foundations/layout/applying-layout/window-size-classes)
-   [Büyük ekranlar için Material Design](https://m2.material.io/blog/material-design-for-large-screens)
-   [Kanonik yerleşimler (canonical layouts) hakkında Material yönergeleri](https://m3.material.io/foundations/layout/canonical-layouts/overview)
-   [Yüksek kaliteli uygulamalar oluşturun (Android)](https://developer.android.com/quality)
-   [Arayüz tasarımında yapılması ve yapılmaması gerekenler (Apple)](https://developer.apple.com/design/tips/)
-   [İnsan Arayüzü Yönergeleri (Apple)](https://developer.apple.com/design/human-interface-guidelines/)
-   [Duyarlı tasarım teknikleri (Microsoft)](https://learn.microsoft.com/windows/apps/design/layout/responsive-design)
-   [Makine boyutları ve kesme noktaları (Microsoft)](https://learn.microsoft.com/windows/apps/design/layout/screen-sizes-and-breakpoints-for-responsive-design)
-   [Flutter ile uyarlanabilir UI nasıl oluşturulur](https://www.youtube.com/watch?v=LeKLGzpsz9I) (How to build Adaptive UI with Flutter), bir Google I/O 2024 videosu.

---

<div align="center">

[⬅️ Önceki bölüm](#bolum-18) &nbsp;·&nbsp; [⬆️ İçindekiler](#icindekiler) &nbsp;·&nbsp; <sub>Son bölüm ➡️</sub>

</div>

---

<a id="kaynak-ve-lisans"></a>

## ⚖️ Kaynak ve lisans

Bu belge, [docs.flutter.dev](https://docs.flutter.dev) sitesindeki sayfaların **gayriresmî** Türkçe çevirisidir; Flutter ekibi tarafından hazırlanmamış ve onaylanmamıştır. Özgün içerik için her bölümün başındaki **Orijinal sayfa** bağlantısına bakın.

Aksi belirtilmedikçe özgün site [Creative Commons Attribution 4.0 International Lisansı](https://creativecommons.org/licenses/by/4.0/) altında, kod örnekleri ise [3-Clause BSD Lisansı](https://opensource.org/licenses/BSD-3-Clause) altında lisanslanmıştır. Bu çeviri de aynı koşullarla paylaşılır.

<div align="center">

[⬆️ Başa dön](#bas)

<sub>Flutter ve Dart, Google LLC'nin ticari markalarıdır.</sub>

</div>
