-- Exercise 2
-- Presente el nombre de los constructores (Builder)
-- y subcontratistas (SubContractor) que hayan sido contratados en el 2019

--With Natural Join
SELECT "Builder".b_fname, "SubContractor".s_fname
FROM "HireInfo"
NATURAL JOIN "Builder"
NATURAL JOIN "SubContractor"
WHERE CAST(EXTRACT(YEAR FROM hire_date) AS INT) = 2019; 

--With Join, and display that in a nice way
SELECT CONCAT('Builder: ',"Builder".b_fname, ' Hired - SubContractor: ' , "SubContractor".s_fname, ' - In 2019')
AS "Builders Hired Contractors in 2019"
FROM "HireInfo"
JOIN "Builder" ON "HireInfo".bid="Builder".bid
JOIN "SubContractor" ON "HireInfo".sid= "SubContractor".sid
WHERE CAST(EXTRACT(YEAR FROM hire_date) AS INT) = 2019; 