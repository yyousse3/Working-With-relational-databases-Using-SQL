source 59_script2.sql;
-- ---------
-- Query 1

SELECT tripname FROM bustrip WHERE country = 'Italy';

-- ---------
-- Query 2

SELECT DISTINCT lastname FROM passenger;

-- ---------
-- Query 3

SELECT * FROM bustrip ORDER BY tripname;

-- ---------
-- Query 4

SELECT tripname, country, start FROM bustrip WHERE start > '2022-4-30';

-- ---------
-- Query 5

SELECT firstname,lastname,birth FROM passenger, passport WHERE passenger.passengernum = passport.passengernum AND citizenship = 'USA';

-- ---------
-- Query 6

SELECT tripname,capacity FROM bustrip,bus WHERE bus.licenseplatenum = bustrip.licenseplatenum AND start BETWEEN '2022-4-1' AND '2022-9-1';

-- ---------
-- Query 7

SELECT * FROM passenger, passport WHERE passenger.passengernum=passport.passengernum AND (expiry< CURDATE() OR expiry BETWEEN CURDATE() AND ADDDATE(CURDATE(),365));

-- ---------
-- Query 8

SELECT firstname,lastname,tripname FROM passenger,bustrip,bookings WHERE passenger.passengernum = bookings.passengernum AND bookings.tripid =bustrip.tripid AND lastname LIKE 'S%';


-- ---------
-- Query 9

SELECT Count(*),tripname,bookings.tripid FROM bookings,bustrip WHERE bookings.tripid = bustrip.tripid AND bustrip.tripname = 'Castles of Germany';

-- ---------
-- Query 10

SELECT DISTINCT SUM(price),country FROM bookings, bustrip WHERE bustrip.tripid = bookings.tripid GROUP BY country;

-- ---------
-- Query 11

SELECT firstname,lastname,citizenship,tripname,country FROM bustrip,bookings,passenger,passport WHERE passport.passengernum = passenger.passengernum AND passenger.passengernum = bookings.passengernum AND bustrip.tripid = bookings.tripid AND bustrip.country <>passport.citizenship;

-- ---------
-- Query 12

SELECT bustrip.tripid,tripname FROM bustrip WHERE bustrip.tripid NOT IN (SELECT bookings.tripid FROM bookings);

-- ---------
-- Query 13

CREATE VIEW totalprice AS SELECT price,citizenship,bookings.passengernum FROM passport,bookings WHERE passport.passengernum= bookings.passengernum;

CREATE VIEW totalprices2 AS SELECT lastname,firstname,SUM(price) maxprice,citizenship FROM passenger,totalprice WHERE totalprice.passengernum = passenger.passengernum GROUP BY totalprice.passengernum;

SELECT MAX(maxprice),firstname,lastname,citizenship FROM totalprices2;


-- ---------
-- Query 14


SELECT tripid, count(*) FROM bookings GROUP BY tripid HAVING count(*)<4;


-- ---------
-- Query 15

CREATE VIEW totalseats AS SELECT tripid, count(*) total FROM bookings GROUP BY tripid ;
SELECT DISTINCT tripname "Bus Trip Name", total  "Current Number of Passengers",capacity "Capacity of Assigned Bus",bus.licenseplatenum "Current Bus Assigned License Plate" FROM bookings,totalseats,bus,bustrip WHERE bookings.tripid=bustrip.tripid AND bookings.tripid = totalseats.tripid AND totalseats.tripid = bustrip.tripid AND bustrip.licenseplatenum = bus.licenseplatenum AND bus.capacity<total;

