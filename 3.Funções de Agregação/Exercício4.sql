/* 4. A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade 
total de funcion�rios do sexo Masculino e do sexo Feminino.  
a) Descubra essas duas informa��es utilizando o SQL. */

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

/* b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as 
seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o. */

SELECT	
		Top(1) FirstName,
		HireDate,
		EmailAddress
FROM 
		DimEmployee
 WHERE Gender = 'M'
 ORDER BY HireDate ASC