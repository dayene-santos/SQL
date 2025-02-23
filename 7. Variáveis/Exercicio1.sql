DECLARE @valor1 FLOAT,  @valor2 FLOAT, @valor3 FLOAT, @valor4 FLOAT
SET @valor1 = 10
SET @valor2 = 5
SET @valor3 = 34
SET @valor4 = 7

DECLARE @soma FLOAT
SET @soma = @valor1 + @valor2

DECLARE @subtração FLOAT
SET @subtração = @valor3 - @valor4

DECLARE @multiplicacao FLOAT
SET @multiplicacao = @valor1 * @valor4

DECLARE @divisao FLOAT
SET @divisao = @valor3 / @valor4

SELECT
	@soma AS 'Soma',
	@subtração AS 'Subtração',
	@multiplicacao AS 'Multiplicação',
	@divisao AS 'Divisão'

SELECT ROUND(@divisao, 2) AS 'Valor Arredondado' 

