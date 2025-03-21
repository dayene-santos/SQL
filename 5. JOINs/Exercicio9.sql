/* Neste exerc�cio, voc� dever� relacionar as tabelas FactOnlineSales com DimPromotion. 
Identifique a coluna que as duas tabelas t�m em comum e utilize-a para criar esse 
relacionamento. 
Retorne uma tabela contendo as seguintes colunas: 
� OnlineSalesKey 
� DateKey 
� PromotionName 
� SalesAmount 
A sua consulta deve considerar apenas as linhas de vendas referentes a produtos com 
desconto (PromotionName <> �No Discount�). Al�m disso, voc� dever� ordenar essa tabela de 
acordo com a coluna DateKey, em ordem crescente. */

SELECT TOP(10)* FROM FactOnlineSales
SELECT TOP(10)* FROM DimPromotion

SELECT TOP(100)
	OnlineSalesKey AS 'ID Vendas Online',
	DateKey AS 'Data',
	PromotionName AS 'Promo��o',
	SalesAmount AS 'Qtde. Vendas'
FROM 
	FactOnlineSales
LEFT JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC