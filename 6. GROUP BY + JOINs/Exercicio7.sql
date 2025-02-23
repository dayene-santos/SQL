/* FACTSTRATEGYPLAN 
7.  Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos 
cenários: Actual e Budget. 
Dica: A tabela DimScenario será importante para esse exercício. */

SELECT TOP(10) * FROM FactStrategyPlan
SELECT TOP(10) * FROM DimScenario

SELECT 
	ScenarioName AS 'Cenário',
	SUM(Amount) AS 'Soma Total'
FROM 
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName IN('Actual', 'Budget')
GROUP BY ScenarioName

