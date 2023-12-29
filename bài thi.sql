CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Department (
    DepartId INT PRIMARY KEY,
    DepartName VARCHAR(50) NOT NULL,
    Description VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    EmpCode CHAR(6) PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Birthday SMALLDATETIME NOT NULL,
    Gender BIT DEFAULT 1,
    Address VARCHAR(100),
    DepartID INT,
    FOREIGN KEY (DepartID) REFERENCES Department(DepartId),
    Salary MONEY
);

INSERT INTO Department VALUES
(1,'PTE','Protect the Environment'),
(2,'TP','Technology Project'),
(3,'ATP','Advertising technology products');

INSERT INTO Employee VALUES ('E001', 'Hoàng', 'Đỗ', '2005-07-04', 1, '123 Từ Mai St', 1, 5000000);
INSERT INTO Employee VALUES ('E002', 'Sơn', 'Nguyễn ', '2006-03-17', 0, '456 Mễ Trì Hạ St', 2, 6000000);
INSERT INTO Employee VALUES ('E003', 'Anh', 'Nguyễn', '2003-01-21', 1, '789 Phạm Hùng St', 3, 5500000);

Update Employee
SET Salary = Salary * 1.1
SELECT * FROM Employee

ALTER TABLE Employee
ADD CONSTRAINT Salary Check (Salary > 0)

SELECT * FROM Department;
SELECT * FROM Employee;
