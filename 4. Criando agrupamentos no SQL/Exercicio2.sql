-- 2. Análise de vendas por produto. Valor total vendido por produto
--SELECT * FROM FactSales
-- a)
SELECT 
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Total de Venda'
FROM 
	FactSales
GROUP BY 
	ProductKey
HAVING 
	SUM(SalesAmount) >= 5000000
ORDER BY 
	SUM(SalesAmount) DESC

-- b)

SELECT TOP(10)
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Total de Venda'
FROM 
	FactSales
GROUP BY 
	ProductKey
ORDER BY 
	SUM(SalesAmount) DESC

