DECLARE @varIdSubcategoria INT
DECLARE @varNomeSubcategoria VARCHAR(30)

SET @varNomeSubcategoria = 'Lamps'
SET @varIdSubcategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @varNomeSubcategoria) 

SELECT * FROM DimProduct
WHERE ProductSubcategoryKey = @varIdSubcategoria