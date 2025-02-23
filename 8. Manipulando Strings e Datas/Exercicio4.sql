SELECT TOP(10) * FROM DimCustomer

SELECT
	FirstName AS 'Nome',
	EmailAddress AS 'Email',
	AddressLine1 As 'Endere�o',
	DateFirstPurchase AS 'Data da primeira compra'
FROM 
	DimCustomer
WHERE 
	YEAR(DateFirstPurchase) = 2001