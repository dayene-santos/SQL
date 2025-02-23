/* 4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade 
total de funcionários do sexo Masculino e do sexo Feminino.  
a) Descubra essas duas informações utilizando o SQL. */

/*SELECT 
		COUNT(FirstName)AS 'Masculino'
FROM
		DimEmployee
WHERE Gender = 'M'

SELECT 
		COUNT(FirstName) AS 'Feminino'
FROM
		DimEmployee
WHERE Gender = 'F'  */

/* b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação. */

SELECT	
		Top(1) FirstName,
		HireDate,
		EmailAddress
FROM 
		DimEmployee
 WHERE Gender = 'M'
 ORDER BY HireDate ASC