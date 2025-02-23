/* a) Seu gestor te pede para listar todos os produtos para que seja criado um gráfico para ser 
apresentado na reunião diária de equipe. Faça uma consulta à tabela DimProduct que 
retorne (1) o nome do produto e (2) a quantidade de caracteres que cada produto tem, 
e ordene essa tabela do produto com a maior quantidade de caracteres para a menor. */

SELECT TOP(100) * FROM DimProduct
SELECT 
	ProductName,
	Len(ProductName) AS 'Qtde Caracteres'
FROM 
	DimProduct
ORDER BY Len(ProductName)DESC

-- b) Qual é a média de caracteres dos nomes dos produtos? 
SELECT
	AVG(Len(ProductName)) AS 'Média de Caracteres'
FROM 
	DimProduct

/* c) Analise a estrutura dos nomes dos produtos e verifique se seria possível reduzir o tamanho 
do nome dos produtos. (Dica: existem informações redundantes nos nomes dos produtos? 
Seria possível substituí-las?) */ 
SELECT
	ProductName,
	REPLACE(REPLACE(ProductName, BrandName, ' '), ColorName, ' ')
FROM
	DimProduct
-- d) Qual é a média de caracteres nesse novo cenário?
SELECT
	AVG(LEN(REPLACE(REPLACE(ProductName, BrandName, ' '), ColorName, ' ')))
FROM
	DimProduct