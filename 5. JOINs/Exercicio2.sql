/* Identifique uma coluna em comum entre as tabelas DimProductSubcategory e 
DimProductCategory. Utilize essa coluna para complementar informações na tabela 
DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN. */

--SELECT * FROM DimProductCategory
--SELECT * FROM DimProductSubcategory

SELECT 
	ProductSubcategoryKey AS 'ID Categoria',
	ProductSubcategoryName AS 'Nome da Categoria',
	ProductCategoryName AS 'Nome da Subcategoria'

FROM 
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
