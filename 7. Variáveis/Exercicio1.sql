DECLARE @valor1 FLOAT,  @valor2 FLOAT, @valor3 FLOAT, @valor4 FLOAT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7

DECLARE @soma FLOAT
SET @soma = @valor1 + @valor2

DECLARE @subtra��o FLOAT
SET @subtra��o = @valor3 - @valor4

DECLARE @multiplicacao FLOAT
SET @multiplicacao = @valor1 * @valor4

DECLARE @divisao FLOAT
SET @divisao = @valor3 / @valor4

SELECT
	@soma AS 'Soma',
	@subtra��o AS 'Subtra��o',
	@multiplicacao AS 'Multiplica��o',
	@divisao AS 'Divis�o'

SELECT ROUND(@divisao, 2) AS 'Valor Arredondado' 

