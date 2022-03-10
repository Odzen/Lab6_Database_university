-- Exercise 7
-- Presente los nombres de todas las casas que han sido construidas por los constructores
-- cuyo apellido comience con una 'P', el resultado debe incluir el nombre de estos 
-- constructores y sus apellidos

SELECT "House".h_name AS "House_Name",
		"Builder".b_fname AS "Constructor_Name",
		"Builder".b_lname AS "Constructor_Last_Name"
FROM "House"
NATURAL JOIN "Builder"
WHERE "Builder".b_lname LIKE('P%');
