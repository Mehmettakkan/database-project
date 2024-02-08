use Tedarik_Zinciri_DB;

-- id numarasi 1 olan calisani güncelle
UPDATE calisanlar
	SET calisan_adi = 'Firdevs',
		calisan_soyad = 'Öz'
	WHERE calisan_id = 1;

-- id ve depo id numarasi 1 olan ürünün stok miktarini güncelle
UPDATE depolamak
	SET stok_miktari = 90
    WHERE urun_id = 1 and depo_id = 1;

-- id numarasi 12 olan ürünü güncelle
UPDATE urunler
	SET urun_adi = 'Ev Saati'
    WHERE urun_id = 12;
--

-- id numarasi 20 olan calisani sil
DELETE FROM calisanlar
	WHERE calisan_id = 20;

-- id numarasi 1 olan calisani sil
DELETE FROM magazalar
	WHERE magaza_id = 1;
    
-- id numarasi 15 olan calisani sil
DELETE FROM tedarikciler
	WHERE tedarikci_id = 1;
--
-- urun miktar tablosu olustur ve 
ALTER TABLE urunler
	ADD COLUMN urun_miktar_kontrol INT CHECK (urun_miktar_kontrol >= 0) NOT NULL;

 ALTER TABLE urunler
	DROP COLUMN urun_miktar_kontrol;
--        
SELECT * FROM urunler 
	WHERE urun_turu = "Telefon";
    
SELECT * FROM satin_almak 
	WHERE urun_miktar > 10;
    
SELECT * FROM depolamak 
	WHERE urun_id = 9 AND depo_id = 2;
--
SELECT urun_adi, urun_fiyat, urun_fiyat * 0.18 AS KDV 
FROM urunler 
	WHERE urun_fiyat > 1000;

SELECT urun_adi, urun_fiyat, urun_fiyat = urun_fiyat * 1.1 
FROM urunler 
	WHERE urun_fiyat > 5000;

SELECT * FROM siparisler 
WHERE siparis_tutar > 1000;
--
SELECT * FROM siparisler 
WHERE siparis_tutar > 100 
AND siparis_durum = 'Kargolandı';

SELECT * FROM urunler 
WHERE urun_miktar > 10 
AND urun_turu = 'Telefon';

SELECT * FROM calisanlar 
WHERE calisan_adi = 'Cem' OR calisan_pozisyon = 'Müdür';

SELECT * FROM siparisler 
WHERE siparis_durum = 'Onaylandı' AND siparis_odeme_turu = 'Kredi kartı';
--
SELECT * FROM urunler 
WHERE urun_fiyat BETWEEN 2999.00 AND 12999.00;

SELECT * FROM musteriler 
WHERE musteri_siparis_gecmisi IS NULL;

SELECT * FROM siparisler 
WHERE siparis_adresi LIKE '%istanbul%';

SELECT * FROM musteriler 
WHERE musteri_adi NOT LIKE 'a%';

SELECT * FROM musteriler 
WHERE musteri_odeme_bilgileri IN ('Nakit','Havale');

-- musteriler tablosundaki müşteriler arasında en az bir siparişi olan müşterileri getirecektir.
SELECT * FROM musteriler 
WHERE EXISTS (SELECT 1 FROM siparisler WHERE siparisler.musteri_id = musteriler.musteri_id);
--
SELECT * FROM urunler 
ORDER BY urun_fiyat asc;
SELECT * FROM siparisler 
WHERE siparis_tarih 
BETWEEN '2023-01-01' AND '2023-12-31' 
ORDER BY siparis_tutar DESC;

SELECT * FROM calisanlar 
WHERE calisan_pozisyon = 'Kasiyer' OR calisan_pozisyon = "Depo Sorumlusu" 
ORDER BY calisan_adi ASC;
--
SELECT DISTINCT urun_adi FROM urunler;

SELECT DISTINCT * FROM siparisler;

SELECT COUNT(DISTINCT urun_adi) AS urunler FROM urunler;
--
SELECT urun_adi, LENGTH(urun_adi) AS uzunluk FROM urunler 
ORDER BY uzunluk DESC;

SELECT * FROM musteriler 
WHERE LOWER(musteri_adi) 
LIKE '%ali%';

