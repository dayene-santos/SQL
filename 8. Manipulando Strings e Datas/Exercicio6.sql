/*6. Descubra qual � a loja que possui o maior tempo de atividade (em dias). Voc� dever� fazer essa 
consulta na tabela DimStore, e considerar a coluna OpenDate como refer�ncia para esse c�lculo.  */

SELECT * FROM DimStore
SELECT
	StoreName AS 'Nome da Loja',
	OpenDate AS 'Data de Abertura',
	DATEDIFF(DAY, OpenDate, GetDate())
FROM 
	DimStore
WHERE 
	CloseDate IS NULL
ORDER BY DATEDIFF(DAY, OpenDate, GetDate()) DESC