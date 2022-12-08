CREATE TABLE maas
(
urun_id int, 
musteri_isim varchar(50),
maas int
);
INSERT INTO maas VALUES (10, 'Ali', 5000); 
INSERT INTO maas VALUES (10, 'Ali', 7500); 
INSERT INTO maas VALUES (20, 'Veli', 10000); 
INSERT INTO maas VALUES (30, 'Ayse', 9000); 
INSERT INTO maas VALUES (20, 'Ali', 6500); 
INSERT INTO maas VALUES (10, 'Adem', 8000); 
INSERT INTO maas VALUES (40, 'Veli', 8500); 
INSERT INTO maas VALUES (20, 'Elif', 5500);

select * from maas;
--En yuksek maasi alan musteriyi listeleyiniz
select * from maas order by maas desc limit 1;

--maas tablosundan en yuksek ikinci maasi listeleyiniz
select * from maas order by maas desc limit 1 offset 1;
/*
satir atlamak istedigimizde offset komutunu kullaniriz
*/
select * from maas order by maas desc --maas a gore terten sirala
offset 1 row--nir satir atla
fetch next 1 row only--bir satiri getir

--maas tablosundan en dusuk 4. maasi listeleyiniz
select * from maas order by maas offset 3 limit 1;
--ilk uc satiri atla sonraki ilk satiri al getir