SELECT musteri_id, CONCAT(musteri_adi, ' ', musteri_soyad) AS tam_isim FROM musteriler;
--
SELECT SUM(siparis_tutar) AS toplam_tutar FROM siparisler;

SELECT COUNT(*) AS kredi_kart_odeme FROM siparisler 
WHERE siparis_odeme_turu 
LIKE "Kredi kartı" ;

SELECT AVG(urun_fiyat) AS ortalama_fiyat FROM urunler;

SELECT * FROM siparisler 
WHERE siparis_tutar < (SELECT AVG(siparis_tutar) FROM siparisler);

-- GROUP BY urun_id, urun_adi ifadesi, her bir ürün için gruplama yapar ve bu durumda MAX ve MIN fonksiyonları ile en az stok ve en fazla stok bulunabilir.
SELECT urun_id, urun_adi, MAX(urun_miktar) AS en_yuksek_stok, MIN(urun_miktar) AS en_dusuk_stok 
FROM urunler 
GROUP BY urun_id, urun_adi;
-- 
SELECT * FROM siparisler 
WHERE DATE(siparis_tarih) 
BETWEEN '2023-01-01' AND '2023-12-31';

-- Bugünün tarihine kadar olan siparişleri listeleme:
SELECT * FROM siparisler 
WHERE DATE(siparis_tarih) <= CURDATE();

-- Siparişlerin gün bazında toplam tutarını bulma, 
-- DATE fonksiyonu kullanılarak sipariş tarihinden sadece gün bilgisi alınmış ve ardından her gün için toplam sipariş tutarı hesaplanmıştır. 
-- GROUP BY ifadesi ile her gün için ayrı bir satır elde edilmiştir.
SELECT DATE(siparis_tarih) AS tarih, SUM(siparis_tutar) AS toplam_tutar 
FROM siparisler 
GROUP BY DATE(siparis_tarih);

--  siparişler tablosundan en yeni 5 siparişi getirmek için LIMIT kullanabilirsiniz:
SELECT * FROM siparisler 
ORDER BY siparis_tarih 
DESC LIMIT 5;

-- musteri_id sütununa göre sipariş sayılarını ve toplam tutarları gruplar. Ayrıca, ROLLUP kullanılarak müşteri bazında bir toplam da gösterilir.
SELECT musteri_id, COUNT(siparis_id) AS siparis_sayisi, SUM(siparis_tutar) AS toplam_tutar 
FROM siparisler 
GROUP BY musteri_id WITH ROLLUP;

SELECT urun_adi, urun_turu, urun_fiyat as ortalama_fiyat 
FROM urunler 
WHERE urun_fiyat < (SELECT AVG(urun_fiyat) FROM urunler);

SELECT urun_turu, SUM(urun_miktar) AS toplam_urun_miktari, SUM(urun_fiyat) as toplam_tutar 
FROM urunler 
GROUP BY urun_turu;

SELECT magaza_turu, COUNT(magaza_id) AS toplam_magaza 
FROM magazalar 
GROUP BY magaza_turu;


-- Her Müşterinin Toplam Harcaması:
SELECT 
	musteriler.musteri_adi, 
    musteriler.musteri_soyad, 
    SUM(siparisler.siparis_tutar) as toplam_harcama
FROM 
	musteriler
JOIN 
	siparisler ON musteriler.musteri_id = siparisler.siparis_id
GROUP BY
	musteriler.musteri_adi, musteriler.musteri_soyad;

-- Her Ürün Kategorisinin Toplam Satış Adedi:
SELECT
    urun_kategorileri.urun_kategori_id,
    urun_kategorileri.urun_kategori_adi,
    COUNT(siparisler.siparis_id) AS toplam_satis_adedi
FROM
    urun_kategorileri
JOIN
    siniflandirmak ON urun_kategorileri.urun_kategori_id = siniflandirmak.urun_kategori_id
JOIN
    urunler ON siniflandirmak.urun_id = urunler.urun_id
JOIN
    satin_almak ON urunler.urun_id = satin_almak.urun_id
JOIN
    siparisler ON satin_almak.siparis_id = siparisler.siparis_id
GROUP BY
    urun_kategorileri.urun_kategori_id, urun_kategorileri.urun_kategori_adi;

