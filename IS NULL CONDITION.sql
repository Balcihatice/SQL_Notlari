--IS NULL CONDITION
CREATE TABLE insanlar (
ssn char(9),
isim varchar(50),
adres varchar(50) 
);


INSERT INTO insanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO insanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO insanlar VALUES(345678901, 'Mine Bulut', 'Izmir');  
INSERT INTO insanlar (ssn, adres) VALUES(456789012, 'Bursa'); 
INSERT INTO insanlar (ssn, adres) VALUES(567890123, 'Denizli');

SELECT * FROM insanlar;

--name sutununda null olan degerleri sorgulayin
SELECT isim FROM insanlar WHERE isim IS NULL; --null degerleri getirir

--insanlar tablosunda sadece null olmayan degerleri listeleyin
SELECT isim FROM insanlar WHERE isim IS NOT NULL;

-- Insanlar toplasunda null değer almış verileri Isim Girilmemis olarak değiştiriniz
UPDATE insanlar
SET isim = 'Isim Girilmemis' WHERE isim IS NULL;































