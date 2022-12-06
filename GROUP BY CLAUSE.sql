--GROUP BY CLAUSE
--Group By komutu sonuçları bir veya daha fazla sütuna göre gruplamak için SELECT
--komutuyla birlikte kullanılır

CREATE TABLE manav (
isim varchar(50), 
Urun_adi varchar(50), 
Urun_miktar int
);

INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES( 'Ayse', 'Armut', 3);
INSERT INTO manav VALUES( 'Veli', 'Elma', 2);
INSERT INTO manav VALUES( 'Hasan', 'Uzum', 4);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Ayse', 'Elma', 3);
INSERT INTO manav VALUES( 'Veli', 'Uzum', 5);
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);
INSERT INTO manav VALUES( 'Veli', 'Elma', 3);
INSERT INTO manav VALUES( 'Ayse', 'Uzum', 2);

select * from manav;

--1) Isme gore alinan toplam urunleri bulun
select isim, sum(urun_miktar) as aldigi_toplam_urun from manav group by isim;

--Isme gore alinan toplam urunleri bulun ve buyukten kucuge siralayin.
SELECT isim,sum(urun_miktar) AS aldığı_toplam_urun FROM manav
GROUP BY isim
ORDER BY aldığı_toplam_urun DESC;

--2) Urun ismine gore urunu alan toplam kisi sayisi
SELECT urun_adi, COUNT(isim) AS Urunu_Alan_Kisi_Sayisi FROM manav
GROUP BY urun_adi;


--3) Alinan kilo miktarina gore musteri sayisi

select urun_miktar,count(isim)as urunalankisisayisi from manav group by urun_miktar;









