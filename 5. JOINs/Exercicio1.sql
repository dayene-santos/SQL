/* Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela 
DimProductSubcategory para a tabela DimProduct. */

SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Produto', 
	ProductSubcategoryName AS 'Subcategoria'
FROM
	DimProduct
INNER JOIN	DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductCategoryKey