SELECT TOP(1) * FROM FactOnlineSales
SELECT TOP(1) * FROM DimCustomer
SELECT 
	DimCustomer.Gender AS 'Genero',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL
GROUP BY Gender

