CREATE TABLE Customer (
	CustomerID INT PRIMARY KEY,
	Name NVARCHAR (40),
	Address NVARCHAR (80),
	Tel VARCHAR (10),
	Status VARCHAR (30)
);

INSERT INTO Customer VALUES (1, 'Nguyên Thế Sơn', 'CT1-1 KĐT Mễ Trì Hạ', 0888317598, NULL);
INSERT INTO Customer VALUES (2, 'Đỗ Việt Hoàng', 'Phú Diễn, Kiều Mai, Hà Nội', 0352335720, NULL);
INSERT INTO Customer VALUES (3, 'Nguyễn Văn An', '111 Nguyễn Trãi, Thanh Xuân, Hà Nội', 987654321, NULL);

DROP TABLE Customer;
SELECT * FROM Customer;

CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	Name NVARCHAR (40),
	Description NVARCHAR (40),
	Unit NVARCHAR (10),
	Price INT,
	Quantity INT,
	Status NVARCHAR (30)
);

INSERT INTO Product VALUES (1, 'Máy Tính T450', 'Máy nhập mới', 'chiếc', 1000, 20, 'In Stock');
INSERT INTO Product VALUES (2, 'Điện Thoại Nokia 5670', 'Điện thoại đang hot', 'chiếc', 200, 10, 'In Stock');
INSERT INTO Product VALUES (3, 'Máy In Samsung 450', 'Máy in đang ế', 'chiếc', 100, 15, 'In Stock');


CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	Status NVARCHAR (30)
	FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);

INSERT INTO Orders VALUES (1, 2, '11-18-13', 'In Process');
INSERT INTO Orders VALUES (123, 3, '11-18-19', 'In Process');
INSERT INTO Orders VALUES (13, 1, '12-12-23', 'In Process');


SELECT * FROM Customer;
SELECT * FROM Product;
SELECT * FROM Orders;

SELECT DISTINCT Name FROM Customer

SELECT DISTINCT Name FROM Product





SELECT * FROM Customer ORDER BY Name

SELECT * FROM Product ORDER BY Price DESC

SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers FROM Customer

SELECT COUNT(DISTINCT ProductID) AS TotalItems FROM Product
