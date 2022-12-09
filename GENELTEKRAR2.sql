CREATE TABLE calisanlar (
id int,
isim VARCHAR(50),
sehir VARCHAR(50), maas int,
isyeri VARCHAR(20) 
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko'); 
INSERT INTO calisanlar VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki'); 
INSERT INTO calisanlar VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko'); 
INSERT INTO calisanlar VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin'); 
INSERT INTO calisanlar VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas'); 
INSERT INTO calisanlar VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin'); 
INSERT INTO calisanlar VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');
INSERT INTO calisanlar VALUES(123456712, 'Fatma Kara', 'Bursa', 4500, 'Setrems');
CREATE TABLE markalar
(
marka_id int,
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO markalar VALUES(100, 'Vakko', 12000); 
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000); 
INSERT INTO markalar VALUES(102, 'Adidas', 10000); 
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

select * from calisanlar;
select * from markalar;

select isim,maas,isyeri from calisanlar where isyeri in(
select marka_isim from markalar where calisan_sayisi>15000);


select isim, maas,sehir from calisanlar where isyeri in(
select marka_isim from markalar where marka_id>101);

select marka_id,marka_isim,(select count(sehir) from calisanlar where marka_isim=isyeri) as sehir_sayisi
from markalar;

select marka_isim,calisan_sayisi,(select sum(maas) from calisanlar where marka_isim=isyeri) as toplam_maas
from markalar;
--exist
select id,isim,isyeri from calisanlar 
where exists (select marka_isim from markalar where marka_isim=isyeri);

update calisanlar set sehir='Konya' where isyeri='Setrems';
update markalar set marka_isim='Tugba' where marka_id=100;