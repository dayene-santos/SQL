/* A tabela FactStrategyPlan resume o planejamento estrat�gico da empresa. Cada linha 
representa um montante destinado a uma determinada AccountKey.  
a) Fa�a um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela. 
b) Fa�a um INNER JOIN para criar uma tabela contendo o AccountName para cada 
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: 
� StrategyPlanKey 
� DateKey 
� AccountName 
� Amount */

SELECT  TOP(100) * FROM FactStrategyPlan
SELECT TOP(10) * FROM DimAccount

SELECT 
	DimAccount.AccountName AS 'Nome da Conta',
	StrategyPlanKey AS 'ID Estrat�gia',
	DateKey AS 'Data',
	Amount 'Qtde. Vendas'
FROM
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

