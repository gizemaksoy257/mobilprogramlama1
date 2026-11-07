class Artwork {
  final String id;
  final String title;
  final String artist;
  final String year;
  final String fullImageUrl;
  final String thumbUrl;
  final String videoUrl;
  final int originalWidthPx;
  final int originalHeightPx;
  final double diskSizeMb;
  final String description;

  const Artwork({
    required this.id,
    required this.title,
    required this.artist,
    required this.year,
    required this.fullImageUrl,
    required this.thumbUrl,
    required this.videoUrl,
    required this.originalWidthPx,
    required this.originalHeightPx,
    required this.diskSizeMb,
    required this.description,
  });

  /// Örnek Müze Koleksiyonu (Ultra-High Resolution Arşiv Taramaları)
  static const List<Artwork> sampleMasterpieces = [
    Artwork(
      id: 'mona_lisa',
      title: 'Mona Lisa (La Gioconda)',
      artist: 'Leonardo da Vinci',
      year: '1503-1519',
      fullImageUrl:
          'https://images.unsplash.com/photo-1579783902614-a3fb3927b675?q=80&w=3840&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1579783902614-a3fb3927b675?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 3840,
      originalHeightPx: 2560,
      diskSizeMb: 3.8,
      description:
          'Louvre Müzesi arşivinden 4K taranmış başyapıt. Sfumato tekniği ve fırça katmanlarının analizi için ham arşiv formatında sunulmaktadır.',
    ),
    Artwork(
      id: 'starry_night',
      title: 'Yıldızlı Gece (The Starry Night)',
      artist: 'Vincent van Gogh',
      year: '1889',
      fullImageUrl:
          'https://images.unsplash.com/photo-1579783900882-c0d3dad7b119?q=80&w=3840&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1579783900882-c0d3dad7b119?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 3840,
      originalHeightPx: 3030,
      diskSizeMb: 4.2,
      description:
          'MoMA arşivinden yüksek çözünürlüklü dijitalleştirme kopyası. Kalın impasto boya dokusu yüksek bellek gerektirir.',
    ),
    Artwork(
      id: 'pearl_earring',
      title: 'İnci Küpeli Kız',
      artist: 'Johannes Vermeer',
      year: '1665',
      fullImageUrl:
          'https://images.unsplash.com/photo-1577720643272-265f09367456?q=80&w=3840&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1577720643272-265f09367456?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 4000,
      originalHeightPx: 3000,
      diskSizeMb: 4.8,
      description:
          'Mauritshuis Müzesi koleksiyonundan 12 megapiksellik mikroskopik tarama.',
    ),
    Artwork(
      id: 'tortoise_trainer',
      title: 'Kaplumbağa Terbiyecisi',
      artist: 'Osman Hamdi Bey',
      year: '1906',
      fullImageUrl:
          'https://images.unsplash.com/photo-1578926375605-eaf7559b1458?q=80&w=3840&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1578926375605-eaf7559b1458?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 3600,
      originalHeightPx: 2400,
      diskSizeMb: 3.5,
      description:
          'Pera Müzesi koleksiyonundan taranmış Türk resim sanatının en değerli simge eseri.',
    ),
    Artwork(
      id: 'great_wave',
      title: 'Kanagawa Açıklarında Büyük Dalga',
      artist: 'Katsushika Hokusai',
      year: '1831',
      fullImageUrl:
          'https://images.unsplash.com/photo-1582561424760-0321d75e81fa?q=80&w=3840&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1582561424760-0321d75e81fa?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 3840,
      originalHeightPx: 2600,
      diskSizeMb: 3.9,
      description:
          'Ukiyo-e ahşap baskı sanatının zirvesi. Pigment ve kağıt liflerinin ultra netlikte taranmış kopyası.',
    ),
    Artwork(
      id: 'venus_birth',
      title: 'Venüs\'ün Doğuşu',
      artist: 'Sandro Botticelli',
      year: '1485',
      fullImageUrl:
          'https://images.unsplash.com/photo-1579783901586-d88db74b4fe4?q=80&w=4096&auto=format&fit=crop',
      thumbUrl:
          'https://images.unsplash.com/photo-1579783901586-d88db74b4fe4?q=80&w=600&auto=format&fit=crop',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      originalWidthPx: 4096,
      originalHeightPx: 2560,
      diskSizeMb: 5.1,
      description:
          'Uffizi Galerisi restorasyon projesi 4K master kaydı.',
    ),
  ];
}
