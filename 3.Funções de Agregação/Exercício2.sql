/*2. Uma nova a��o no setor de Marketing precisar� avaliar a m�dia salarial de todos os clientes 
da empresa, mas apenas de ocupa��o Professional.  Utilize um comando SQL para atingir esse 
resultado.*/

SELECT
			AVG(YearlyIncome) AS 'M�dia Salarial'
FROM 
		DimCustomer
WHERE Occupation = 'Professional'  

-- A m�dia salaria dos clientes de ocupa��o profissional � de 74184,7826