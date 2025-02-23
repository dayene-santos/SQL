/* 5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes 
informações: 
a) Quantidade distinta de cores de produtos. 
b) Quantidade distinta de marcas 
c) Quantidade distinta de classes de produto 
Para simplificar, você pode fazer isso em uma mesma consulta. */

-- SELECT * FROM DimProduct

SELECT  
		COUNT (DISTINCT ColorName) AS 'Quantidade de Cores',
		COUNT (DISTINCT BrandName) AS 'Quantidade de Marcas',
		COUNT (DISTINCT ClassName) AS 'Classes de Produto'

FROM DimProduct