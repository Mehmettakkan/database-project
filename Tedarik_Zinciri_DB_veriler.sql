use Tedarik_Zinciri_DB;

INSERT INTO magazalar(magaza_id, magaza_adi, magaza_adresi, magaza_telefonu, magaza_turu) VALUES
    (1, 'Elite Elektronik', '123 Teknoloji Caddesi, İstanbul', '(555) 123-4567', 'Elektronik'),
    (2, 'Moda Giyim', '456 Moda Sokak, Ankara', '(555) 234-5678', 'Giyim'),
    (3, 'Aksesuar Dünyası', '789 Moda Bulvarı, İzmir', '(555) 345-6789', 'Aksesuar'),
    (4, 'Kitap Köşesi', '101 Edebiyat Caddesi, Bursa', '(555) 456-7890', 'Kitap'),
    (5, 'Spor Haritası', '202 Spor Sokağı, Antalya', '(555) 567-8901', 'Spor'),
    (6, 'Gurmelerin Mekanı', '303 Lezzet Bulvarı, Adana', '(555) 678-9012', 'Restoran'),
    (7, 'Mobilya Dünyası', '404 Ev Eşyaları Caddesi, Eskişehir', '(555) 789-0123', 'Mobilya'),
    (8, 'Çiçek Bahçesi', '505 Bahar Bulvarı, Mersin', '(555) 890-1234', 'Çiçekçi'),
    (9, 'Hızlı Teknoloji', '606 Hızlı Sokak, Gaziantep', '(555) 901-2345', 'Elektronik'),
    (10, 'Trendy Moda', '707 Moda Caddesi, Trabzon', '(555) 012-3456', 'Giyim'),
    (11, 'Kreatif Aksesuarlar', '808 Sanat Bulvarı, Diyarbakır', '(555) 123-9876', 'Aksesuar'),
    (12, 'Bilgi Kitapları', '909 Bilgi Sokağı, Samsun', '(555) 234-8765', 'Kitap'),
    (13, 'Aktif Yaşam', '101 Spor Bulvarı, Balıkesir', '(555) 345-7654', 'Spor'),
    (14, 'Lezzet Köşesi', '202 Lezzet Caddesi, Denizli', '(555) 456-6543', 'Restoran'),
    (15, 'Ev Konforu', '303 Evimiz Sokağı, Kayseri', '(555) 567-5432', 'Mobilya'),
    (16, 'Çiçek Rüyası', '404 Çiçekler Sokağı, Aydın', '(555) 678-4321', 'Çiçekçi'),
    (17, 'Teknoloji Hazinesi', '505 Teknoloji Bulvarı, Konya', '(555) 789-3210', 'Elektronik'),
    (18, 'Şık Moda', '606 Şıklık Caddesi, Malatya', '(555) 890-2109', 'Giyim'),
    (19, 'El Sanatları Evi', '707 Sanat Sokağı, Hatay', '(555) 012-1098', 'El Sanatları'),
    (20, 'Gezgin Kitaplar', '808 Gezi Bulvarı, Zonguldak', '(555) 123-4560', 'Kitap');
    
