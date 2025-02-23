/* Vamos continuar analisando a tabela FactStrategyPlan. Al�m da coluna AccountKey que 
identifica o tipo de conta, h� tamb�m uma outra coluna chamada ScenarioKey. Essa coluna 
possui a numera��o que identifica o tipo de cen�rio: Real, Or�ado e Previs�o. 
Fa�a um INNER JOIN para criar uma tabela contendo o ScenarioName para cada ScenarioKey 
da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: 
� StrategyPlanKey 
� DateKey 
� ScenarioName  
� Amount */

SELECT TOP(100) * FROM FactStrategyPlan
SELECT * FROM DimAccount

SELECT TOP(100)
	StrategyPlanKey AS 'ID Estrat�gia',
	DateKey AS 'Data',
	DimScenario.ScenarioName AS 'Cen�rio',
	Amount AS 'Qtde. Venda'
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON	DimScenario.ScenarioKey = FactStrategyPlan.ScenarioKey