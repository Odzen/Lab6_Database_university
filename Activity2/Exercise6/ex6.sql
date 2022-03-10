-- EXERCISE 6
-- Obtenga el nombre y el apellido en un solo campo llamado Full_name de 
-- los constructores de las casas llamadas "Nova" o "El cañaduzal". (5 registros)

-- First Way
SELECT CONCAT("Builder".b_fname, ' ' ,"Builder".b_lname) AS "Full_name"
FROM "Builder"
JOIN "House" ON "Builder".bid="House".bid
AND ("House".h_name='Nova' OR "House".h_name='El cañaduzal');

--Second Way
SELECT "Builder".b_fname || ' ' || "Builder".b_lname AS "Full_name"
FROM "Builder"
NATURAL JOIN "House" 
WHERE ("House".h_name='Nova' OR "House".h_name='El cañaduzal');