INSERT INTO tedarikciler(tedarikci_id, tedarikci_adi, tedarikci_adresi, tedarikci_telefonu, tedarikci_urun_kategorileri) VALUES
(1, 'Ahmet Elektronik', 'İstanbul, Kadıköy, Bağdat Caddesi', '0216 345 6789', 'Elektronik'),
(2, 'Barış Tekstil', 'İstanbul, Beyoğlu, İstiklal Caddesi', '0212 456 7890', 'Tekstil'),
(3, 'Can Gıda', 'İstanbul, Şişli, Mecidiyeköy', '0212 567 8901', 'Gıda'),
(4, 'Deniz Kimya', 'İstanbul, Ümraniye, Dudullu Organize Sanayi Bölgesi', '0216 678 9012', 'Kimya'),
(5, 'Efe İnşaat', 'İstanbul, Esenler, Otogar', '0212 789 0123', 'İnşaat'),
(6, 'Fatma Temizlik', 'İstanbul, Bakırköy, Ataköy', '0212 890 1234', 'Temizlik'),
(7, 'Gökhan Lojistik', 'İstanbul, Pendik, Kurtköy', '0216 901 2345', 'Lojistik'),
(8, 'Hasan Tarım', 'İstanbul, Büyükçekmece, Silivri Caddesi', '0212 012 3456', 'Tarım'),
(9, 'İbrahim Bilgisayar', 'İstanbul, Fatih, Eminönü', '0212 123 4567', 'Bilgisayar'),
(10, 'Kemal Ofis Malzemeleri', 'İstanbul, Şişli, Beşiktaş Caddesi', '0212 234 5678', 'Ofis Malzemeleri'),
(11, 'Levent Nakliye', 'İstanbul, Zeytinburnu, Zeytinburnu Limanı', '0212 345 6789', 'Nakliye'),
(12, 'Murat Mühendislik', 'İstanbul, Kadıköy, Göztepe', '0216 456 7890', 'Mühendislik'),
(13, 'Nazlı Eğitim', 'İstanbul, Üsküdar, Altunizade', '0216 567 8901', 'Eğitim'),
(14, 'Oğuz Reklam', 'İstanbul, Beylikdüzü, Marmara Forum', '0212 678 9012', 'Reklam'),
(15, 'Pelin Sağlık', 'İstanbul, Bakırköy, İncirli', '0212 789 0123', 'Sağlık'),
(16, 'Rıza Yemek', 'İstanbul, Fatih, Aksaray', '0212 890 1234', 'Yemek'),
(17, 'Selim Metal', 'İstanbul, Esenyurt, Oto Center', '0212 901 2345', 'Metal'),
(18, 'Tuğba Turizm', 'İstanbul, Kadıköy, Söğütlüçeşme', '0216 012 3456', 'Turizm'),
(19, 'Fatma Tekstil', 'İstanbul, Kadıköy, Moda', '0216 345 6789', 'Tekstil'),
(20, 'Hasan Tarım', 'İstanbul, Büyükçekmece, Silivri Caddesi', '0212 012 3456', 'Tarım Ürünleri');

INSERT INTO musteriler(musteri_id, musteri_adi, musteri_soyad, musteri_adresi, musteri_telefonu, musteri_siparis_gecmisi,musteri_odeme_bilgileri) VALUES
(1, 'Ali', 'Yılmaz', 'İstanbul, Kadıköy, Göztepe Mahallesi, Atatürk Caddesi, No:10', '0535 123 45 67', '2022-01-01, 2022-02-02, 2022-03-03', 'Kredi kartı'),
(2, 'Ayşe', 'Küçük', 'Ankara, Çankaya, Kızılay Mahallesi, Tuna Caddesi, No:20', '0536 789 01 23', '2022-04-04, 2022-05-05, 2022-06-06', 'Banka kartı'),
(3, 'Mehmet', 'Arslan', 'İzmir, Konak, Alsancak Mahallesi, Kordonboyu Caddesi, No:30', '0537 901 23 45', '2022-07-07, 2022-08-08, 2022-09-09', 'Nakit'),
(4, 'Fatma', 'Demir', 'Bursa, Osmangazi, Nilüfer Mahallesi, Emek Caddesi, No:40', '0538 012 34 56', '2022-10-10, 2022-11-11, 2022-12-12', 'Havale'),
(5, 'Hasan', 'Yıldız', 'Antalya, Muratpaşa, Lara Mahallesi, Konyaaltı Caddesi, No:50', '0539 123 45 67', '2023-01-01, 2023-02-02, 2023-03-03', 'Kredi kartı'),
(6, 'Zeynep', 'Aydın', 'Adana, Seyhan, Çukurova Mahallesi, Adnan Menderes Bulvarı, No:60', '0536 789 01 23', '2023-04-04, 2023-05-05, 2023-06-06', 'Banka kartı'),
(7, 'Mustafa', 'Gök', 'Eskişehir, Odunpazarı, Tepebaşı Mahallesi, Atatürk Caddesi, No:70', '0537 901 23 45', '2023-07-07, 2023-08-08, 2023-09-09', 'Nakit'),
(8, 'Elif', 'Kırmızı', 'Samsun, İlkadım, Kale Mahallesi, Samsun Bulvarı, No:80', '0538 012 34 56', '2023-10-10, 2023-11-11, 2023-12-12', 'Havale'),
(9, 'Ahmet', 'Yeşil', 'Trabzon, Ortahisar, Çarşı Mahallesi, Cumhuriyet Caddesi, No:90', '0539 123 45 67', '2024-01-01, 2024-02-02, 2024-03-03', 'Kredi kartı'),
(10, 'Hakan', 'Sarı', 'Aydın, Aydın Merkez, Efeler Mahallesi, Efeler Caddesi, No:210', '0549 123 45 67', '2026-07-07, 2026-08-08, 2026-09-09', 'Nakit'),
(11, 'Yusuf', 'Gül', 'Kocaeli, İzmit, Yahya Kaptan Mahallesi, Yahya Kaptan Caddesi, No:110', '0540 234 56 78', '2024-04-04, 2024-05-05, 2024-06-06', 'Banka kartı'),
(12, 'Hatice', 'Taş', 'Sakarya, Adapazarı, Adapazarı Mahallesi, Atatürk Bulvarı, No:120', '0541 345 67 89', '2024-07-07, 2024-08-08, 2024-09-09', 'Nakit'),
(13, 'Oğuz', 'Kılıç', 'Balıkesir, Balıkesir Merkez, Atatürk Mahallesi, Atatürk Bulvarı, No:130', '0542 456 78 90', '2024-10-10, 2024-11-11, 2024-12-12', 'Havale'),
(14, 'Zehra', 'Yıldız', 'Manisa, Manisa Merkez, Yunusemre Mahallesi, Şehzadeler Caddesi, No:140', '0543 567 89 01', '2025-01-01, 2025-02-02, 2025-03-03', 'Kredi kartı'),
(15, 'Mustafa', 'Kırmızı', 'Afyonkarahisar, Afyonkarahisar Merkez, Zafer Mahallesi, Atatürk Caddesi, No:150', '0544 678 90 12', '2025-04-04, 2025-05-05, 2025-06-06', 'Banka kartı'),
(16, 'Ayşe', 'Yeşil', 'Kütahya, Kütahya Merkez, Cumhuriyet Mahallesi, Cumhuriyet Caddesi, No:160', '0545 789 01 23', '2025-07-07, 2025-08-08, 2025-09-09', 'Nakit'),
(17, 'Mehmet', 'Gül', 'Uşak, Uşak Merkez, Ulubey Mahallesi, Ulubey Caddesi, No:170', '0546 901 23 45', '2025-10-10, 2025-11-11, 2025-12-12', 'Havale'),
(18, 'Fatma', 'Taş', 'Isparta, Isparta Merkez, Atabey Mahallesi, Atabey Caddesi, No:180', '0547 012 34 56', '2026-01-01, 2026-02-02, 2026-03-03', 'Kredi kartı'),
(19, 'Hasan', 'Kılıç', 'Burdur, Burdur Merkez, Merkez Mahallesi, Merkez Caddesi, No:190', '0548 012 34 56', '2026-04-04, 2026-05-05, 2026-06-06', 'Banka kartı'),
(20, 'Merve', 'Gül', 'Muğla, Muğla Merkez, Bodrum Mahallesi, Bodrum Caddesi, No:220', '0550 234 56 78', '2027-01-01, 2027-02-02, 2027-03-03', 'Havale');

INSERT INTO siparisler(siparis_id, siparis_tarih, siparis_tutar, siparis_durum, siparis_adresi, siparis_odeme_turu, musteri_id) VALUES
(1, '2023-03-08 12:00:00', 1000.00, 'Onaylandı', 'İstanbul, Kadıköy, Göztepe Mahallesi, Atatürk Caddesi, No:10', 'Kredi kartı', 1),
(2, '2023-03-15 14:00:00', 2000.00, 'Kargolandı', 'Ankara, Çankaya, Kızılay Mahallesi, Tuna Caddesi, No:20', 'Banka kartı', 2),
(3, '2023-03-22 16:00:00', 3000.00, 'Teslim edildi', 'İzmir, Konak, Alsancak Mahallesi, Kordonboyu Caddesi, No:30', 'Nakit', 3),
(4, '2023-03-29 18:00:00', 4000.00, 'İptal edildi', 'Bursa, Osmangazi, Nilüfer Mahallesi, Emek Caddesi, No:40', 'Havale', 4),
(5, '2023-04-05 20:00:00', 5000.00, 'Hazırlanıyor', 'Antalya, Muratpaşa, Lara Mahallesi, Konyaaltı Caddesi, No:50', 'Kredi kartı', 5),
(6, '2023-04-12 22:00:00', 6000.00, 'Teslimat için hazırlanıyor', 'Adana, Seyhan, Çukurova Mahallesi, Adnan Menderes Bulvarı, No:60', 'Banka kartı', 6),
(7, '2023-04-19 00:00:00', 7000.00, 'Teslim edildi', 'Eskişehir, Odunpazarı, Tepebaşı Mahallesi, Atatürk Caddesi, No:70', 'Nakit', 7),
(8, '2023-05-06 02:00:00', 8000.00, 'İptal edildi', 'Samsun, İlkadım, Kale Mahallesi, Samsun Bulvarı, No:80', 'Havale', 8),
(9, '2023-05-13 04:00:00', 9000.00, 'Onaylandı', 'Trabzon, Ortahisar, Çarşı Mahallesi, Cumhuriyet Caddesi, No:90', 'Kredi kartı', 9),
(10, '2023-05-20 06:00:00', 10000.00, 'Kargolandı', 'Aydın, Aydın Merkez, Efeler Mahallesi, Efeler Caddesi, No:210', 'Banka kartı', 10),
(11, '2023-05-27 08:00:00', 11000.00, 'Teslim edildi', 'Kocaeli, İzmit, Yahya Kaptan Mahallesi, Yahya Kaptan Caddesi, No:110', 'Nakit', 11),
(12, '2023-06-03 10:00:00', 12000.00, 'İptal edildi', 'Sakarya, Adapazarı, Adapazarı Mahallesi, Atatürk Bulvarı, No:120', 'Havale', 12),
(13, '2023-08-20 08:00:00', 23000.00, 'Teslim edildi', 'Balıkesir, Balıkesir Merkez, Atatürk Mahallesi, Atatürk Bulvarı, No:130', 'Havale', 13),
(14, '2023-06-16 14:00:00', 14000.00, 'Kargolandı', 'Manisa, Manisa Merkez, Yunusemre Mahallesi, Şehzadeler Caddesi, No:140', 'Banka kartı', 14),
(15, '2023-06-23 16:00:00', 15000.00, 'Teslim edildi', 'Afyonkarahisar, Afyonkarahisar Merkez, Zafer Mahallesi, Atatürk Caddesi, No:150', 'Nakit', 15),
(16, '2023-07-01 18:00:00', 16000.00, 'İptal edildi', 'Kütahya, Kütahya Merkez, Cumhuriyet Mahallesi, Cumhuriyet Caddesi, No:160', 'Havale', 16),
(17, '2023-07-08 20:00:00', 17000.00, 'Hazırlanıyor', 'Uşak, Uşak Merkez, Ulubey Mahallesi, Ulubey Caddesi, No:170', 'Kredi kartı', 17),
(18, '2023-07-15 22:00:00', 18000.00, 'Teslimat için hazırlanıyor', 'Isparta, Isparta Merkez, Atabey Mahallesi, Atabey Caddesi, No:180', 'Banka kartı', 18),
(19, '2023-07-22 01:00:00', 19000.00, 'Teslim edildi', 'Burdur, Burdur Merkez, Merkez Mahallesi, Merkez Caddesi, No:190', 'Nakit', 19),
(20, '2023-07-29 02:00:00', 20000.00, 'İptal edildi', 'Muğla, Muğla Merkez, Bodrum Mahallesi, Bodrum Caddesi, No:220', 'Havale', 20);

INSERT INTO calisanlar(calisan_id, calisan_adi, calisan_soyad, calisan_telefonu, calisan_pozisyon, magaza_id) VALUES
    (1, 'Mehmet', 'Akkan', '5553450565', 'Kasiyer', 1),
    (2, 'Ayşe', 'Yılmaz', '5554567890', 'Satış Danışmanı', 2),
    (3, 'Ahmet', 'Demir', '5555678901', 'Depo Görevlisi', 3),
    (4, 'Elif', 'Kaya', '5556789012', 'Müdür', 4),
    (5, 'Cem', 'Toprak', '5557890123', 'Satış Temsilcisi', 5),
    (6, 'Deniz', 'Çelik', '5558901234', 'Garson', 6),
    (7, 'Gizem', 'Şahin', '5559012345', 'Depo Sorumlusu', 7),
    (8, 'Kaan', 'Yıldırım', '5550123456', 'Kasiyer', 8),
    (9, 'Duygu', 'Güler', '5551234567', 'Satış Danışmanı', 9),
    (10, 'Can', 'Yılmaz', '5552345678', 'Depo Görevlisi', 10),
    (11, 'Emre', 'Özdemir', '5553456789', 'Müdür', 11),
    (12, 'Burcu', 'Aydın', '5554567890', 'Satış Temsilcisi', 12),
    (13, 'Fatih', 'Aksoy', '5555678901', 'Garson', 13),
    (14, 'Ezgi', 'Çetin', '5556789012', 'Depo Sorumlusu', 14),
    (15, 'Oğuz', 'Kurtuluş', '5557890123', 'Kasiyer', 15),
    (16, 'İrem', 'Aydın', '5558901234', 'Satış Danışmanı', 16),
    (17, 'Berk', 'Aydın', '5559012345', 'Depo Görevlisi', 17),
    (18, 'Selin', 'Demir', '5550123456', 'Müdür', 18),
    (19, 'Umut', 'Kaya', '5551234567', 'Satış Temsilcisi', 19),
    (20, 'Zeynep', 'Toprak', '5552345678', 'Garson', 20);

INSERT INTO urunler (urun_id, urun_adi, urun_turu, urun_miktar, urun_fiyat) VALUES
(1, 'iPhone 14 Pro Max', 'Telefon', 10, 15999),
(2, 'Samsung Galaxy S23 Ultra', 'Telefon', 15, 14999),
(3, 'Apple Watch Series 8', 'Akıllı saat', 20, 6999),
(4, 'Sony PlayStation 5', 'Oyun konsolu', 25, 12999),
(5, 'Samsung QN95B Neo QLED 8K TV', 'Televizyon', 30, 29999),
(6, 'Kadın takım elbise', 'Takım elbise', 20, 2999),
(7, 'Erkek gömlek', 'Gömlek', 30, 249),
(8, 'Kadın elbise', 'Elbise', 40, 399),
(9, 'Erkek pantolon', 'Pantolon', 50, 299),
(10, 'Kadın ayakkabı', 'Ayakkabı', 60, 349),
(11, 'Güneş gözlüğü', 'Güneş gözlüğü', 20, 299),
(12, 'Saat', 'Saat', 30, 1999),
(13, 'Bileklik', 'Bileklik', 40, 99),
(14, 'Kolye', 'Kolye', 50, 149),
(15, 'Küpe', 'Küpe', 60, 79),
(16, 'Harry Potter ve Felsefe Taşı', 'Roman', 20, 79),
(17, 'Satranç', 'Oyun', 30, 149),
(18, '1984', 'Roman', 40, 99),
(19, 'Suç ve Ceza', 'Roman', 50, 129),
(20, 'Gül Havası', 'Şiir', 60, 69),
(21, 'Antrenman ayakkabısı', 'Ayakkabı', 20, 599),
(22, 'Futbol topu', 'Top', 30, 99),
(23, 'Basketbol topu', 'Top', 40, 149),
(24, 'Tenis raketi', 'Raket', 50, 299),
(25, 'Bisiklet', 'Bisiklet', 60, 2999);

