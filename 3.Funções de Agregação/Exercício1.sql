/* 1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade 
Devolvida para o canal de venda mais importante da empresa:  Store. 
Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa 
análise considerando a tabela FactSales. */

SELECT
			SUM(SalesQuantity) AS 'Quantidade Vendida', -- A quantidade vendida foi de 29089448 itens.
			SUM(ReturnQuantity) AS 'Quantidade de Devoluções' -- A quantidade de devoluções foi de 274205 itens.
FROM 
		FactSales
WHERE channelKey = 1