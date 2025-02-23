SELECT TOP(10) * FROM DimEmployee

SELECT
	FirstName AS 'Nome',
	EmailAddress AS 'Email',
	HireDate AS 'Data de Contratação',
	DAY(HireDate) AS 'Dia da Contratação',
	DATENAME(MONTH, HireDate) AS 'Mês da Contratação',
	YEAR(HireDate) AS 'Ano da Contratação'
FROM 
	DimEmployee