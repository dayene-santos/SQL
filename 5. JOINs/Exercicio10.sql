/* A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel, 
DimStore e DimProduct. 
Recrie esta consulta e classifique em ordem decrescente de acordo com SalesAmount.*/ 

SELECT TOP(2) * FROM FactSales
SELECT TOP(2) * FROM DimChannel
SELECT TOP(2) * FROM DimStore
SELECT TOP(2) * FROM DimProduct


SELECT 
	SalesKey AS 'ID de Venda',
	ChannelName AS 'Canal',
	StoreName AS 'Nome da Loja',
	ProductName AS 'Nome do Produto',
	SalesAmount AS 'Qtde. Vendas'
FROM 
	FactSales
INNER JOIN DimChannel
	ON FactSales.ChannelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON DimProduct.ProductKey = FactSales.ProductKey

ORDER BY
	SalesAmount DESC
