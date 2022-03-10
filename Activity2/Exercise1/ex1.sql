-- EXERCISE 1
-- Presente nombre completo de todos los subcontratistas (SubContractor) 
-- que tengan un salario mayor a 3000000. Asegúrese de que se obtengan 5 registros.

--With Concatenation, using pipe
SELECT s_fname || ' ' ||s_lname AS "Nombre Completo"
FROM "SubContractor"
WHERE salary>3000000
LIMIT 5;

--With Concatenation, using CONCAT
SELECT CONCAT(s_fname,' ',s_lname) AS "Nombre Completo"
FROM "SubContractor"
WHERE salary>3000000
LIMIT 5;

--Without Concatenation
SELECT s_fname,s_lname
FROM "SubContractor"
WHERE salary>3000000
LIMIT 5;