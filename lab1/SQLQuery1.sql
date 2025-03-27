SELECT Goods.Наименование, Orders.Дата_поставки
FROM     Goods INNER JOIN
                  Orders ON Goods.Наименование = Orders.Наименование_товара
WHERE  (Orders.Дата_поставки > CONVERT(DATETIME, '2025-02-21 00:00:00', 102))

SELECT Goods.Наименование, Orders.Цена_продажи
FROM     Goods INNER JOIN
                  Orders ON Goods.Наименование = Orders.Наименование_товара
WHERE  (Orders.Цена_продажи > 1900 AND Orders.Цена_продажи < 6000)

SELECT Orders.Наименование_товара, Customers.Наименование_фирмы
FROM     Customers INNER JOIN
                  Orders ON Customers.Наименование_фирмы = Orders.Заказчик
WHERE  (Orders.Наименование_товара = N'Мышь' OR Orders.Наименование_товара = N'Принтер')


SELECT Orders.Дата_поставки, Customers.Наименование_фирмы
FROM     Customers INNER JOIN
                  Orders ON Customers.Наименование_фирмы = Orders.Заказчик
WHERE  (Customers.Наименование_фирмы = N'МастерСтрой')
ORDER BY Orders.Дата_поставки