-- her magazanin adini türünü ve calisanini donderir
SELECT 
	magazalar.magaza_adi, 
    magazalar.magaza_turu, 
    calisanlar.calisan_adi,
    calisanlar.calisan_soyad,
    calisanlar.calisan_pozisyon
FROM
	magazalar
JOIN
	calisanlar ON magazalar.magaza_id = calisanlar.calisan_id;

-- Teslim edildi tüm siparişlerde yer alan ürünlerin adını, kategorisini ve sipariş tarihini döndürür.    
SELECT
    urunler.urun_adi,
    urun_kategorileri.urun_kategori_adi,
    siparisler.siparis_tarih
FROM
    siparisler
JOIN
    satin_almak ON siparisler.siparis_id = satin_almak.siparis_id
JOIN
    urunler ON satin_almak.urun_id = urunler.urun_id
JOIN
    siniflandirmak ON urunler.urun_id = siniflandirmak.urun_id
JOIN
    urun_kategorileri ON siniflandirmak.urun_kategori_id = urun_kategorileri.urun_kategori_id
WHERE
    siparisler.siparis_durum = 'Teslim edildi';

-- LEFT JOIN ile bir sorgu oluşturunuz.
-- RIGHT JOIN ile bir sorgu oluşturunuz.

-- siparisler tablosundaki tüm siparişleri, 
-- musteriler tablosundan müşteri bilgilerini, 
-- siparis_islemek tablosundan siparişi işleyen çalışan bilgilerini ve calisanlar tablosundan çalışan bilgilerini birleştir.
SELECT siparisler.siparis_id, siparisler.siparis_tarih, siparisler.siparis_tutar, siparisler.siparis_durum, siparisler.siparis_adresi, siparisler.siparis_odeme_turu,
       musteriler.musteri_adi, musteriler.musteri_soyad, musteriler.musteri_adresi, musteriler.musteri_telefonu,
       calisanlar.calisan_adi, calisanlar.calisan_soyad, calisanlar.calisan_telefonu
FROM siparisler
LEFT JOIN musteriler ON siparisler.musteri_id = musteriler.musteri_id
LEFT JOIN siparis_islemek ON siparisler.siparis_id = siparis_islemek.siparis_id
LEFT JOIN calisanlar ON siparis_islemek.calisan_id = calisanlar.calisan_id;

-- her bir mağazanın, eğer varsa, bir tedarikçiyle ilişkilendirilmesini sağlar. 
-- Eğer bir mağazanın tedarikçisi yoksa, bu durumda ilgili alanlarda NULL değerleri olacaktır.
SELECT magazalar.magaza_id, magazalar.magaza_adi, magazalar.magaza_adresi, magazalar.magaza_telefonu, magazalar.magaza_turu,
       tedarik_et.tedarikci_id
FROM magazalar
LEFT JOIN tedarik_et ON magazalar.magaza_id = tedarik_et.magaza_id;

-- her bir ürünün, eğer varsa, bir kategoriyle ilişkilendirilmesini sağlar. 
-- Eğer bir ürünün kategorisi yoksa, ilgili alanlarda NULL değerleri olacaktır.
SELECT urunler.urun_id, urunler.urun_adi, urunler.urun_turu, urunler.urun_miktar, urunler.urun_fiyat,
       urun_kategorileri.urun_kategori_adi
FROM urun_kategorileri
RIGHT JOIN siniflandirmak ON urun_kategorileri.urun_kategori_id = siniflandirmak.urun_kategori_id
RIGHT JOIN urunler ON siniflandirmak.urun_id = urunler.urun_id;

SELECT
  urunler.urun_adi,
  urunler.urun_turu,
  urunler.urun_miktar
FROM
  urunler
LEFT JOIN
  depolamak
ON
  urunler.urun_id = depolamak.urun_id
WHERE
  depolamak.stok_miktari IS NOT NULL;

SELECT
  siparisler.siparis_id,
  siparisler.siparis_tarih,
  siparisler.siparis_tutar,
  siparisler.siparis_durum,
  siparisler.siparis_adresi,
  siparisler.siparis_odeme_turu,
  musteriler.musteri_adi,
  musteriler.musteri_soyad
FROM
  siparisler
JOIN
  musteriler
ON
  siparisler.musteri_id = musteriler.musteri_id
