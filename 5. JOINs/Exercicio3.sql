/* Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do Pa�s associados 
(de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas: 
StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT 
JOIN neste exerc�cio. */

SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT 
	StoreKey AS 'ID Loja',
	StoreName AS 'Nome da Loja', 
	EmployeeCount AS 'Qtde. Funcion�rios',
	ContinentName AS 'Continente',
	RegionCountryName AS 'Regi�o'
FROM
	DimStore
LEFT JOIN	DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey