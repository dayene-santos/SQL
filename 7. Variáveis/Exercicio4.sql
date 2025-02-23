/*SELECT TOP(3) * FROM DimStore
SELECT TOP(2) 
	StoreName AS 'Loja', 
	CloseDate AS 'Data de Fechamento', 
	StoreKey AS 'ID Loja'
FROM	
	DimStore 
WHERE Status = 'Off' 
ORDER BY CloseDate
DECLARE @lojasFechadas VARCHAR(100)
SET @lojasFechadas =(SELECT
	StoreName AS 'Loja'
FROM
	DimStore
WHERE StoreKey IN ('119', '129'))
PRINT 'As lojas fechadas no ano de 2008 foram:  ' + @lojasFechadas */

SELECT StoreName FROM DimStore
WHERE FORMAT(CloseDate, 'yyyy') = 2008 

DECLARE @varListaLojas VARCHAR(50)
SET @varListaLojas = ' ' 

SELECT
	@varListaLojas = @varListaLojas + StoreName + ', '
FROM 
	DimStore
WHERE FORMAT(CloseDate, 'yyyy') = 2008 
 
PRINT 'As lojas fechadas no ano de 2008 foram:  ' + @varListaLojas 