WHERE
  siparisler.siparis_tarih BETWEEN '2023-01-01' AND '2023-12-31';

-- tüm mağazaların isimlerini ve her mağazanın sipariş sayısını döndürür. 
-- Alt sorgu, her mağaza için sipariş sayısını hesaplar ve ana sorgu, alt sorgudaki sonucu "siparis_sayisi" sütununda görüntüler.
SELECT
  magaza_adi,
  (
    SELECT
      COUNT(*)
    FROM
      siparisler
    WHERE
      magaza_id = magazalar.magaza_id
  ) AS siparis_sayisi
FROM
  magazalar;

-- calisanlar tablosunun hem yapısını hem de bilgilerini calisanlar_yeni tablosuna kopyalar.
CREATE TABLE calisanlar_yeni
SELECT
  *
FROM
  calisanlar;
  
  
-- "urunler", "satin_almak" ve "siparisler" tablolarından verileri birleştirerek, 
-- her bir ürün için toplam satış miktarı ve toplam satış tutarını hesaplar.
CREATE VIEW vw_urun_sales AS
SELECT
    u.urun_id,
    u.urun_adi,
    u.urun_turu,
    SUM(sa.urun_miktar) AS toplam_satis_miktari,
    SUM(s.siparis_tutar) AS toplam_satis_tutari
FROM
    urunler u
JOIN
    satin_almak sa ON u.urun_id = sa.urun_id
JOIN
    siparisler s ON sa.siparis_id = s.siparis_id
GROUP BY
    u.urun_id, u.urun_adi, u.urun_turu;
    
SELECT
  *
FROM
  vw_urun_sales;

-- GetProductSales adında bir SQL depolama prosedürü oluşturur. 
-- Bu prosedür, vw_urun_sales görünümünden, belirtilen ürün kimliğine sahip ürünün satış verilerini döndürür.
DELIMITER // 

CREATE PROCEDURE GetProductSales(IN p_product_id INT)
BEGIN
    SELECT
        urun_id,
        urun_adi,
        urun_turu,
        toplam_satis_miktari,
        toplam_satis_tutari
    FROM
        vw_urun_sales
    WHERE
        urun_id = p_product_id;
END //

DELIMITER ;

CALL GetProductSales(1);

-- bir ürün satın alındığında, ürünün stok miktarını güncelleyen bir SQL trigger
DELIMITER //
CREATE TRIGGER update_stock_after_purchase
AFTER INSERT ON satin_almak
FOR EACH ROW
BEGIN
    UPDATE depolamak
    SET stok_miktari = stok_miktari + NEW.urun_miktar
    WHERE urun_id = NEW.urun_id;
END;
//
DELIMITER ;

-- Örnek bir sipariş ve ürün ekleyelim
INSERT INTO siparisler (siparis_tarih, siparis_tutar, siparis_durum, siparis_adresi, siparis_odeme_turu, musteri_id)
VALUES ('2024-01-12 12:00:00', 100.00, 'Yeni', 'Örnek Adres', 'Kredi Kartı', 1);

INSERT INTO urunler (urun_adi, urun_turu, urun_miktar, urun_fiyat)
VALUES ('Ürün 1', 'Elektronik', 10, 10.00);

-- Satın alma işlemi yapalım
INSERT INTO satin_almak (siparis_id, urun_id, urun_miktar)
VALUES (21, 16, 5);

-- bir sipariş eklendiğinde, siparişin toplam tutarını hesaplayan 
-- ve bu tutarı siparisler tablosundaki siparis_tutar sütununa kaydeden bir SQL trigger'ıdır.
DELIMITER //
CREATE TRIGGER calculate_total_order_amount
BEFORE INSERT ON siparisler
FOR EACH ROW
SET NEW.siparis_tutar = (
    SELECT SUM(urun_fiyat * urun_miktar)
    FROM urunler
    JOIN satin_almak ON urunler.urun_id = satin_almak.urun_id
    WHERE satin_almak.siparis_id = NEW.siparis_id
);
//
DELIMITER ;

INSERT INTO siparisler (siparis_tarih, siparis_durum, siparis_adresi, siparis_odeme_turu, musteri_id)
VALUES (NOW(), 'Sipariş alındı', 'İstanbul', 'Kredi kartı', 1);










