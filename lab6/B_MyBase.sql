USE B_MyBase
GO 

---Задание 1---

SELECT Subject,
	   MAX(Hours) [Max],
	   MIN(Hours) [Min],
	   AVG(Hours) [Avg],
	   SUM(Hours) [Sum],
	   COUNT(*) [Count]
FROM Courses
GROUP BY Subject

---Задание 2---

SELECT *
FROM (SELECT CASE 
		WHEN Courses.Hours < 40 THEN 'меньше 40 часов'
		WHEN  Courses.Hours BETWEEN 40 AND 42 THEN 'от 40 до 42 часов'
	    ELSE 'больше 42 часов'
	    END [Продолжительность], count(*)[Количество]
FROM Courses GROUP BY CASE
	WHEN Courses.Hours <40 THEN 'меньше 40 часов'
		WHEN  Courses.Hours BETWEEN 40 AND 42 THEN 'от 40 до 42 часов'
	    ELSE 'больше 42 часов'
	END) AS T
		ORDER BY CASE[Продолжительность]
			WHEN 'меньше 40' THEN 3
			WHEN 'от 40 до 42' THEN 2
			WHEN 'больше 42' THEN 1
			ELSE 0
		END

---Задание 3---

SELECT G.Specialty,
       C.Subject,
       G.GroupID,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
GROUP BY G.Specialty, C.Subject, G.GroupID
ORDER BY Avg_Payment DESC;

---Задание 4---

SELECT G.Specialty,
       C.Subject,
       G.GroupID,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
WHERE C.Subject IN ('Базы данных', 'Сетевое администрирование')
GROUP BY G.Specialty, C.Subject, G.GroupID
ORDER BY Avg_Payment DESC;

---Задание 5---

SELECT G.Department,
       C.Subject,
       G.Specialty,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
WHERE G.Department = 'ИТ'
GROUP BY G.Department, C.Subject, G.Specialty;

---Задание 6---

SELECT C.Subject,
       C.Hours,
       COUNT(*) AS Course_Count
FROM Courses C
GROUP BY C.Subject, C.Hours
HAVING C.Hours = 40 OR C.Hours = 50
ORDER BY C.Subject;
