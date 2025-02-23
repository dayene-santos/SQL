 -- DIMPRODUCT 


-- 4. a) Fa�a um agrupamento e descubra a quantidade total de produtos por marca. 
SELECT
	BrandName AS 'Marca', 
	Count(ProductName) AS 'Qtde. Produtos'
FROM 
	DimProduct
GROUP BY 
	BrandName
ORDER BY 
	Count(ProductName) DESC

--b) Determine a m�dia do pre�o unit�rio (UnitPrice) para cada ClassName. 

SELECT 
	ClassName AS 'Nome da Classe',	
	AVG(UnitPrice) AS 'M�dia de Pre�o'
FROM 
	DimProduct
GROUP BY 
	ClassName

-- c) Fa�a um agrupamento de cores e descubra o peso total que cada cor de produto possui. 

SELECT 
	ColorName AS 'Cor',
	SUM(Weight)  AS 'Peso'
FROM 
	DimProduct
GROUP BY 
	ColorName
SELECT * FROM DimProduct