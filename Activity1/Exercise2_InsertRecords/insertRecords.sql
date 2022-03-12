-- RESTART SERIAL FIELDS FOR TESTING

-- ALTER SEQUENCE <tablename>_<id>_seq RESTART WITH 1

ALTER SEQUENCE "SubContractor_sid_seq" RESTART;

ALTER SEQUENCE "Builder_bid_seq" RESTART;

ALTER SEQUENCE "Neighborhood_nid_seq" RESTART;

ALTER SEQUENCE "House_hid_seq" RESTART;

-- DELETE RECORDS FOR TESTING
TRUNCATE  "SubContractor","Builder","Neighborhood","HireInfo", "House" CASCADE;

-- INSERT RECORDS FOR TESTING
INSERT INTO "SubContractor" (s_lname, s_fname, salary) 
	VALUES  ('Velasquez', 'Juan', 1000000),
			('Tovar', 'Carlos', 500000),
			('Medina', 'Jorge', 150000024),
			('Ascanio', 'Allison', 200000056),
			('Cardona', 'Victoria', 3980000),
			('Pinzon', 'Jhon', 5480123),
			('Petro', 'Gustavo', 20342232),
			('Uribe', 'Alvaro', 1893462),
			('Garzon', 'Gabriel', 1202734),
			('Lisboa', 'Miguel', 2306734),
			('Santos', 'Marcos', 2306134),
			('Peralta', 'Lina', 1306434),
			('Betancurt', 'Ingrid', 1336734),
			('Castro', 'Sofia', 1306736);
	
INSERT INTO "Builder" (b_lname, b_fname,license) 
	VALUES  ('Garcia', 'Juan', 'A123'),
			('Moreno', 'Camila', 'B234'),
			('Pinzon', 'Carlos', 'C234'),
			('Bilbao', 'Daniel', 'F324'),
			('Marquez', 'Jefferson', 'R324'),
			('Messi', 'Lionel', 'A645'),
			('Zuckerberg', 'Marck', 'B123'),
			('Valdez', 'Ramiro', 'R123'),
			('Perez', 'Pepito', 'A123'),
			('Jimenez', 'David', 'A123');

INSERT INTO "Neighborhood" (n_name , city ) 
	VALUES ( 'Bella', 'Usaquen'),
			('Bellavista', 'Barranquilla'),
			('Bosa', 'Cali'),
			('Caney', 'Cali'),
			('Los Parques', 'Cali'),
			('El Poblado', 'Medellin'),
			('Chico', 'Bogota'),
			('Rosales', 'Bogota'),
			('San Javier', 'Medellin');

INSERT INTO "HireInfo" (bid , sid , hire_date ) 
	VALUES  (1,2,'2022-01-26'),
			(3,1,'2022-02-12'),
			(1,3,'2019-03-03'),
			(2,5,'2018-04-02'),
			(6,7,'2008-05-08'),
			(8,8,'2021-06-30'),
			(9,4,'2019-07-07'),
			(9,11,'2019-07-07'),
			(4,13,'2019-07-07'),
			(4,12,'2019-07-07'),
			(5,9,'2019-07-07');

INSERT INTO "House" (h_name , finish_date , price, bid, nid) 
	VALUES  ('Las consultas', '2022-01-12', 450234123, 2, 1),
			('La cumbre', '1998-02-23', 120345321, 3, 3),
			('Mi casa', '2003-03-03', 345234765, 3, 4),
			('Just flow', '2008-09-07', 356736498, 4, 4),
			('La sucursal', '2012-12-14', 70000000, 9, 7),
			('La casa de Melba', '2017-02-15', 345234765, 9, 2),
			('El paraiso', '2008-01-16', 12345237, 8, 9),
			('Nova', '2000-01-12', 124345632, 7, 1),
			('El cañaduzal', '1945-01-12', 98876443, 9, 4),
			('El cañaduzal', '1945-01-12', 3423456, 2, 2),
			('Nova', '1934-01-12', 34234545, 5, 3),
			('Nova', '2002-01-12', 9876543, 6, 1);

-- SELECT FOR CHECK THE CONTENT OF EACH TABLE TESTING
SELECT * FROM "SubContractor";
SELECT * FROM "Builder";
SELECT * FROM "Neighborhood";
SELECT * FROM "HireInfo";
SELECT * FROM "House";
