SELECT Goods.������������, Orders.����_��������
FROM     Goods INNER JOIN
                  Orders ON Goods.������������ = Orders.������������_������
WHERE  (Orders.����_�������� > CONVERT(DATETIME, '2025-02-21 00:00:00', 102))

SELECT Goods.������������, Orders.����_�������
FROM     Goods INNER JOIN
                  Orders ON Goods.������������ = Orders.������������_������
WHERE  (Orders.����_������� > 1900 AND Orders.����_������� < 6000)

SELECT Orders.������������_������, Customers.������������_�����
FROM     Customers INNER JOIN
                  Orders ON Customers.������������_����� = Orders.��������
WHERE  (Orders.������������_������ = N'����' OR Orders.������������_������ = N'�������')


SELECT Orders.����_��������, Customers.������������_�����
FROM     Customers INNER JOIN
                  Orders ON Customers.������������_����� = Orders.��������
WHERE  (Customers.������������_����� = N'�����������')
ORDER BY Orders.����_��������