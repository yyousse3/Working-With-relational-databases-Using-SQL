-- building database
SHOW databases;
DROP DATABASE IF EXISTS 59_assign2db;
CREATE DATABASE 59_assign2db;
USE 59_assign2db;
SHOW TABLES;

-- creating tables
CREATE TABLE bus (licenseplatenum VARCHAR(7) NOT NULL, capacity INT NOT NULL, PRIMARY KEY (licenseplatenum));
CREATE TABLE bustrip (tripid INT NOT NULL, start DATE NOT NULL, end DATE NOT NULL, country VARCHAR(30) NOT NULL, tripname VARCHAR(50) NOT NULL, licenseplatenum VARCHAR(7) NOT NULL, FOREIGN KEY(licenseplatenum) REFERENCES bus(licenseplatenum), PRIMARY KEY(tripid));
CREATE TABLE passenger (passengernum INT NOT NULL, firstname VARCHAR(20) NOT NULL, lastname VARCHAR(20) NOT NULL, PRIMARY KEY (passengernum));
CREATE TABLE passport (passportnum VARCHAR(4) NOT NULL, passengernum INT NOT NULL, expiry DATE NOT NULL, citizenship VARCHAR(30) NOT NULL, birth DATE NOT NULL, FOREIGN KEY (passengernum) REFERENCES passenger(passengernum) ON DELETE CASCADE, PRIMARY KEY (passportnum));
CREATE TABLE bookings (tripid INT NOT NULL, passengernum INT NOT NULL, price DECIMAL(6,2) NOT NULL, FOREIGN KEY (tripid) REFERENCES bustrip(tripid), FOREIGN KEY(passengernum) REFERENCES passenger(passengernum) ON DELETE CASCADE, PRIMARY KEY(tripid,passengernum));
SHOW TABLES; 
