-- Exercise 3
-- Presente de todos los constructores (Builder) que tiene casas en construcción,
-- el resultado en una sola columna llamada Full_Name, especificar el nombre de estos
-- constructores que deben estar ordenados por apellido. Asegúrese de que se obtengan 8 registros.

-- Se pueden obtener Builders repetidos, ya que un mismo Builder pudo haber construido más de una casa
SELECT CONCAT("Builder".b_fname, ' ', "Builder".b_lname) AS "Full_Name"
FROM "Builder"
NATURAL JOIN "House"
ORDER BY "Builder".b_lname
LIMIT 8;