INSERT INTO urun_kategorileri (urun_kategori_id, urun_kategori_adi) VALUES 
(1, 'Elektronik'),
(2, 'Giysi'),
(3, 'Ayakkabı'),
(4, 'Aksesuar'),
(5, 'Kitap'),
(6, 'Spor Malzemeleri');
    
INSERT INTO depolar(depo_id, depo_adi) VALUES
    (1, 'Elite Elektronik Deposu'),
    (2, 'Moda Giyim Deposu'),
    (3, 'Aksesuar Dünyası Deposu'),
    (4, 'Kitap Köşesi Deposu'),
    (5, 'Spor Haritası Deposu'),
    (6, 'Gurmelerin Mekanı Deposu'),
    (7, 'Mobilya Dünyası Deposu'),
    (8, 'Çiçek Bahçesi Deposu'),
    (9, 'Hızlı Teknoloji Deposu'),
    (10, 'Trendy Moda Deposu'),
    (11, 'Kreatif Aksesuarlar Deposu'),
    (12, 'Bilgi Kitapları Deposu'),
    (13, 'Aktif Yaşam Deposu'),
    (14, 'Lezzet Köşesi Deposu'),
    (15, 'Ev Konforu Deposu'),
    (16, 'Çiçek Rüyası Deposu'),
    (17, 'Teknoloji Hazinesi Deposu'),
    (18, 'Şık Moda Deposu'),
    (19, 'El Sanatları Evi Deposu'),
    (20, 'Gezgin Kitaplar Deposu');
    
INSERT INTO tedarik_et (tedarikci_id, magaza_id) VALUES
(1, 1),  -- Ahmet Elektronik - Elite Elektronik
(2, 2),  -- Barış Tekstil - Moda Giyim
(3, 3),  -- Can Gıda - Aksesuar Dünyası
(4, 4),  -- Deniz Kimya - Kitap Köşesi
(5, 5),  -- Efe İnşaat - Spor Haritası
(6, 6),  -- Fatma Temizlik - Gurmelerin Mekanı
(7, 7),  -- Gökhan Lojistik - Mobilya Dünyası
(8, 8),  -- Hasan Tarım - Çiçek Bahçesi
(9, 9),  -- İbrahim Bilgisayar - Hızlı Teknoloji
(10, 10),  -- Kemal Ofis Malzemeleri - Trendy Moda
(11, 11),  -- Levent Nakliye - Kreatif Aksesuarlar
(12, 12),  -- Murat Mühendislik - Bilgi Kitapları
(13, 13),  -- Nazlı Eğitim - Aktif Yaşam
(14, 14),  -- Oğuz Reklam - Lezzet Köşesi
(15, 15),  -- Pelin Sağlık - Ev Konforu
(16, 16),  -- Rıza Yemek - Çiçek Rüyası
(17, 17),  -- Selim Metal - Teknoloji Hazinesi
(18, 18),  -- Tuğba Turizm - Şık Moda
(19, 19),  -- Fatma Tekstil - El Sanatları Evi
(20, 20);  -- Hasan Tarım - Gezgin Kitaplar


INSERT INTO satin_almak (siparis_id, urun_id, urun_miktar) VALUES
(1, 1, 1),   -- 1. siparişten iPhone 14 Pro Max ürününden 1 adet
(2, 2, 2),   -- 2. siparişten Samsung Galaxy S23 Ultra ürününden 2 adet
(3, 3, 3),   -- 3. siparişten Apple Watch Series 8 ürününden 3 adet
(4, 4, 4),   -- 4. siparişten Sony PlayStation 5 ürününden 4 adet
(5, 5, 5),   -- 5. siparişten Samsung QN95B Neo QLED 8K TV ürününden 5 adet
(6, 6, 6),   -- 6. siparişten Kadın takım elbise ürününden 6 adet
(7, 7, 7),   -- 7. siparişten Erkek gömlek ürününden 7 adet
(8, 8, 8),   -- 8. siparişten Kadın elbise ürününden 8 adet
(9, 9, 9),   -- 9. siparişten Erkek pantolon ürününden 9 adet
(10, 10, 10),   -- 10. siparişten Kadın ayakkabı ürününden 10 adet
(11, 11, 11),   -- 11. siparişten Güneş gözlüğü ürününden 11 adet
(12, 12, 12),   -- 12. siparişten Saat ürününden 12 adet
(13, 13, 13),   -- 13. siparişten Bileklik ürününden 13 adet
(14, 14, 14),   -- 14. siparişten Kolye ürününden 14 adet
(15, 15, 15),   -- 15. siparişten Küpe ürününden 15 adet
(16, 16, 16),   -- 16. siparişten Harry Potter ve Felsefe Taşı ürününden 16 adet
(17, 17, 17),   -- 17. siparişten Satranç ürününden 17 adet
(18, 18, 18),   -- 18. siparişten 1984 ürününden 18 adet
(19, 19, 19),   -- 19. siparişten Suç ve Ceza ürününden 19 adet
(20, 20, 20);   -- 20. siparişten Gül Havası ürününden 20 adet

INSERT INTO siparis_islemek (calisan_id, siparis_id) VALUES
(1, 1),    -- 1. siparişi işleyen çalışan
(2, 2),    -- 2. siparişi işleyen çalışan
(3, 3),    -- 3. siparişi işleyen çalışan
(4, 4),    -- 4. siparişi işleyen çalışan
(5, 5),    -- 5. siparişi işleyen çalışan
(6, 6),    -- 6. siparişi işleyen çalışan
(7, 7),    -- 7. siparişi işleyen çalışan
(8, 8),    -- 8. siparişi işleyen çalışan
(9, 9),    -- 9. siparişi işleyen çalışan
(10, 10),  -- 10. siparişi işleyen çalışan
(11, 11),  -- 11. siparişi işleyen çalışan
(12, 12),  -- 12. siparişi işleyen çalışan
(13, 13),  -- 13. siparişi işleyen çalışan
(14, 14),  -- 14. siparişi işleyen çalışan
(15, 15),  -- 15. siparişi işleyen çalışan
(16, 16),  -- 16. siparişi işleyen çalışan
(17, 17),  -- 17. siparişi işleyen çalışan
(18, 18),  -- 18. siparişi işleyen çalışan
(19, 19),  -- 19. siparişi işleyen çalışan
(20, 20);  -- 20. siparişi işleyen çalışan

