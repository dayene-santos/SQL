/* DIMEMPLOYEE 
9. Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o 
Departamento (DepartmentName). Importante: Você deverá considerar apenas os 
funcionários ativos.*/

SELECT * FROM DimEmployee

SELECT
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'Qtde. Funcionários'
FROM 
	DimEmployee
WHERE 
	EndDate IS NULL
GROUP BY
	DepartmentName
ORDER BY
	SUM(EmployeeKey) DESC
