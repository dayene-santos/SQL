/*
2. Voc� trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer 
descontos especiais para os clientes no dia de seus anivers�rios. Para isso, voc� vai precisar 
listar todos os clientes e as suas respectivas datas de nascimento, al�m de um contato. 
*/

-- a) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer. 

SELECT 
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
FROM DimCustomer

-- b) Renomeie as colunas dessa tabela usando o alias (comando AS).

SELECT
	CustomerKey AS 'ID CLiente',
	FirstName AS 'Nome',
	EmailAddress AS 'Email',
	BirthDate AS 'Data de Nascimento'
FROM DimCustomer