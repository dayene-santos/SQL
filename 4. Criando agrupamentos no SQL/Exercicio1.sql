--SELECT * FROM FactSales

-- 1.a) resumo da quantidade vendida de acordo com o canal de vendas

SELECT 
	channelKey As 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactSales
GROUP BY channelKey 

-- 1.b) Agrupamento da quantidade total vendida e quantidade total devolvida de acordo com o ID das lojas

SELECT
	StoreKey AS 'ID da Loja',
	SUM(SalesQuantity) AS 'Qtde. Vendida',
	SUM(ReturnQuantity) AS 'Qtde. Devolvida'
FROM 
	FactSales
GROUP BY  StoreKey
ORDER BY StoreKey 

--1.c) Resumo do total vendido  para cada canal de venda apenas para o ano de 2007

SELECT
	channelKey AS 'ID de Venda',
	SUM(SalesAmount) AS 'Total Vendido'
FROM 
	FactSales
WHERE 
	DateKey BETWEEN '20070101' AND '20071231'
GROUP BY 
	channelKey
ORDER BY 
	channelKey

	


