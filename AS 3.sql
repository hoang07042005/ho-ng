CREATE TABLE Customers (
	CustomersID INT PRIMARY KEY,
	CustomersName NVARCHAR (250),
	CMND INT,
	Address NVARCHAR (250)
);
INSERT INTO Customers VALUES 
(1, 'Nguyễn Nguyệt Nga', '642938352723', 'Hà Nội'),
(2, 'Đỗ Việt Hoàng', '036205001320', 'Nam Định');	


CREATE TABLE Subscriptions (
	SubscriptionID INT PRIMARY KEY,
	CustomersID INT,
	PhoneNumber INT,
	SubscriptionType NVARCHAR (50),
	RegistrationDate DATE,
	FOREIGN KEY (SubscriptionID) REFERENCES Customers (CustomersID)
);
INSERT INTO Subscriptions VALUES 
(1, 1, '123456789', 'Trả trước', '2002-12-12'),
(2, 2, '0352335720', 'Trả trước', '2023-12-25');

-- 3 Chèn thêm dữ liệu tương tự như đề bài
SELECT * FROM Customers;
SELECT * FROM Subscriptions;


--5

--a Hiển thị toàn bộ thông tin của thuê bao có số: 0123456789
SELECT * FROM Subscriptions WHERE PhoneNumber = 123456789;
SELECT * FROM Subscriptions WHERE PhoneNumber = 0352335720;

--b Hiển thị thông tin về khách hàng có số CMTND: 123456789
SELECT * FROM Customers WHERE CMND = 642938352723;
SELECT * FROM Customers WHERE CMND = 036205001320;

--c ) Hiển thị các số thuê bao của khách hàng có số CMTND:123456789
SELECT PhoneNumber FROM Subscriptions WHERE CustomersID
IN (SELECT CustomersID FROM Customers WHERE CMND = 123456789);

SELECT PhoneNumber FROM Subscriptions WHERE CustomersID
IN (SELECT CustomersID FROM Customers WHERE CMND = 0352335720);

--d Liệt kê các thuê bao đăng ký vào ngày 12/12/02 (25/12/2023)
SELECT * FROM Subscriptions WHERE RegistrationDate = '2002-12-12';

SELECT * FROM Subscriptions WHERE RegistrationDate = '2023-12-25';

--eLiệt kê các thuê bao có địa chỉ tại Hà Nội (Nam Định)
SELECT * FROM Customers WHERE Address = 'Hà Nội';

SELECT * FROM Customers WHERE Address = 'Nam Định';


--6

--a  Tổng số khách hàng của công ty.
SELECT COUNT(*) AS TotalCustomers FROM Customers;

--b  Tổng số thuê bao của công ty.
SELECT COUNT(*) AS TotalSubscriptions FROM Subscriptions;

--c  Tổng số thuê bào đăng ký ngày 12/12/02 (25/12/23)
SELECT COUNT(*) AS SubscriptionsOn120909 FROM Subscriptions 
WHERE RegistrationDate = '2002-12-12';

SELECT COUNT(*) AS SubscriptionsOn251223 FROM Subscriptions 
WHERE RegistrationDate = '2023-12-25';

--d  Hiển thị toàn bộ thông tin về khách hàng và thuê bao của tất cả các số thuê bao
SELECT Customers.CustomersName, Customers.CMND, Customers.Address, 
Subscriptions.PhoneNumber, Subscriptions.SubscriptionType, Subscriptions.RegistrationDate
FROM Customers JOIN Subscriptions ON Customers.CustomersID = Subscriptions.CustomersID;
