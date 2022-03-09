--Considere el siguiente esquema de base de datos

--SubContractor (SID, S_Lname, S_Fname, Salary)
--Builder (BID, B_Lname, B_Fname, License) 
--Neighborhood  (NID, N_Name, City)
--HireInfo (BID*, SID*, HireDate) 
--House (HID, H_Name, FinishDate, Price, BID*, NID*) 

--Escriba las instrucciones/comandos para llevar el esquema a un SGBD usando SQL


-- CREATE DATABASE Builder;

DROP TABLE IF EXISTS "SubContractor" CASCADE;
DROP TABLE IF EXISTS "Builder" CASCADE;
DROP TABLE IF EXISTS "Neighborhood" CASCADE;
DROP TABLE IF EXISTS "HireInfo" CASCADE;
DROP TABLE IF EXISTS "House" CASCADE;

CREATE TABLE "SubContractor" (
	sid SERIAL PRIMARY KEY,
	s_lname VARCHAR(30) NOT NULL,
	s_fname VARCHAR(30) NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE "Builder" (
	bid SERIAL PRIMARY KEY,
	b_lname VARCHAR(30) NOT NULL,
	b_fname VARCHAR(30) NOT NULL,
	license INT NOT NULL
);

CREATE TABLE "Neighborhood" (
	nid SERIAL PRIMARY KEY,
	n_name VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL
);

CREATE TABLE "HireInfo" (
	bid INT,
	sid INT,
	hire_date DATE NOT NULL,
	CONSTRAINT "FK_HireInfo.bid"
		FOREIGN KEY (bid)
			REFERENCES "Builder"(bid),
	CONSTRAINT "FK_HireInfo.sid"
    	FOREIGN KEY (sid)
      		REFERENCES "SubContractor"(sid),
  	PRIMARY KEY (bid, sid)
);

CREATE TABLE "House" (
  	hid SERIAL PRIMARY KEY,
  	h_name VARCHAR(30) NOT NULL,
  	finish_date DATE NOT NULL,
  	Price INT NOT NULL,
  	bid INT,
	nid INT,
	CONSTRAINT "FK_House.bid"
		FOREIGN KEY (bid)
			REFERENCES "Builder"(bid),
	CONSTRAINT "FK_House.nid"
    	FOREIGN KEY (nid)
      		REFERENCES "Neighborhood"(nid)
);




