SELECT TOP(1) * FROM FactSales
SELECT TOP(1) * FROM DimDate
/*1. a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal 
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, 
em ordem decrescente. */

SELECT 
	ChannelName AS 'ID Canal',
	SUM(SalesQuantity) AS 'Qtde. Vendida'
FROM 
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY 
	ChannelName
ORDER BY 
	SUM(SalesQuantity) DESC

/* b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e 
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas 
(StoreName). */

SELECT 
	StoreName AS 'Loja',
	SUM(SalesQuantity) AS 'Qtde. Vendas',
	SUM(ReturnQuantity) AS 'Qtde. Devolvida'
FROM 
	FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName

/* c) Faça um resumo do valor total vendido (Sales Amount) para cada mês 
(CalendarMonthLabel) e ano (CalendarYear).*/

SELECT 
	DimDate.CalendarYear AS 'Ano',
	DimDate.CalendarMonthLabel AS 'Mês',
	SUM(SalesAmount) AS 'Total Vendido'
FROM 
	FactSales 
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarYear, CalendarMonthLabel, CalendarMonth
ORDER BY CalendarMonth ASC