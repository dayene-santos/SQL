/*3. Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na 
empresa. O seu gerente te pediu os seguintes n�meros e informa��es: */

-- a) Quantos funcion�rios tem a loja com mais funcion�rios? 
SELECT 
		MAX(EmployeeCount) AS 'Maior Qtd. Funcion�rios'
FROM	
		DimStore

-- b) Qual � o nome dessa loja? 
SELECT 
		Top(1)  StoreName AS 'Nome da Loja',
		EmployeeCount AS 'Qtd. Funcion�rios'
FROM
		DimStore
ORDER BY EmployeeCount DESC

-- c) Quantos funcion�rios tem a loja com menos funcion�rios? 
SELECT
		MIN(EmployeeCount) AS 'Menor Qdt. Funcion�rios' 
FROM
		DimStore

-- d) Qual � o nome dessa loja?
SELECT 
		Top(1) StoreName,
		EmployeeCount
FROM 
		DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC 