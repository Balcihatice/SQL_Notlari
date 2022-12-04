CREATE TABLE talebeler (
id CHAR(3) primary key, 
isim VARCHAR(50), 
veli_isim VARCHAR(50), 
yazili_notu int
);
INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO talebeler VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO talebeler VALUES(125, 'Kemal Yasa', 'Hasan',85); 
INSERT INTO talebeler VALUES(126, 'Nesibe Yilmaz', 'Ayse',95); 
INSERT INTO talebeler VALUES(127, 'Mustafa Bak', 'Can',99); 
INSERT INTO talebeler VALUES(128, 'Mustafa Bak', 'Ali', 99);

select *from talebeler;

CREATE TABLE notlar(
talebe_id char(3),
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES talebeler(id)
on delete cascade
);
INSERT INTO notlar VALUES ('123','kimya',75); 
INSERT INTO notlar VALUES ('124', 'fizik',65); 
INSERT INTO notlar VALUES ('125', 'tarih',90); 
INSERT INTO notlar VALUES ('126', 'Matematik',90);

select *from notlar;

DELETE FROM notlar WHERE talebe_id='123';

DELETE FROM talebeler WHERE id ='126';


Practice 6

--id'si 1003 ile 1005 arasında olan personel bilgilerini listeleyiniz 
--D ile Y arasındaki personel bilgilerini listeleyiniz
--D ile Y arasında olmayan personel bilgilerini listeleyiniz
--Maaşı 70000 ve ismi Sena olan personeli listeleyiniz

CREATE table personel 
(
prs_id char(4),
isim varchar(50), 
maas int
);

insert into personel values('1001', 'Ali Can', 70000); 
insert into personel values('1002', 'Veli Mert', 85000); 
insert into personel values('1003', 'Ayşe Tan', 65000); 
insert into personel values('1004', 'Derya Soylu', 95000); 
insert into personel values('1005', 'Yavuz Bal', 80000); 
insert into personel values('1006', 'Sena Beyaz', 100000);
select * from personel;

select * from personel where prs_id between '1003' and '1005';
select * from personel where isim between 'D' and 'Y';

select * from personel where isim not between 'D' and 'Y';

select * from personel where maas=70000 and isim = 'Sena Beyaz';







































































