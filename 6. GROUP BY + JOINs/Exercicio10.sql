/*10. Faça um agrupamento duplo de quantidade de produtos por BrandName e 
ProductSubcategoryName. A tabela final deverá ser ordenada de acordo com a coluna 
BrandName.*/

SELECT TOP(1) * FROM DimProduct
SELECT TOP(1) * FROM DimProductSubcategory

SELECT 
	BrandName AS 'Marca',
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) AS 'Qtde. Produtos'
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY BrandName, ProductSubcategoryName
ORDER BY BrandName