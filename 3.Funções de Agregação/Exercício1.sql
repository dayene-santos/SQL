/* 1. O gerente comercial pediu a voc� uma an�lise da Quantidade Vendida e Quantidade 
Devolvida para o canal de venda mais importante da empresa:  Store. 
Utilize uma fun��o SQL para fazer essas consultas no seu banco de dados. Obs: Fa�a essa 
an�lise considerando a tabela FactSales. */

SELECT
			SUM(SalesQuantity) AS 'Quantidade Vendida', -- A quantidade vendida foi de 29089448 itens.
			SUM(ReturnQuantity) AS 'Quantidade de Devolu��es' -- A quantidade de devolu��es foi de 274205 itens.
FROM 
		FactSales
WHERE channelKey = 1