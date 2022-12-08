--ALIASES
CREATE TABLE calisanlar
(
calisan_id int,
calisan_isim varchar(50), 
calisan_dogdugu_sehir varchar(50),
constraint calisan_pk primary key (calisan_id)	
);
INSERT INTO calisanlar VALUES(123456789, 'Ali Can', 'Istanbul'); 
INSERT INTO calisanlar VALUES(234567890, 'Veli Cem', 'Ankara'); 
INSERT INTO calisanlar VALUES(345678901, 'Mine Bulut', 'Izmir');

select * from calisanlar;
select calisan_id as id, calisan_isim as isim,calisan_dogdugu_sehir as dogum_yeri
from calisanlar;

create table personel
(
id int,
isim varchar,
sehir varchar,

	constraint id_fk foreign key (id) references calisanlar (calisan_id)
);

INSERT INTO calisanlar VALUES(123456789, ‘Ali Can', ‘Istanbul'); 
INSERT INTO calisanlar VALUES(234567890, ‘Veli Cem', ‘Ankara'); 
INSERT INTO calisanlar VALUES(345678901, ‘Mine Bulut', ‘Izmir');

select * from personel;

select isim from personel where maas<5000 or is_unvani='isci';
select is_unvani,maas from personel where souisim='Can' or souisim='Cem' or souisim='Gul';

-- Maasi 5000’den cok olanlarin emailve is baslama tarihlerini listeleyin
-- Maasi 5000’den cok veya 7000’den az olanlarin tum bilgilerini listeleyin

select isebaslama_tarigi, email from personel where maas>5000 
select * from personel where maas>5000 and maas< 7000;

select isim,souisim from personel order by length(isim);