INSERT INTO siniflandirmak (urun_id, urun_kategori_id) VALUES
(1, 1),    -- iPhone 14 Pro Max, Elektronik
(2, 1),    -- Samsung Galaxy S23 Ultra, Elektronik
(3, 1),    -- Apple Watch Series 8, Elektronik
(4, 1),    -- Sony PlayStation 5, Elektronik
(5, 1),    -- Samsung QN95B Neo QLED 8K TV, Elektronik
(6, 2),    -- Kadın takım elbise, Giysi
(7, 2),    -- Erkek gömlek, Giysi
(8, 2),    -- Kadın elbise, Giysi
(9, 2),    -- Erkek pantolon, Giysi
(10, 3),   -- Kadın ayakkabı, Ayakkabı
(11, 4),   -- Güneş gözlüğü, Aksesuar
(12, 4),   -- Saat, Aksesuar
(13, 4),   -- Bileklik, Aksesuar
(14, 4),   -- Kolye, Aksesuar
(15, 4),   -- Küpe, Aksesuar
(16, 5),   -- Harry Potter ve Felsefe Taşı, Kitap
(17, 5),   -- Satranç, Kitap
(18, 5),   -- 1984, Kitap
(19, 5),   -- Suç ve Ceza, Kitap
(20, 5),   -- Gül Havası, Kitap
(21, 6),   -- Antrenman ayakkabısı, Spor Malzemeleri
(22, 6),   -- Futbol topu, Spor Malzemeleri
(23, 6),   -- Basketbol topu, Spor Malzemeleri
(24, 6),   -- Tenis raketi, Spor Malzemeleri
(25, 6);   -- Bisiklet, Spor Malzemeleri

INSERT INTO depolamak (urun_id, depo_id, stok_miktari) VALUES
(1, 1, 10),    -- iPhone 14 Pro Max, Elite Elektronik Deposu, 10 adet
(2, 1, 15),    -- Samsung Galaxy S23 Ultra, Elite Elektronik Deposu, 15 adet
(3, 1, 20),    -- Apple Watch Series 8, Elite Elektronik Deposu, 20 adet
(4, 1, 25),    -- Sony PlayStation 5, Elite Elektronik Deposu, 25 adet
(5, 1, 30),    -- Samsung QN95B Neo QLED 8K TV, Elite Elektronik Deposu, 30 adet
(6, 2, 20),    -- Kadın takım elbise, Moda Giyim Deposu, 20 adet
(7, 2, 30),    -- Erkek gömlek, Moda Giyim Deposu, 30 adet
(8, 2, 40),    -- Kadın elbise, Moda Giyim Deposu, 40 adet
(9, 2, 50),    -- Erkek pantolon, Moda Giyim Deposu, 50 adet
(10, 3, 60),   -- Kadın ayakkabı, Aksesuar Dünyası Deposu, 60 adet
(11, 4, 20),   -- Güneş gözlüğü, Kitap Köşesi Deposu, 20 adet
(12, 4, 30),   -- Saat, Kitap Köşesi Deposu, 30 adet
(13, 4, 40),   -- Bileklik, Kitap Köşesi Deposu, 40 adet
(14, 4, 50),   -- Kolye, Kitap Köşesi Deposu, 50 adet
(15, 4, 60),   -- Küpe, Kitap Köşesi Deposu, 60 adet
(16, 5, 20),   -- Harry Potter ve Felsefe Taşı, Spor Haritası Deposu, 20 adet
(17, 5, 30),   -- Satranç, Spor Haritası Deposu, 30 adet
(18, 5, 40),   -- 1984, Spor Haritası Deposu, 40 adet
(19, 5, 50),   -- Suç ve Ceza, Spor Haritası Deposu, 50 adet
(20, 5, 60),   -- Gül Havası, Spor Haritası Deposu, 60 adet
(21, 6, 20),   -- Antrenman ayakkabısı, Gurmelerin Mekanı Deposu, 20 adet
(22, 6, 30),   -- Futbol topu, Gurmelerin Mekanı Deposu, 30 adet
(23, 6, 40),   -- Basketbol topu, Gurmelerin Mekanı Deposu, 40 adet
(24, 6, 50),   -- Tenis raketi, Gurmelerin Mekanı Deposu, 50 adet
(25, 6, 60);   -- Bisiklet, Gurmelerin Mekanı Deposu, 60 adet
