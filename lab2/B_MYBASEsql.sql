CREATE DATABASE B_MyBase
GO 

CREATE TABLE Groups (
	GroupID INT PRIMARY KEY NOT NULL,
	Specialty NVARCHAR(100) NOT NULL,
    Department NVARCHAR(100),
    StudentsCount INT NOT NULL
);
GO

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    LastName NVARCHAR(50),
    FirstName NVARCHAR(50),
    MiddleName NVARCHAR(50),
    Phone NVARCHAR(20),
    Experience INT
);
GO

CREATE TABLE Courses (
	CourseID INT PRIMARY KEY,
	GroupID INT FOREIGN KEY REFERENCES Groups (GroupID),
	TeacherID INT FOREIGN KEY REFERENCES Teachers (TeacherID),
	Subject NVARCHAR(100),
    LessonType NVARCHAR(50),
    Hours INT,
    Payment MONEY
);
GO

INSERT INTO Groups (GroupID, Specialty, Department, StudentsCount) VALUES
(1, '����������� ���������', '��', 25),
(2, '������������ �����', '��', 22),
(3, '�������������� ������������', '��', 18),
(4, '������', '������������', 15),
(5, '���������', '���', 30),
(6, '����������', '���', 28),
(7, '���������� ����������', '����', 20),
(8, '�����������', '����������', 17),
(9, '�����������', '����������', 19),
(10, '���������', '������������', 23);

INSERT INTO Teachers (TeacherID, LastName, FirstName, MiddleName, Phone, Experience) VALUES
(1, '�����', '�������', '����������', '89001234567', 10),
(2, '�����', '�����', '����������', '89002345678', 8),
(3, '�����', '����������', '���������', '89003456789', 12),
(4, '������', '�����', '��������', '89004567890', 15),
(5, '�������', '�����', '������������', '89005678901', 9),
(6, '������', '������', '��������', '89006789012', 11),
(7, '����', '����', '�������������', '89007890123', 7),
(8, '��������', '�����', '������������', '89008901234', 14),
(9, '���������', '�������', '��������', '89009012345', 6),
(10, '�������', '������', '��������', '89010123456', 13);


INSERT INTO Courses (CourseID, GroupID, TeacherID, Subject, LessonType, Hours, Payment) VALUES
(1, 1, 2, '���� ������', '������', 40, 50000),
(2, 2, 1, '������� �����������������', '��������', 50, 60000),
(3, 3, 3, '�������������� ������������', '������', 45, 55000),
(4, 4, 4, '����������� ������', '������', 35, 45000),
(5, 5, 5, '���������� ������', '��������', 40, 50000),
(6, 6, 6, '���������', '������', 38, 48000),
(7, 7, 7, '������������ �����', '��������', 42, 53000),
(8, 8, 8, '�������������', '������', 37, 49000),
(9, 9, 9, '����������� �����', '��������', 44, 52000),
(10, 10, 10, '�����������', '������', 36, 46000);
