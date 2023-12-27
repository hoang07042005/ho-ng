CREATE TABLE Employee (
	EmployeeID INT PRIMARY KEY,
	Name  NVARCHAR(100),
	Tel CHAR(11),
	Email VARCHAR(30)
);
INSERT INTO Employee 
VALUES (1, 'Do Viet Hoang', '0352335720', 'doviethong07042005@gmail.com'),
	   (2, 'Nguyen The Son', '1234567890', 'theson123@gmail.com'),
	   (3, 'Nguyen Quang Anh', '0987654321', 'qunganh456@gmail.com');





CREATE TABLE Groups (
	GroupID  INT PRIMARY KEY, 
	GroupName VARCHAR(30),
	LeaderID INT,
	ProjectID INT, 
	FOREIGN KEY (LeaderID) REFERENCES Employee (EmployeeID)
);
INSERT INTO Groups
VALUES (123, 'ABC', 1, '456'),
	   (234, 'DEF', 2, '567'),
	   (345, 'GHI', 3, '678');





CREATE TABLE Project (
	ProjectID INT,
	ProjectName VARCHAR(30),
	StartDate DATETIME,
	EndDate DATETIME,
	Period int,
	Cost MONEY
);







CREATE TABLE GroupDetail(
	GroupID  INT,
	EmployeeID INT ,
	Status CHAR(20),
	PRIMARY KEY (GroupID, EmployeeID),
	FOREIGN KEY (GroupID ) REFERENCES  Groups (GroupID ),
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);



SELECT * FROM Employee;
SELECT * FROM Groups;
SELECT * FROM Project;
SELECT * FROM GroupDetail;


DROP TABLE Employee;
DROP TABLE Groups;
DROP TABLE Project;
DROP TABLE GroupDetail;