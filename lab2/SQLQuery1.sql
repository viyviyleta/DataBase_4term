CREATE DATABASE B_MyBase;
GO
USE B_MyBase;
GO

CREATE TABLE Groups (
	GroupID INT PRIMARY KEY NOT NULL,
	Specialty NVARCHAR(100) NOT NULL,
    Department NVARCHAR(100),
    StudentsCount INT NOT NULL
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    LastName NVARCHAR(50),
    FirstName NVARCHAR(50),
    MiddleName NVARCHAR(50),
    Phone NVARCHAR(20),
    Experience INT
);

CREATE TABLE Courses (
	CourseID INT PRIMARY KEY,
	GroupID INT FOREIGN KEY REFERENCES Groups (GroupID),
	TeacherID INT FOREIGN KEY REFERENCES Teachers (TeacherID),
	Subject NVARCHAR(100),
    LessonType NVARCHAR(50),
    Hours INT,
    Payment MONEY
);

INSERT INTO Groups (GroupID, Specialty, Department, StudentsCount) VALUES 
    (1, 'Программная инженерия', 'Информационные технологии', 25),
    (2, 'Программная инженерия', 'Информационные технологии', 20),
    (3, 'Графический дизайн', 'Дизайн и искусство', 15),
    (4, 'Экономика и финансы', 'Бизнес и менеджмент', 30),
    (5, 'Химическая технология', 'Химические науки', 28),
    (6, 'Мехатроника', 'Инженерные технологии', 22),
    (7, 'Кибербезопасность', 'Информационные технологии', 18),
    (8, 'Маркетинг', 'Бизнес и менеджмент', 27);
GO

INSERT INTO Teachers (TeacherID, LastName, FirstName, MiddleName, Phone, Experience) VALUES
    (1, 'Шиманов', 'Дмитрий', 'Васильевич', '89001234567', 10),
    (2, 'Мищук', 'Артур', 'Николаевич', '89002345678', 8),
    (3, 'Север', 'Александра', 'Сергеевна', '89003456789', 12),
    (4, 'Волчек', 'Дарья', 'Ивановна', '89004567890', 15),
    (5, 'Обухова', 'Елена', 'Владимировна', '89005678901', 9),
    (6, 'Иванов', 'Петр', 'Алексеевич', '89006781234', 11),
    (7, 'Козлов', 'Антон', 'Михайлович', '89007894567', 7),
    (8, 'Романова', 'Ольга', 'Петровна', '89008905678', 14);
GO

INSERT INTO Courses (CourseID, GroupID, TeacherID, Subject, LessonType, Hours, Payment) VALUES
    (1, 1, 2, 'Базы данных', 'Лекция', 40, 55000),
    (2, 4, 1, 'Сетевое администрирование', 'Практика', 50, 60000),
    (3, 3, 3, 'Дизайн пользовательского интерфейса', 'Лекция', 45, 58000),
    (4, 5, 4, 'Финансовый анализ', 'Лекция', 35, 47000),
    (5, 5, 5, 'Управление проектами', 'Практика', 40, 50000),
    (6, 7, 6, 'Основы кибербезопасности', 'Лабораторные', 50, 62000),
    (7, 6, 7, 'Робототехника', 'Лекция', 55, 64000),
    (8, 8, 8, 'Дигитальный маркетинг', 'Практика', 42, 53000);
GO


SELECT * FROM Courses;