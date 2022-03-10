-- Exercise 5
-- Obtenga todos los constructores y las casas en construcción, el resultado presenta el apellido del constructor
-- y el nombre de la casa ordenados por apellido. Algunos constructores no tienen casas en construcción deben 
-- estar incluidos. (Asegúrese de que se obtengan 14 registros).

SELECT "Builder".b_lname AS "Constructor_Apellido", "House".h_name AS "Nombre_casa"
FROM "Builder"
NATURAL LEFT JOIN "House"
ORDER BY "Builder".b_lname
LIMIT 14;
