source 59_script1.sql;

--Making sure it is the right database
USE 59_assign2db;

-- Checking tables to see if they're empty
SELECT * FROM bus;
SELECT * FROM bustrip;
SELECT * FROM passenger;
SELECT * FROM passport;
SELECT * FROM bookings;

--Inserting into bus using the file loaddatafaill2021.txt
SELECT * FROM bus;
LOAD DATA LOCAL INFILE 'loaddatafall2021.txt' INTO TABLE bus FIELDS TERMINATED BY ',';
SELECT * FROM bus;

--Inserting into passenger
SELECT * FROM passenger;
INSERT INTO passenger VALUES(11,'Homer','Simpson');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(22,'Marge','Simpson');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(33,'Bart','Simpson');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(34,'Lisa','Simpson');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(35,'Maggie','Simpson');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(44,'Ned','Flanders');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(45,'Todd','Flanders');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(66,'Heidi','Klum');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(77,'Michael','Scott');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(78,'Dwight','Schrute');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(79,'Pam','Beesly');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(80,'Creed','Bratton');
SELECT * FROM passenger;
INSERT INTO passenger VALUES(90,'Luffy','Monkey');
SELECT * FROM passenger;

--Inserting into passports
SELECT * FROM passport;
INSERT INTO passport VALUES('US10',11,'2025-1-1','USA','1970-2-19');
SELECT * FROM passport;
INSERT INTO passport VALUES('US12',22,'2025-1-1','USA','1972-8-12');
SELECT * FROM passport;
INSERT INTO passport VALUES('US13',33,'2025-1-1','USA','2001-5-12');
SELECT * FROM passport;
INSERT INTO passport VALUES('US14',34,'2025-1-1','USA','2004-3-19');
SELECT * FROM passport;
INSERT INTO passport VALUES('US15',35,'2025-1-1','USA','2012-9-17');
SELECT * FROM passport;
INSERT INTO passport VALUES('US22',44,'2030-4-4','USA','1950-6-11');
SELECT * FROM passport;
INSERT INTO passport VALUES('US23',45,'2018-3-3','USA','1940-6-24');
SELECT * FROM passport;
INSERT INTO passport VALUES('GE11',66,'2027-1-1','Germany','1970-7-12');
SELECT * FROM passport;
INSERT INTO passport VALUES('US88',77,'2030-2-13','Canada','1979-4-25');
SELECT * FROM passport;
INSERT INTO passport VALUES('US89',78,'2022-2-2','Canada','1976-4-8');
SELECT * FROM passport;
INSERT INTO passport VALUES('US90',79,'2020-2-8','Italy','1980-4-4');
SELECT * FROM passport;
INSERT INTO passport VALUES('US91',80,'2030-1-1','Germany','1959-2-2');
SELECT * FROM passport;
INSERT INTO passport VALUES('US92',90,'2027-1-1','Brazil','1997-7-19');
SELECT * FROM passport;

--Inserting into bustrips
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(1,'2022-1-1','2022-1-17','Germany','Castles of Germany','VAN1111');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(2,'2022-3-3','2022-3-14','Italy','Tuscany Sunsets','TAXI222');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(3,'2022-5-5','2022-5-10','USA','California Wines','VAN2222');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(4,'2022-4-4','2022-4-14','Bermuda','Beaches Galore','TAXI222');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(5,'2022-6-1','2022-6-22','Canada','Cottage Country','CAND123');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(6,'2022-7-5','2022-7-15','Italy','Arrivaderci Roma','TAXI111');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(7,'2022-9-9','2022-9-29','UK','Shetland and Orkney','TAXI111');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(8,'2022-6-10','2022-6-20','USA','Disney World and Sea World','VAN2222');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(9,'2022-1-10','2022-1-20','Japan','Tokyo Tour','TAXI222');
SELECT * FROM bustrip;
INSERT INTO bustrip VALUES(10,'2022-2-10','2022-2-20','Japan','Thriller Bark','VAN2222');
SELECT * FROM bustrip;

--Inserting into bookings
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,11,500.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,22,500.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,33,200.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,34,200.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,35,200.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,66,600.99);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(8,44,400.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(8,45,200.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(4,78,600.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(4,80,600.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(1,78,550.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(8,33,300.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(8,34,300.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(6,11,600.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(6,22,600.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(6,33,100.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(6,34,100.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(6,35,100.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(7,11,300.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(7,77,300.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(7,44,300.00);
SELECT * FROM bookings;
INSERT INTO bookings VALUES(10,90,381.00);
SELECT * FROM bookings;


--Updating the data from passport and bustrips
SELECT * FROM passport;
UPDATE passport, passenger SET citizenship = 'Germany' WHERE passenger.firstname = 'Dwight' AND passenger.lastname = 'Schrute' AND passenger.passengernum = passport.passengernum;
SELECT * FROM passport;
SELECT * FROM bustrip;
UPDATE bustrip SET licenseplatenum = 'VAN1111' WHERE country = 'USA';
SELECT * FROM bustrip;
