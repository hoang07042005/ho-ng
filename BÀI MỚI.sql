CREATE TABLE Maker (
	MakerID INT PRIMARY KEY,
	MakerName VARCHAR (20),
	Address VARCHAR (50),
	TelNumber INT
);

INSERT INTO Maker VALUES (123, 'Asus' , 'USA',12345);
INSERT INTO Maker VALUES (234, 'NOKIA' , 'VIETNAM',12245);
INSERT INTO Maker VALUES (345, 'SAMSUNG' , 'TRUNGQUOC',22345);
INSERT INTO Maker VALUES (456, 'MACBOOK' , 'USA',22345);
INSERT INTO Maker VALUES (567, 'DELL' , ' HOAKI',22445);

DROP TABLE Maker;

DROP TABLE Product; 

CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	ProductName NVARCHAR (50),
	Description VARCHAR (50),
	Unit VARCHAR (10),
	Price INT,
	Quantity INT
);

INSERT INTO Product VALUES (1, 'Máy Tính T450', 'Máy nhập cũ', 'chiếc', 1000, 10);
INSERT INTO Product VALUES (2, 'Điện Thoại Nokia 5670', 'Điện thoại đang hot', 'chiếc', 200, 200);
INSERT INTO Product VALUES (3, 'Máy In Samsung 450', 'Máy in đang ế', 'chiếc', 100, 30);
INSERT INTO Product VALUES (4, 'Máy Tính Apple M1', 'Máy tính đang hot', 'chiếc', 3000, 20);
INSERT INTO Product VALUES (5, 'Máy Tính Dell Latitude ', 'Máy nhập mới', 'chiếc', 2400, 15);


DROP TABLE ProductMaker;

CREATE TABLE ProductMaker (
	MakerID INT,
	ProductID INT,
	PRIMARY KEY (MakerID, ProductID),
	FOREIGN KEY (MakerID) REFERENCES Maker (MakerID),
	FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

INSERT INTO ProductMaker VALUES (123, 1);
INSERT INTO ProductMaker VALUES (234, 2);
INSERT INTO ProductMaker VALUES (345, 3);
INSERT INTO ProductMaker VALUES (456, 4);
INSERT INTO ProductMaker VALUES (567, 5);


SELECT * FROM Maker;
SELECT * FROM Product;
SELECT * FROM ProductMaker;

-- 4a Hiển thị tất cả các hãng sản xuất.
SELECT MakerName FROM Maker;

-- 4b  Hiển thị tất cả các sản phẩm.
SELECT ProductName FROM Product;

-- 5a Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên
SELECT MakerName FROM Maker
ORDER BY MakerName DESC;

-- 5b Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.
SELECT * FROM Product
ORDER BY Price DESC;

-- 5c Hiển thị thông tin của hãng Asus.
SELECT * FROM Maker
WHERE MakerName = 'Asus';

-- 5d  Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho
SELECT * FROM Product
WHERE Quantity < 11;

-- 5e  Liệt kê danh sách sản phẩm của hãng Asus
SELECT * FROM Product
WHERE ProductID IN (
	SELECT ProductID
	FROM ProductMaker
	WHERE MakerID IN (
		SELECT MakerID
		FROM Maker
		WHERE MakerName = 'Asus'
	)
);

-- 6a Số hãng sản phẩm mà cửa hàng có.
SELECT COUNT(DISTINCT MakerID) AS SoHangSanPham
FROM ProductMaker
WHERE ProductID IS NOT NULL;

-- 6b Số mặt hàng mà cửa hàng bán.
SELECT COUNT(ProductID) AS SoMatHang
FROM Product;

-- 6c Tổng số loại sản phẩm của mỗi hãng có trong cửa hàng.
ALTER TABLE Product
ADD ProductType NVARCHAR (20);

UPDATE Product
SET ProductType = 'Máy Tính'
WHERE ProductName LIKE 'Máy Tính%';

UPDATE Product
SET ProductType = 'Máy In'
WHERE ProductName LIKE 'Máy In%';

UPDATE Product
SET ProductType = 'Điện Thoại'
WHERE ProductName LIKE 'Điện Thoại%';

SELECT COUNT(DISTINCT ProductType) FROM Product;

-- 6d Tổng số đầu sản phẩm của toàn cửa hàng
SELECT SUM(Quantity) FROM Product;