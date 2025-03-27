USE B_MyBase
GO

SELECT     
	C.CourseID,
    C.Subject,
    T.LastName,
    T.FirstName,
    G.Specialty,
    G.Department
FROM Courses C 
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
INNER JOIN Groups G ON C.GroupID = G.GroupID


SELECT 
    C.CourseID,
    C.Subject,
    T.LastName,
    T.FirstName,
    G.Specialty,
    G.Department
FROM Courses AS C
INNER JOIN Teachers AS T ON C.TeacherID = T.TeacherID
INNER JOIN Groups AS G ON C.GroupID = G.GroupID
WHERE C.Subject LIKE '%Проект%';

SELECT 
    G.Specialty[Специальность],
    G.Department,
    C.Subject,
	C.Hours,
    T.LastName + ' ' + T.FirstName[Преподаватель],
    CASE 
        WHEN C.Hours BETWEEN 35 AND 45 THEN 'Средний курс'
        WHEN C.Hours > 45 THEN 'Длинный курс'
        ELSE 'Короткий курс'
    END [Тип курса]
FROM Courses C
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
INNER JOIN Groups G ON C.GroupID = G.GroupID
ORDER BY C.Hours DESC

SELECT 
	G.Department[Кафедра],
	ISNULL(T.LastName, '~~~')[Преподавтели]
FROM Groups G 
LEFT OUTER JOIN Teachers T ON G.GroupID = T.TeacherID

SELECT     
	G.Specialty,
    C.Subject
FROM Groups G 
FULL OUTER JOIN Courses C ON G.GroupID = C.GroupID


SELECT 
	G.Specialty,
    C.Subject
FROM Groups G
CROSS JOIN Courses C
