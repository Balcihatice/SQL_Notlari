---Group By Devam
CREATE TABLE personel
(
id int,
isim varchar(50),  sehir varchar(50),  maas int,  
sirket varchar(20)
);

INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel VALUES(456789012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

select * from personel;

delete from personel;

1)Isme gore toplam maaslari bulun

select isim, sum(maas) from personel 
group by isim;
--isme gore grupla

--personel tablosundaki isimleri gruplayiniz
select isim from personel group by isim;

--Sirketlere gore maasi 5000 liradan fazla olan personel sayisini bulun
select sirket, count(*) from personel 
group by sirket;

--her sirket icin Min ve Max maasi bulun
select sirket,min(maas) as min_Maas,max(maas) as max_maas from personel
group by sirket;	

--sehre gore toplam personel sayisini bulun	
SELECT isim,sehir, COUNT(isim) AS toplamkisi_sayisi FROM personel where maas>5000
GROUP BY isim,sehir;
