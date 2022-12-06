CREATE TABLE parent2
(
vergi_no int PRIMARY KEY,
firma_ismi VARCHAR(50),
irtibat_ismi VARCHAR(50)
);

INSERT INTO parent2 VALUES (101, 'Sony', 'Kim Lee');
INSERT INTO parent2 VALUES (102, 'Asus', 'George Clooney');
INSERT INTO parent2 VALUES (103, 'Monster', 'Johnny Deep');
INSERT INTO parent2 VALUES (104, 'Apple', 'Mick Jackson');

select * from parent2;

CREATE TABLE child2
(
ted_vergino int,
urun_id int,
urun_isim VARCHAR(50),
musteri_isim VARCHAR(50),
CONSTRAINT fk FOREIGN KEY(ted_vergino) REFERENCES parent2(vergi_no)
ON DELETE CASCADE--artik child tablo silinmeden parent tabloyu silebilecegiz.
--parent tablodaki veriler silinince child tabloda silinir
);

INSERT INTO child2 VALUES(101, 1001,'PC', 'Habip Sanli');
INSERT INTO child2 VALUES(102, 1002,'Kamera', 'Zehra Oz');
INSERT INTO child2 VALUES(102, 1003,'Saat', 'Mesut Kaya');
INSERT INTO child2 VALUES(102, 1004,'PC', 'Vehbi Koc');
INSERT INTO child2 VALUES(103, 1005,'Kamera', 'Cemal Sala');
INSERT INTO child2 VALUES(104, 1006,'Saat', 'Behlül Dana');
INSERT INTO child2 VALUES(104, 1007,'Kamera', 'Eymen Ozden');

select * from child2;




















































