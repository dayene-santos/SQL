-- 8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.

SELECT TOP(10) * FROM FactStrategyPlan
SELECT TOP(1) * FROM DimDate

SELECT 
	CalendarYear 'Ano',
	SUM(Amount) AS 'Resultado'
FROM 
	FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYear