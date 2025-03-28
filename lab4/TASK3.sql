USE lab4
GO

SELECT DISTINCT PROGRESS.NOTE[������], STUDENT.NAME[��� ��������],
		SUBJECT.SUBJECT[����������], PULPIT.PULPIT[�������], FACULTY.FACULTY[���������],
CASE 
WHEN(PROGRESS.NOTE = 6) THEN '�����'
WHEN(PROGRESS.NOTE = 7) THEN '����'
WHEN(PROGRESS.NOTE = 8) THEN '������'
ELSE '�� 6, 7 ��� 8'
END [����������]

FROM PROGRESS
INNER JOIN STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
INNER JOIN SUBJECT ON PROGRESS.SUBJECT = SUBJECT.SUBJECT
INNER JOIN PULPIT ON SUBJECT.PULPIT = PULPIT.PULPIT
INNER JOIN FACULTY ON FACULTY.FACULTY = PULPIT.FACULTY
INNER JOIN PROFESSION ON PROFESSION.FACULTY = FACULTY.FACULTY

WHERE PROGRESS.NOTE BETWEEN 6 AND 8
ORDER BY PROGRESS.NOTE DESC;

SELECT * FROM PROGRESS;
