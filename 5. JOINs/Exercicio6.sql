/* Vamos continuar analisando a tabela FactStrategyPlan. Além da coluna AccountKey que 
identifica o tipo de conta, há também uma outra coluna chamada ScenarioKey. Essa coluna 
possui a numeração que identifica o tipo de cenário: Real, Orçado e Previsão. 
Faça um INNER JOIN para criar uma tabela contendo o ScenarioName para cada ScenarioKey 
da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: 
• StrategyPlanKey 
• DateKey 
• ScenarioName  
• Amount */

SELECT TOP(100) * FROM FactStrategyPlan
SELECT * FROM DimAccount

SELECT TOP(100)
	StrategyPlanKey AS 'ID Estratégia',
	DateKey AS 'Data',
	DimScenario.ScenarioName AS 'Cenário',
	Amount AS 'Qtde. Venda'
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON	DimScenario.ScenarioKey = FactStrategyPlan.ScenarioKey