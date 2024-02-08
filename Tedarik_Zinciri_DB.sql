-- Tedarik_Zinciri_DB adinda veritabani olustur
create database Tedarik_Zinciri_DB;

-- Tedarik_Zinciri_DB kullan
USE Tedarik_Zinciri_DB;

CREATE TABLE magazalar (
	magaza_id INT NOT NULL AUTO_INCREMENT,
	magaza_adi VARCHAR(255) NOT NULL,
	magaza_adresi VARCHAR(255) NOT NULL,
	magaza_telefonu VARCHAR(255) NOT NULL,
	magaza_turu VARCHAR(255) NOT NULL,
	PRIMARY KEY (magaza_id)
);

CREATE TABLE tedarikciler(
	tedarikci_id INT NOT NULL AUTO_INCREMENT,
	tedarikci_adi VARCHAR(255) NOT NULL,
	tedarikci_adresi VARCHAR(255) NOT NULL,
	tedarikci_telefonu VARCHAR(255) NOT NULL,
	tedarikci_urun_kategorileri VARCHAR(255) NOT NULL,
	PRIMARY KEY (tedarikci_id)
);

CREATE TABLE musteriler (
	musteri_id INT NOT NULL AUTO_INCREMENT,
	musteri_adi VARCHAR(255) NOT NULL,
	musteri_soyad VARCHAR(255) NOT NULL,
	musteri_adresi VARCHAR(255) NOT NULL,
	musteri_telefonu VARCHAR(255) NOT NULL,
	musteri_siparis_gecmisi VARCHAR(255) NOT NULL,
	musteri_odeme_bilgileri VARCHAR(255) NOT NULL,
	PRIMARY KEY (musteri_id)
);

CREATE TABLE siparisler (
	siparis_id INT NOT NULL AUTO_INCREMENT,
	siparis_tarih DATETIME NOT NULL,
	siparis_tutar DECIMAL(10,2) NOT NULL,
	siparis_durum VARCHAR(255) NOT NULL,
	siparis_adresi VARCHAR(255) NOT NULL,
	siparis_odeme_turu VARCHAR(255) NOT NULL,
	musteri_id INT NOT NULL,
	PRIMARY KEY (siparis_id),
	FOREIGN KEY (musteri_id) REFERENCES musteriler (musteri_id)
);

CREATE TABLE calisanlar (
    calisan_id INT NOT NULL AUTO_INCREMENT,
    calisan_adi VARCHAR(255) NOT NULL,
    calisan_soyad VARCHAR(255) NOT NULL,
    calisan_telefonu VARCHAR(255) NOT NULL,
    calisan_pozisyon VARCHAR(255) NOT NULL,
    magaza_id INT,
    PRIMARY KEY (calisan_id),
    FOREIGN KEY (magaza_id) REFERENCES magazalar(magaza_id)
);

CREATE TABLE urunler (
	urun_id INT NOT NULL AUTO_INCREMENT,
	urun_adi VARCHAR(255) NOT NULL,
	urun_turu VARCHAR(255) NOT NULL,
	urun_miktar INT NOT NULL,
	urun_fiyat DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (urun_id)
);

CREATE TABLE urun_kategorileri (
	urun_kategori_id INT NOT NULL AUTO_INCREMENT,
	urun_kategori_adi VARCHAR(255) NOT NULL,
	PRIMARY KEY (urun_kategori_id)
);

CREATE TABLE depolar (
	depo_id INT AUTO_INCREMENT,
	depo_adi VARCHAR(255) NOT NULL,
	PRIMARY KEY (depo_id)
);

CREATE TABLE tedarik_et (
	tedarikci_id INT NOT NULL,
    magaza_id INT NOT NULL,
    PRIMARY KEY (tedarikci_id, magaza_id),
    FOREIGN KEY (tedarikci_id) REFERENCES tedarikciler (tedarikci_id) ON DELETE CASCADE,
    FOREIGN KEY (magaza_id) REFERENCES magazalar (magaza_id) ON DELETE CASCADE
);

CREATE TABLE satin_almak(
	siparis_id INT NOT NULL,
    urun_id INT NOT NULL,
    urun_miktar INT NOT NULL,
    PRIMARY KEY (siparis_id, urun_id),
	FOREIGN KEY (siparis_id) REFERENCES siparisler (siparis_id) ON DELETE CASCADE,
	FOREIGN KEY (urun_id) REFERENCES urunler (urun_id) ON DELETE CASCADE
);

CREATE TABLE siparis_islemek(
	calisan_id INT NOT NULL,
	siparis_id INT NOT NULL,
	PRIMARY KEY (calisan_id, siparis_id),
	FOREIGN KEY (calisan_id) REFERENCES calisanlar (calisan_id) ON DELETE CASCADE,
	FOREIGN KEY (siparis_id) REFERENCES siparisler (siparis_id) ON DELETE CASCADE
);

CREATE TABLE siniflandirmak (
	urun_id INT NOT NULL,
	urun_kategori_id INT NOT NULL,
	PRIMARY KEY (urun_id, urun_kategori_id),
	FOREIGN KEY (urun_id) REFERENCES urunler (urun_id),
	FOREIGN KEY (urun_kategori_id) REFERENCES urun_kategorileri (urun_kategori_id)
);

CREATE TABLE depolamak(
	urun_id INT NOT NULL,
	depo_id INT NOT NULL,
	stok_miktari INT NOT NULL,
	PRIMARY KEY (urun_id, depo_id),
	FOREIGN KEY (urun_id) REFERENCES urunler (urun_id),
	FOREIGN KEY (depo_id) REFERENCES depolar (depo_id)
);