/* Por�m, o setor de controle decidiu alterar a identifica��o do StyleName, e em vez de usar 
n�meros, a ideia agora � passar a usar letras para substituir os n�meros, conforme exemplo 
abaixo: 
0 -> A, 1 -> B, 2 -> C, 3 -> D, 4 -> E, 5 -> F, 6 -> G, 7 -> H, 8 -> I, 9 - J */

SELECT TOP (10) * FROM DimProduct

SELECT
	ProductName,
	StyleName,
	TRANSLATE(StyleName, '0123456789', 'ABCDEFGHIJ')
FROM 
	DimProduct
