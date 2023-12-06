IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'EX2')
	DROP DATABASE EX2
GO
CREATE DATABASE EX2
GO
USE EX2
GO

CREATE TABLE Hang (
	MaLoai INT PRIMARY KEY IDENTITY,
	TenLoai VARCHAR(15)
 )
GO
SELECT * FROM Hang
GO
INSERT INTO Hang (TenLoai) VALUES ('Mobile')
INSERT INTO Hang (TenLoai) VALUES ('Laptop')
INSERT INTO Hang (TenLoai) VALUES ('Máy tính bảng')

DELETE FROM Hang

SELECT * FROM Hang

 GO

DROP TABLE TenSanPham
CREATE TABLE TenSanPham(
	MaSP int PRIMARY KEY,
	TenSP nvarchar(250),
	Gia DECIMAL(10, 2),
	MaLoai int,
	CONSTRAINT fk FOREIGN KEY (MaLoai) REFERENCES Hang (MaLoai)
 )
GO
INSERT INTO TenSanPham(MaSP, TenSP, Gia, MaLoai) VALUES (1, 'iPhone 13',1200.00,  1);
INSERT INTO TenSanPham(MaSP, TenSP, Gia, MaLoai) VALUES (2, 'Dell XPS 13',1500.00,  2);
INSERT INTO TenSanPham(MaSP, TenSP, Gia, MaLoai) VALUES (3, ' Samsung Galaxy Tab S7',800.00 , 3);
SELECT * FROM TenSanPham
SELECT * FROM Hang
GO