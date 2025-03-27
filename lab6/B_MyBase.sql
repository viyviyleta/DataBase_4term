USE B_MyBase
GO 

---������� 1---

SELECT Subject,
	   MAX(Hours) [Max],
	   MIN(Hours) [Min],
	   AVG(Hours) [Avg],
	   SUM(Hours) [Sum],
	   COUNT(*) [Count]
FROM Courses
GROUP BY Subject

---������� 2---

SELECT *
FROM (SELECT CASE 
		WHEN Courses.Hours < 40 THEN '������ 40 �����'
		WHEN  Courses.Hours BETWEEN 40 AND 42 THEN '�� 40 �� 42 �����'
	    ELSE '������ 42 �����'
	    END [�����������������], count(*)[����������]
FROM Courses GROUP BY CASE
	WHEN Courses.Hours <40 THEN '������ 40 �����'
		WHEN  Courses.Hours BETWEEN 40 AND 42 THEN '�� 40 �� 42 �����'
	    ELSE '������ 42 �����'
	END) AS T
		ORDER BY CASE[�����������������]
			WHEN '������ 40' THEN 3
			WHEN '�� 40 �� 42' THEN 2
			WHEN '������ 42' THEN 1
			ELSE 0
		END

---������� 3---

SELECT G.Specialty,
       C.Subject,
       G.GroupID,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
GROUP BY G.Specialty, C.Subject, G.GroupID
ORDER BY Avg_Payment DESC;

---������� 4---

SELECT G.Specialty,
       C.Subject,
       G.GroupID,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
INNER JOIN Teachers T ON C.TeacherID = T.TeacherID
WHERE C.Subject IN ('���� ������', '������� �����������������')
GROUP BY G.Specialty, C.Subject, G.GroupID
ORDER BY Avg_Payment DESC;

---������� 5---

SELECT G.Department,
       C.Subject,
       G.Specialty,
       ROUND(AVG(CAST(C.Payment AS FLOAT)), 2) AS Avg_Payment
FROM Groups G
INNER JOIN Courses C ON G.GroupID = C.GroupID
WHERE G.Department = '��'
GROUP BY G.Department, C.Subject, G.Specialty;

---������� 6---

SELECT C.Subject,
       C.Hours,
       COUNT(*) AS Course_Count
FROM Courses C
GROUP BY C.Subject, C.Hours
HAVING C.Hours = 40 OR C.Hours = 50
ORDER BY C.Subject;
