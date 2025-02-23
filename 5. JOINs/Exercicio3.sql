/* Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados 
(de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas: 
StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT 
JOIN neste exercício. */

SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT 
	StoreKey AS 'ID Loja',
	StoreName AS 'Nome da Loja', 
	EmployeeCount AS 'Qtde. Funcionários',
	ContinentName AS 'Continente',
	RegionCountryName AS 'Região'
FROM
	DimStore
LEFT JOIN	DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey