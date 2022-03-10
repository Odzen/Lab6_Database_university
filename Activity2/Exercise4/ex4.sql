-- Exercise 4
-- Presente todos los subcontratistas y los constructores que los contrató. 
-- Muestre los apellidos de los subcontratistas y los apellidos de los 
-- constructores junto con el salario de cada subcontratista. 
-- (Asegúrese de que se obtengan 11 registros).

SELECT "SubContractor".s_lname AS "Apellido_Subcontratista", 
		"Builder".b_lname AS "Apellido_Constructor", 
		"SubContractor".salary AS "Salario_subcontratista"
FROM "HireInfo"
NATURAL JOIN "SubContractor"
NATURAL JOIN "Builder"
LIMIT 11;