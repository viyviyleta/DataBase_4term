USE lab4
GO 

SELECT IDSTUDENT, NOTE
FROM PROGRESS WHERE NOTE >= ALL (SELECT NOTE FROM PROGRESS)

SELECT IDSTUDENT, NOTE
FROM PROGRESS WHERE NOTE <= ANY (SELECT NOTE FROM PROGRESS)