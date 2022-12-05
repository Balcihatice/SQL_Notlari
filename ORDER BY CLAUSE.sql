--ORDER BY CLAUSE
/*
Tablolardaki verileri sıralamak için ORDER BY komutu kullanırız
Büyükten küçüğe yada küçükten büyüğe sıralama yapabiliriz
Default olarak küçükten büyüğe sıralama yapar
Eğer BÜYÜKTEN KÜÇÜĞE sıralmak istersek ORDER BY komutundan sonra DESC komutunu kullanırız

*/

drop table if exists insanlar

CREATE TABLE insanlar
(
ssn char(9),
isim varchar(50),
soyisim varchar(50),  
adres varchar(50)
);
INSERT INTO insanlar VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO insanlar VALUES(234567890, 'Veli','Cem', 'Ankara');  
INSERT INTO insanlar VALUES(345678901, 'Mine','Bulut', 'Ankara');  
INSERT INTO insanlar VALUES(256789012, 'Mahmut','Bulut', 'Istanbul'); 
INSERT INTO insanlar VALUES (344678901, 'Mine','Yasa', 'Ankara');  
INSERT INTO insanlar VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');

SELECT * FROM insanlar;

--Insanlar tablosundaki datalari adres’e gore siralayin
SELECT * FROM insanlar ORDER BY adres;


--Insanlar tablosundaki ismi Mine olanlari SSN sirali olarak listeleyin
select * from insanlar where isim='Mine'order by ssn;

--NOT : Order By komutundan sonra field ismi yerine field numarasi da kullanilabilir
--Insanlar tablosundaki soyismi Bulut olanlari isim sirali olarak listeleyin

SELECT * FROM insanlar WHERE soyisim ='Bulut' ORDER BY 2;

--Insanlar tablosundaki tum kayitlari SSN numarasi buyukten kucuge olarak siralayin

SELECT * FROM insanlar ORDER BY ssn DESC;


--Insanlar tablosundaki tum kayitlari isimler 
--Natural sirali, Soyisimler ters sirali olarak listeleyin

SELECT * FROM insanlar ORDER BY isim ASC,soyisim DESC;

--İsim ve soyisim değerlerini soyisim kelime uzunluklarına göre sıralayınız
SELECT isim, soyisim FROM insanlar ORDER BY LENGTH (soyisim);

--EGER SUTUN UZUNLUGUNA GORE SIRALAMAK ISTERSEK LENGHT KOMUTU KULLANIRIZ
--VE YINE UZUNLUGU BUYUKTEN KUCUGE SIRALAMAK ISTERSEK SONUNA DESC KOMUTUNU EKLERIZ
SELECT isim, soyisim FROM insanlar ORDER BY LENGTH (soyisim) DESC;

--Tüm isim ve soyisim değerlerini aynı sutunda çağırarak her bir sütun değerini uzunluğuna göre sıralayınız
select isim||' '||soyisim as isim_soyisim from insanlar order by length (isim||soyisim);
--2.yol
select isim||' '||soyisim as isim_soyisim from insanlar order by length (isim)+ length (soyisim);
--3.yol
select isim || ' ' || soyisim as isim_soyisim from insanlar order by length (concat(isim, soyisim));


























