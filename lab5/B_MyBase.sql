USE B_MyBase
GO 

SELECT DISTINCT Department
FROM Groups
	WHERE Specialty IN (SELECT Specialty FROM Groups
							WHERE Specialty LIKE '%техно%')

SELECT DISTINCT g1.Department
FROM Groups g1
INNER JOIN Groups g2 ON g1.Specialty = g2.Specialty
	WHERE g2.Specialty LIKE '%техно%' 

SELECT DISTINCT g.Department
FROM Groups g
INNER JOIN Courses c ON g.GroupID = c.GroupID
	WHERE g.Specialty LIKE '%техно%' 
		OR c.Subject LIKE '%техно%';

SELECT g1.*
FROM Groups g1
WHERE StudentsCount = (
    SELECT TOP 1 StudentsCount
    FROM Groups g2
    WHERE g1.Department = g2.Department
    ORDER BY StudentsCount DESC
)
ORDER BY StudentsCount DESC


SELECT t.TeacherID, t.LastName, t.FirstName, t.MiddleName
FROM Teachers t
WHERE NOT EXISTS (
    SELECT 1 FROM Courses c WHERE c.TeacherID = t.TeacherID
)

SELECT 
    (SELECT AVG(Payment) FROM Courses WHERE Subject LIKE '%базы данных%') AS Avg_DB,
    (SELECT AVG(Payment) FROM Courses WHERE Subject LIKE '%сети%' OR Subject LIKE '%сетевое%') AS Avg_Network,
    (SELECT AVG(Payment) FROM Courses WHERE Subject LIKE '%информационная безопасность%' OR Subject LIKE '%кибер%') AS Avg_Security

SELECT * 
FROM Courses 
WHERE Payment <= ALL (SELECT Payment FROM Courses)

SELECT *
FROM Courses
WHERE Payment >= ANY (SELECT Payment FROM Courses)