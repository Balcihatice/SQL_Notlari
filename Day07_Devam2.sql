--ALTER TABLE
CREATE TABLE personel  (
id int,
isim varchar(50),  sehir varchar(50),  maas int,  
sirket varchar(20),
CONSTRAINT personel_pk PRIMARY KEY (id)
);
INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

SELECT * FROM personel

-- 1) ADD default deger ile tabloya bir field ekleme
ALTER TABLE personel
add zipcode varchar(30)

ALTER TABLE personel
ADD adres varchar(50) DEFAULT 'Turkiye' 
-- DEFAULT yazarsak oluşturduğumuz sütüna belirttiğimiz veriyi tüm satırlara girer


--2) DROP tablodan sutun silme
alter table personel --personel tablosunu guncelle
drop column zipcode;--zipcode sutunu siler

alter table personel drop adres, drop sirket;--iki sutunu silmis olduk

--3) RENAME COLUMN sutun adi degistirme
alter table personel rename column sehir to il;
--sehir adini il yaptik

-- 4) RENAME tablonun ismini degistirme
ALTER TABLE personel
RENAME TO isci

--5)TYPE/SET (modify)sutunlarin ozelliklerini degistirme
ALTER TABLE isci alter COLUMN il type varchar(30),
ALTER COLUMN maas SET NOT NULL;

SELECT * FROM isci

--maasin data type`ini varchar olacak sekilde degistirelim
alter table isci
alter column maas type varchar(30) using(maas::varchar(30))


