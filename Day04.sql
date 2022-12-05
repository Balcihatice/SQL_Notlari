CREATE TABLE calisanlar (
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);

INSERT INTO calisanlar VALUES(123456789, 'Ali Can', 'Istanbul');  
INSERT INTO calisanlar VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO calisanlar VALUES(345678901, 'Mine Bulut', 'Izmir');

select * from calisanlar;

--CALISAN ISMI VE CALISAN DOGDUGU SEHIR AYNI SUTUNDA YAZMASINI ISTERSEK CONCET SEMBOLU || 
--kullaniriz
SELECT calisan_id as id,calisan_isim || calisan_dogdugu_sehir as calisan_bilgisi from calisanlar;


--2.Yol
SELECT calisan_id as id, concat (calisan_isim || calisan_dogdugu_sehir) as calisan_bilgisi from calisanlar;







