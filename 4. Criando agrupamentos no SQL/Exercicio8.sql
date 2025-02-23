/*8. Fa�a um agrupamento para descobrir a quantidade total de clientes e a m�dia salarial de 
acordo com o seu n�vel escolar. Utilize a coluna Education da tabela DimCustomer para fazer 
esse agrupamento.*/

SELECT * FROM DimCustomer

SELECT 
	Education AS 'N�vel Escolar',
	COUNT(Education) AS 'Qtde. Clientes',
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM
	DimCustomer
WHERE 
	Education IS NOT NULL
GROUP BY
	Education
	