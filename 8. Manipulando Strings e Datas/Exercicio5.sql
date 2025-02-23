SELECT TOP(10) * FROM DimEmployee

SELECT
	FirstName AS 'Nome',
	EmailAddress AS 'Email',
	HireDate AS 'Data de Contrata��o',
	DAY(HireDate) AS 'Dia da Contrata��o',
	DATENAME(MONTH, HireDate) AS 'M�s da Contrata��o',
	YEAR(HireDate) AS 'Ano da Contrata��o'
FROM 
	DimEmployee