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
(1, 'Программная инженерия', 'ИТ', 25),
(2, 'Компьютерные науки', 'ИТ', 22),
(3, 'Информационная безопасность', 'ИТ', 18),
(4, 'Дизайн', 'Гуманитарный', 15),
(5, 'Экономика', 'ПИМ', 30),
(6, 'Менеджмент', 'ПИМ', 28),
(7, 'Химическая технология', 'ХТиТ', 20),
(8, 'Мехатроника', 'Инженерный', 17),
(9, 'Электроника', 'Инженерный', 19),
(10, 'Филология', 'Гуманитарный', 23);

INSERT INTO Teachers (TeacherID, LastName, FirstName, MiddleName, Phone, Experience) VALUES
(1, 'Шиман', 'Дмитрий', 'Васильевич', '89001234567', 10),
(2, 'Мущук', 'Артур', 'Николаевич', '89002345678', 8),
(3, 'Север', 'Александра', 'Сергеевна', '89003456789', 12),
(4, 'Волчек', 'Дарья', 'Ивановна', '89004567890', 15),
(5, 'Обухова', 'Елена', 'Владимировна', '89005678901', 9),
(6, 'Климов', 'Андрей', 'Петрович', '89006789012', 11),
(7, 'Зуев', 'Олег', 'Александрович', '89007890123', 7),
(8, 'Кирсанов', 'Игорь', 'Владимирович', '89008901234', 14),
(9, 'Мартынова', 'Людмила', 'Павловна', '89009012345', 6),
(10, 'Федоров', 'Сергей', 'Иванович', '89010123456', 13);


INSERT INTO Courses (CourseID, GroupID, TeacherID, Subject, LessonType, Hours, Payment) VALUES
(1, 1, 2, 'Базы данных', 'Лекция', 40, 50000),
(2, 2, 1, 'Сетевое администрирование', 'Практика', 50, 60000),
(3, 3, 3, 'Информационная безопасность', 'Лекция', 45, 55000),
(4, 4, 4, 'Графический дизайн', 'Лекция', 35, 45000),
(5, 5, 5, 'Финансовый анализ', 'Практика', 40, 50000),
(6, 6, 6, 'Маркетинг', 'Лекция', 38, 48000),
(7, 7, 7, 'Органическая химия', 'Практика', 42, 53000),
(8, 8, 8, 'Робототехника', 'Лекция', 37, 49000),
(9, 9, 9, 'Электронные схемы', 'Практика', 44, 52000),
(10, 10, 10, 'Лингвистика', 'Лекция', 36, 46000);
