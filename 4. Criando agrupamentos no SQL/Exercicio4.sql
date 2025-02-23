 -- DIMPRODUCT 


-- 4. a) Faça um agrupamento e descubra a quantidade total de produtos por marca. 
SELECT
	BrandName AS 'Marca', 
	Count(ProductName) AS 'Qtde. Produtos'
FROM 
	DimProduct
GROUP BY 
	BrandName
ORDER BY 
	Count(ProductName) DESC

--b) Determine a média do preço unitário (UnitPrice) para cada ClassName. 

SELECT 
	ClassName AS 'Nome da Classe',	
	AVG(UnitPrice) AS 'Média de Preço'
FROM 
	DimProduct
GROUP BY 
	ClassName

-- c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui. 

SELECT 
	ColorName AS 'Cor',
	SUM(Weight)  AS 'Peso'
FROM 
	DimProduct
GROUP BY 
	ColorName
SELECT * FROM DimProduct