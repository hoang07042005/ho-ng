CREATE TABLE DonDatHang (
    MaSDH INT PRIMARY KEY,
    NguoiDH VARCHAR(255),
    DiaC VARCHAR(255),
    DienT VARCHAR(15),
    NgayDH DATE
)
SELECT * FROM DonDatHang

INSERT INTO DonDatHang (MaSDH, NguoiDH, DiaC, DienT, NgayDH)
VALUES (123, 'Nguyễn Văn An', '111 Nguyễn Trãi, Thanh Xuân, Hà Nội', '987654321', '2009-09-18');

SELECT * FROM DonDatHang

CREATE TABLE DangSachCacMatHang (
    MaSDH INT,
    ItemID INT PRIMARY KEY,
    TenHang VARCHAR(255),
    MoTaHang VARCHAR(255),
    DonVi VARCHAR(20),
    Gia DECIMAL(10, 2),
    SoLuong INT,
    ThanhTien DECIMAL(10, 2),
    FOREIGN KEY (MaSDH) REFERENCES DonDatHang(MaSDH)
)

INSERT INTO DangSachCacMatHang (MaSDH, ItemID, TenHang, MoTaHang, DonVi, Gia, SoLuong, ThanhTien)
 VALUES	(123, 1, 'Máy Tính T450', 'Máy nhập mới', 'Chiếc', 1000, 1, 1000),
		(123, 2, 'Điện Thoại Nokia5670', 'Điện thoại đang hot', 'Chiếc', 200, 2, 400),
		(123, 3, 'Máy In Samsung 450', 'Máy in đang ế', 'Chiếc', 100, 1, 100);

SELECT * FROM DangSachCacMatHang


