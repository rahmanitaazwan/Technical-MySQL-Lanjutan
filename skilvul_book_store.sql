--create database--
CREATE DATABASE skilvulbookstore;

USE skilvulbookstore;

--create table penerbit--
CREATE TABLE penerbit (
    id INT (10) NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    nama VARCHAR (50) ,
    kota VARCHAR (50) 
);

--create table penulis--
CREATE TABLE penulis (
    id INT (10) NOT NOT AUTO_INCREMENT PRIMARY_KEY,
    nama VARCHAR(50),
    kota VARCHAR (50)
);

--create book table--
CREATE TABLE buku (
    id INT (10) NOT NULL AUTO_INCREMENT PRIMARY_KEY,
    ISBN VARCHAR (50),
    judul VARCHAR (50),
    penulis VARCHAR (50),
    penerbit INT (10),
    harga INT (10),
    stock INT (10),
    CONSTRAINT fk_penerbit FOREIGN KEY (idPenerbit) REFERENCES penerbit(id),
    CONSTRAINT fk_penulis FOREIGN KEY (idPenulis) REFERENCES penulis(id)
);

--insert data table--
INSERT INTO penulis(nama, kota) VALUES('Rahmanita Azwan', 'Bogor');
INSERT INTO penulis(nama, kota) VALUES('Adi Fahmi', 'Depok');
INSERT INTO penerbit(nama, kota) VALUES('Pakuan', 'Bogor');
INSERT INTO penerbit(nama, kota) VALUES('Winaya', 'Bandung');
INSERT INTO buku (ISBN, judul, idPenulis, idPenerbit, harga, stock)
VALUES ('123456A', 'Aku Cinta Dia' 1, 2, 123000, 50);
INSERT INTO buku (ISBN, judul, idPenulis, idPenerbit, harga, stock)
VALUES ('78910B', 'Aku Si Bucin', 3, 4, 45000, 15);
INSERT INTO buku (ISBN, judul, idPenulis, idPenerbit, harga, stock)
VALUES ('111213C',' Lurus dan Keriting', 5, 6, 64170, 100);

--INNER JOIN--
SELECT * FROM buku INNER JOIN penerbit ON buku.idPenerbit = penerbit.id;


--LEFT JOIN--
SELECT * FROM buku LEFT JOIN penerbit ON buku.idPenerbit.id;

--RIGHT JOIN--
SELECT * FROM buku RIGHT JOIN penerbit ON buku.idPenerbit.id;

--cek MAX--
SELECT MAX (harga) FROM buku WHERE stock < 10;

--cek MIN--
SELECT MIN (harga) FROM buku;

--count under 100000--
SELECT COUNT (*) as PriceUnder100000 FROM buku WHERE harga < 100000;

