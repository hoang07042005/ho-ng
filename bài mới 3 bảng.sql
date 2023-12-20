CREATE TABLE PhongBan (
	MaPB VARCHAR(7) PRIMARY KEY ,
	TenPB nvarchar(50),
)

INSERT INTO PhongBan(MaPB,TenPB) VALUES	('B16','T23O8M');
INSERT INTO PhongBan(MaPB,TenPB) VALUES	('B15','T23O7M');
INSERT INTO PhongBan(MaPB,TenPB) VALUES	('B14','T23O6M');

DROP TABLE PhongBan
SELECT * FROM PhongBan


CREATE TABLE NhanVien (
	MaNV varchar(7) PRIMARY KEY,
	TenNV nvarchar(50),
	NgaySinh Datetime,
	SoCCCD char(12),
	GioiTinh Char(1),
	DiaChi nvarchar(100),
	NgayVaoLam datetime,
	MaPB varchar(7),
	FOREIGN KEY (MaPB) REFERENCES PhongBan (MaPB)
)

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCCCD,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES ('ĐH','Đỗ Việt Hoàng','20050407',015205008763,'M','Nam Định','20231220','B15');
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCCCD,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES ('TS','Nguyễn Thế Sơn','20050317',015205008763,'F','Yên Bái','20231220','B16');
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCCCD,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES ('LS','Lê Minh Sơn','20050407',015205008763,'M','Hà Nội','20231220','B14');

SELECT * FROM NhanVien
WHERE GioiTinh LIKE '[F]'
DROP TABLE NhanVien
SELECT * FROM NhanVien


CREATE TABLE LuongDA (
	MaDA varchar(8),
	MaNV varchar (7),
	NgayNhan datetime,
	SoTien money,
	Comment char(100),
	PRIMARY KEY (MaDA,MaNV),
	FOREIGN KEY (MaNV) REFERENCES  NhanVien(MaNV)
)

INSERT INTO LuongDA (MaDA, MaNV, NgayNhan, SoTien, Comment) VALUES ('QI', 'ĐH', '20231220', 5000000, 'jksdgfjkdsbadsbg');
INSERT INTO LuongDA (MaDA, MaNV, NgayNhan, SoTien, Comment) VALUES ('QO', 'TS', '20231220', 5000000, 'jksdgfjkdsbadsbg');
INSERT INTO LuongDA (MaDA, MaNV, NgayNhan, SoTien, Comment) VALUES ('QP', 'LS', '20231220', 5000000, 'jksdgfjkdsbadsbg');

DROP TABLE LuongDA

SELECT * FROM PhongBan
SELECT * FROM LuongDA
SELECT * FROM NhanVien


SELECT MaNV, SUM(SoTien) AS TienLuong FROM LuongDA GROUP BY MaNV;


SELECT * FROM NhanVien
Where MaPB ='1'