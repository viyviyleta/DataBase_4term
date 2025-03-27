use BVS_BASE;

SELECT * from ТОВАРЫ;

SELECT Артикул, Количество_на_складе from ТОВАРЫ;

SELECT Название_детали [больше 20],Количество_на_складе from ТОВАРЫ where Количество_на_складе >20;

SELECT count(*) from ТОВАРЫ;

SELECT * from ЗАКАЗЫ;