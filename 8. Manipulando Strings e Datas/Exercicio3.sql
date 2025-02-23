SELECT TOP(10) * FROM DimEmployee

SELECT	
	CONCAT(FirstName, ' ', LastName) As 'Nome Completo',
	EmailAddress AS 'Email',
	REPLACE(EmailAddress,	'@contoso.com', ' ') AS 'ID Email',
	CONCAT(FirstName,DAY(BirthDate)) AS 'Senha'
FROM
	DimEmployee