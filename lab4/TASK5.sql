USE lab4
GO

SELECT *
FROM dbo.STUDENT FULL OUTER JOIN dbo.PROGRESS
ON dbo.STUDENT.IDSTUDENT = dbo.PROGRESS.IDSTUDENT
WHERE SUBJECT IS NULL

SELECT *
FROM dbo.AUDITORIUM FULL OUTER JOIN dbo.AUDITORIUM_TYPE
ON dbo.AUDITORIUM.AUDITORIUM_TYPE = dbo.AUDITORIUM_TYPE.AUDITORIUM_TYPE
WHERE AUDITORIUM is NULL


SELECT *
FROM dbo.AUDITORIUM FULL OUTER JOIN dbo.AUDITORIUM_TYPE
ON dbo.AUDITORIUM.AUDITORIUM_TYPE = dbo.AUDITORIUM_TYPE.AUDITORIUM_TYPE
WHERE AUDITORIUM.AUDITORIUM_TYPE IS NULL AND AUDITORIUM_TYPE.AUDITORIUM_TYPE IS NOT NULL