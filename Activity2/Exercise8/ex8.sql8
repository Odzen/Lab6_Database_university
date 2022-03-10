-- Exercise 8
-- Mostrar el nombre del barrio(s) y la ciudad que tiene una casa nombrada “Las consultas”.
-- Asegúrese de que esta casa exista en sus registros y que existan registros coincidentes
-- en Barrios (Neighborhood)

-- 1 Way
SELECT "Neighborhood".n_name AS "Neighborhood", "Neighborhood".city AS "City"
FROM "Neighborhood"
JOIN "House" ON "Neighborhood".nid = "House".nid
AND "House".h_name = 'Las consultas';

-- 2 Way
SELECT "Neighborhood".n_name AS "Neighborhood", "Neighborhood".city AS "City"
FROM "Neighborhood"
NATURAL JOIN "House"
WHERE "House".h_name = 'Las consultas';