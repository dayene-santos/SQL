DECLARE @produto VARCHAR (10)
SET @produto = 'Celular'

DECLARE @quantidade INT
SET @quantidade = 12

DECLARE @preco FLOAT
SET @preco = 9.99

DECLARE @faturamento FLOAT
SET @faturamento = @quantidade * @preco

SELECT 
	@produto AS 'Produto',
	@quantidade AS 'Quantidade',
	@preco AS 'Preço',
	@faturamento AS 'Faturamento'