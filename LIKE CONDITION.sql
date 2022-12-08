LIKE Condition
-- Like kullaniminda buyuk kucuk harf gozetmeksiniz sonuc almak istersek ILIKE kullaniriz
-- LIKE yerine ~~ sembolleini kullaniriz.
/*
LIKE kullanımında büyük küçük harf gözetmeksizin sonuç almak istersek ILIKE kullanırız
LIKE yerine ~~ sembollerini kullanabiliriz. Eğer büyük küçük harf gözetmeksizin kullanmak istersek ~~* sembollerini kullanırız
*/
CREATE TABLE musteriler  (
id int UNIQUE,
isim varchar(50) NOT NULL,
gelir int
);

INSERT INTO musteriler (id, isim, gelir) VALUES (1001, 'Ali', 62000);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1002, 'Ayse', 57500);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1003, 'Feride', 71000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1004, 'Fatma', 42000);  
INSERT INTO musteriler (id, isim, gelir) VALUES (1005, 'Kasim', 44000);
INSERT INTO musteriler (id, isim, gelir) VALUES (1006, 'ahmet', 82000); 
--Ismi A harfi ile baslayan musterilerin tum bilgilerini yazdiran QUERY yazin

SELECT * FROM musteriler WHERE isim LIKE 'A%';
--A ile baslasin sonu ne olursa olsun
SELECT * FROM musteriler WHERE isim ~~* 'A%'









