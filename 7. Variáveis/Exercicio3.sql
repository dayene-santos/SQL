DECLARE @nome VARCHAR (30)
SET @nome = 'Andr�'

DECLARE @data_nascimento DATETIME
SET @data_nascimento = '10/02/1998'

DECLARE @num_pets INT
SET @num_pets = 2

SELECT
	'Meu nome � ' + @nome + ', nasci em ' + FORMAT(CAST(@data_nascimento AS DATETIME), 'dd/MM/yyyy') + ' e tenho ' + CAST(@num_pets AS VARCHAR(MAX)) + ' pets.' 