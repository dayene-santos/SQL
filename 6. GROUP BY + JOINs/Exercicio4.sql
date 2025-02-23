/* 4. a) Voc� deve fazer uma consulta � tabela FactOnlineSales e descobrir qual � o nome completo 
do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity). */  --> LACEY XU

-- SELECT TOP(1) * FROM FactOnlineSales
-- SELECT TOP(10) * FROM DimCustomer

SELECT TOP(10) 
	DimCustomer.CustomerKey AS 'Categoria',
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY DimCustomer.CustomerKey, FirstName, LastName
ORDER BY SUM(SalesQuantity) DESC



/*
b) Feito isso, fa�a um agrupamento de produtos e descubra quais foram os top 10 produtos mais 
comprados pelo cliente da letra a, considerando o nome do produto. */
SELECT TOP(1) * FROM DimProduct

SELECT TOP(1) * FROM FactOnlineSales

SELECT
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = 7665
GROUP BY
	ProductName
ORDER BY SUM(SalesQuantity) DESC 