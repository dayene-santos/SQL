--SELECT * FROM FactOnlineSales
-- a)
SELECT Top(10)
	CustomerKey AS 'ID do Cliente',
	SUM(SalesQuantity) AS 'Qtde. Compras'
FROM 
	FactOnlineSales
GROUP BY 
	CustomerKey
ORDER BY 
	SUM(SalesQuantity) DESC 

--b)
SELECT Top(3)
	ProductKey AS 'ID Produto',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactOnlineSales
WHERE 
	CustomerKey = 19037
GROUP BY 
	ProductKey
ORDER BY 
	SUM(SalesQuantity) DESC