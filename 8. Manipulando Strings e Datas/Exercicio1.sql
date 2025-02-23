/* a) Seu gestor te pede para listar todos os produtos para que seja criado um gr�fico para ser 
apresentado na reuni�o di�ria de equipe. Fa�a uma consulta � tabela DimProduct que 
retorne (1) o nome do produto e (2) a quantidade de caracteres que cada produto tem, 
e ordene essa tabela do produto com a maior quantidade de caracteres para a menor. */

SELECT TOP(100) * FROM DimProduct
SELECT 
	ProductName,
	Len(ProductName) AS 'Qtde Caracteres'
FROM 
	DimProduct
ORDER BY Len(ProductName)DESC

-- b) Qual � a m�dia de caracteres dos nomes dos produtos? 
SELECT
	AVG(Len(ProductName)) AS 'M�dia de Caracteres'
FROM 
	DimProduct

/* c) Analise a estrutura dos nomes dos produtos e verifique se seria poss�vel reduzir o tamanho 
do nome dos produtos. (Dica: existem informa��es redundantes nos nomes dos produtos? 
Seria poss�vel substitu�-las?) */ 
SELECT
	ProductName,
	REPLACE(REPLACE(ProductName, BrandName, ' '), ColorName, ' ')
FROM
	DimProduct
-- d) Qual � a m�dia de caracteres nesse novo cen�rio?
SELECT
	AVG(LEN(REPLACE(REPLACE(ProductName, BrandName, ' '), ColorName, ' ')))
FROM
	DimProduct