/* 
1. Voc� � respons�vel por controlar os dados de clientes e de produtos da sua empresa. 
O que voc� precisar� fazer � confirmar se: 
a. Existem 2.517 produtos cadastrados na base e, se n�o tiver, voc� dever� reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.
*/ 
SELECT * FROM DimProduct

-- Existem 2.517 produtos cadastrados na base

/*
b. At� o m�s passado, a empresa tinha um total de 19.500 clientes na base de controle. 
Verifique se esse n�mero aumentou ou reduziu.
*/

SELECT * FROM DimCustomer

-- O n�mero de clientes na base de controle reduziu para 18.869.