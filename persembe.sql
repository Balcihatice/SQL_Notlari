CREATE TABLE student 
(
id int,
isim VARCHAR(50), 
veli_isim VARCHAR(50), 
yazili_notu int ,
constraint id_pk primary key (id)
);

INSERT INTO student VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO student VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO student VALUES(125, 'Kemal Yasa', 'Hasan',85); 
INSERT INTO student VALUES(126, 'Nesibe Yilmaz', 'Ayse',95); 
INSERT INTO student VALUES(127, 'Mustafa Bak', 'Can',99); 
INSERT INTO student VALUES(128, 'Mustafa Bak', 'Ali', 99);

select * from student;
select isim as Orgrenci_ismi from student;
INSERT INTO student VALUES(129,'Rose Balci','Deli',98);
delete from student;

truncate table student;

CREATE TABLE notlar
(
talebe_id int,
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES student(id)
on delete cascade
);
INSERT INTO notlar VALUES ('123','kimya',75); 
INSERT INTO notlar VALUES ('124', 'fizik',65); 
INSERT INTO notlar VALUES ('125', 'tarih',90); 
INSERT INTO notlar VALUES ('126', 'Matematik',90);

drop table notlar;
select * from notlar;

parenttan 123 id li kisi silindi
delete from student where id=123;

delete from notlar where talebe_id=125;

insert into notlar values('130','Fizik',99);
drop table student cascade;

delete from talebeler;

select *from student where yazili_notu=85 or yazili_notu=95;
select *from student where yazili_notu in (85,95);
select *from student where yazili_notu not between 85 and 95;
