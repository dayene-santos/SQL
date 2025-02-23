/* DIMPRODUCT/DIMPRODUCTSUBCATEGORY 
9. Fa�a um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em 
considera��o em sua an�lise apenas a marca Contoso e a cor Silver.*/ 

SELECT TOP(1)  * FROM DimProduct
SELECT TOP(1)* FROM DimProductSubcategory

SELECT 
	COUNT(Distinct(ProductName)) AS 'Qtde.',
	ProductSubcategoryName AS 'Category'
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName
