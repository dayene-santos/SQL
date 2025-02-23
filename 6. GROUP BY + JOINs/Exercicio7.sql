/* FACTSTRATEGYPLAN 
7.  Calcule a SOMA TOTAL de AMOUNT referente � tabela FactStrategyPlan destinado aos 
cen�rios: Actual e Budget. 
Dica: A tabela DimScenario ser� importante para esse exerc�cio. */

SELECT TOP(10) * FROM FactStrategyPlan
SELECT TOP(10) * FROM DimScenario

SELECT 
	ScenarioName AS 'Cen�rio',
	SUM(Amount) AS 'Soma Total'
FROM 
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName IN('Actual', 'Budget')
GROUP BY ScenarioName

