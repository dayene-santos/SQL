-- 6. Voc� seria capaz de confirmar se todas as marcas dos produtos possuem � disposi��o todas as 
-- 16 op��es de cores?

SELECT * FROM DimProduct

SELECT 
	BrandName AS 'Marca',
	COUNT(DISTINCT ColorName) AS 'Qtde Cores'
FROM
	DimProduct
GROUP BY 
	BrandName

SELECT
	DISTINCT ColorName
FROM 
	DimProduct
WHERE 
	BrandName = 'Contoso'

