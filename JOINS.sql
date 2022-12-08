CREATE TABLE sirketler
(sirket_id int, sirket_isim varchar(20) );

INSERT INTO sirketler VALUES(100, 'Toyota'); 
INSERT INTO sirketler VALUES(101, 'Honda'); 
INSERT INTO sirketler VALUES(102, 'Ford'); 
INSERT INTO sirketler VALUES(103, 'Hyundai');

select * from sirketler;

CREATE TABLE siparisler (
siparis_id int,
sirket_id int,
siparis_tarihi date 
);

INSERT INTO siparisler VALUES(11, 101, '17-Apr-2020'); 
INSERT INTO siparisler VALUES(22, 102, '18-Apr-2020'); 
INSERT INTO siparisler VALUES(33, 103, '19-Apr-2020'); 
INSERT INTO siparisler VALUES(44, 104, '20-Apr-2020'); 
INSERT INTO siparisler VALUES(55, 105, '21-Apr-2020');

select * from siparisler;
/*
NOT :
1) Select’ten sonra tabloda gormek istediginiz sutunlari yazarken Tablo_adi.field_adi seklinde yazin
2) From’dan sonra tablo ismi yazarken 1.Tablo ismi + INNER JOIN + 2.Tablo ismi yazmaliyiz
3) Join’i hangi kurala gore yapacaginizi belirtmelisiniz. Bunun icin ON+ kuralimiz yazilmali

*/

--Iki Tabloda sirket_id’si ayni olanlarin sirket_ismi, siparis_id ve
--siparis_tarihleri ile yeni bir tablo olusturun

--kesisim icin inner join kullaniriz

SELECT sirketler.sirket_isim, siparisler. siparis_id, siparisler. siparis_tarihi --istediklerimi sec
FROM sirketler INNER JOIN siparisler --nasil getir > sirketler ve siparislerin kesisiminden yukardakileri sec
ON sirketler.sirket_id=siparisler.sirket_id;  --sartim da burada 

--Left Join’de ilk tablodaki tum record’lar gosterilir.2.tablodan ortak olanlari getirir
--ortak olmayan icin null deger gosterir
-- Ilk yazdiginiz Tablonun tamamini aldigi icin hangi tabloyu istedigimize karar verip once onu yazmaliyiz
SELECT sirketler.sirket_isim, siparisler. siparis_id, siparisler. siparis_tarihi 
FROM sirketler LEFT JOIN siparisler
ON sirketler.sirket_id = siparisler.sirket_id;

/*
	NOT :
	1) FULL Join’de iki tabloda var olan tum record’lar gosterilir.
	2) Bir tabloda olup otekinde olmayan data’lar bos kalir
*/
SELECT sirketler.sirket_isim, siparisler. siparis_id, siparisler. siparis_tarihi 
FROM sirketler FULL JOIN siparisler
ON sirketler.sirket_id = siparisler.sirket_id;
/*
INNER KESİŞİMİ VERİR
LEFT SOL TARAFI VERİR
RIGHT SAĞ TARAFI VERİR
FULL HEPSİNİ VERİR
*/

drop table personel cascade;

-----     SELF JOINS
Her personelin yanina yonetici ismini yazdiran bir tablo olusturun
CREATE TABLE personel  (
id int,
isim varchar(20),  
title varchar(60),  yonetici_id int
);
INSERT INTO personel VALUES(1, 'Ali Can', 'SDET', 2);
INSERT INTO personel VALUES(2, 'Veli Cem', 'QA', 3);
INSERT INTO personel VALUES(3, 'Ayse Gul', 'QA Lead', 4);  
INSERT INTO personel VALUES(4, 'Fatma Can', 'CEO', 5);

select * from personel;

--sunlarin(personel p1 ) kesisiminden bunlari(p1.isim,p2.isim) getir
-- p1.isim "." ile yonetici tablosu yaptiktablo oldu
select p1.isim,p2.isim as personel_isim,p2.isim as yonetici_isim
from personel p1 inner join personel p2 on p1.yonetici_id=p2.id

