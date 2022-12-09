
CREATE TABLE musteri_urun 
(
urun_id int, 
musteri_isim varchar(50),
urun_isim varchar(50) 
);
INSERT INTO musteri_urun VALUES (10, 'Ali', 'Portakal'); 
INSERT INTO musteri_urun VALUES (10, 'Ali', 'Portakal'); 
INSERT INTO musteri_urun VALUES (20, 'Veli', 'Elma'); 
INSERT INTO musteri_urun VALUES (30, 'Ayse', 'Armut'); 
INSERT INTO musteri_urun VALUES (20, 'Ali', 'Elma'); 
INSERT INTO musteri_urun VALUES (10, 'Adem', 'Portakal'); 
INSERT INTO musteri_urun VALUES (40, 'Veli', 'Kaysi'); 
INSERT INTO musteri_urun VALUES (20, 'Elif', 'Elma');

select * from musteri_urun;

--musteri urun tablosundan urun isimlerini tekrarsiz(grup) listeleyiniz
select urun_isim from musteri_urun group by urun_isim;

--DISTINT COZUMU
select distinct(urun_isim) from musteri_urun 
aradaki fark -->> count yapptigimizda farklari ortaya cikar

tabloda kac farkli meyve vardir

select urun_isim,count(urun_isim) as Meyve_Cesiti from musteri_urun
group by urun_isim;--burada tekrarlilari da saydi

--distinct ile yapalim farki gorelim
select urun_isim,count(distinct urun_isim) as Meyve_Cesiti from musteri_urun
group by urun_isim;--distinct tekrarlilari getirmez,kac kere meyve ismi gecti onu saydi

-- FETCH NEXT (SAYI) ROW ONLY- OFFSET
-- 1) Tabloyu urun_id ye gore siralayiniz
-- 2) Sirali tablodan ilk 3 kaydi listeleyin
select * from musteri_urun order by urun_id
fetch next 3 row only;-- urun_id ye gore siralar ve ilk ucunu verir

--LIMIT ilede ayni sonucu aliriz
select * from musteri_urun order by urun_id limit 3;

--soru: Musteri_urun tablosundan ilk kaydi listeleyiniz
select * from musteri_urun order by urun_id limit 1;

--Musteri_urun tablosundan son uc kaydi listeleyiniz
select * from musteri_urun order by urun_id desc limit 3;



