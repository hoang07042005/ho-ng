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
	Cost MONEY,
	
);
INSERT INTO Project
VALUES ('456', 'msa', '20131112', '20131212', 1, '123333'),
		('567', 'vds', '20130101', '20130301', 2, '1343254'),
		('678', 'gsa', '20120301', '20130601', 3, '3224523');






CREATE TABLE GroupDetail(
	GroupID  INT,
	EmployeeID INT ,
	Status CHAR(20),
	PRIMARY KEY (GroupID, EmployeeID),
	FOREIGN KEY (GroupID ) REFERENCES  Groups (GroupID ),
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);
INSERT INTO GroupDetail
VALUES (123, 1, 'hoan thanh'),
		(234, 2, 'hoan thanh'),
		(345, 3, 'hoan thanh');


SELECT * FROM Employee;
SELECT * FROM Groups;
SELECT * FROM Project;
SELECT * FROM GroupDetail;





SELECT DISTINCT Name FROM Employee;

SELECT E.*  FROM Employee AS E, Project AS P, Groups AS G, GroupDetail AS GD
WHERE GD.GroupID = G.GroupID
AND E.EmployeeID = GD.EmployeeID
AND G.ProjectID = P.ProjectID
AND P.ProjectName = 'msa'


SELECT G.GroupName, COUNT(gd.EmployeeID) AS EmployeeCount
FROM Groups G
LEFT JOIN GroupDetail gd ON G.GroupID = GD.GroupID
GROUP BY G.GroupName

SELECT E.* FROM Employee E
JOIN Groups G ON E.EmployeeID = G.LeaderID;


ALTER TABLE Employee
ALTER COLUMN Name NVARCHAR(100) NOT NULL;
