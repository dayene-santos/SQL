/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor 
total vendido (SalesQuantity) por produto.*/ 

SELECT TOP(1) * FROM DimProduct
SELECT TOP(10) 
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName

-- a) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).*/

SELECT
	ColorName AS 'COR',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY SUM(SalesQuantity) DESC

-- b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000. 

SELECT 
	ColorName AS 'COR',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) >= 3000000
ORDER BY SUM(SalesQuantity) DESC