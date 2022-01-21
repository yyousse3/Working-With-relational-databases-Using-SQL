source 59_script3.sql;

-- Creating view

CREATE VIEW cviews AS SELECT firstname,lastname,tripname,country,price FROM passenger,bustrip,bookings WHERE passenger.passengernum = bookings.passengernum AND bookings.tripid = bustrip.tripid;
SELECT * FROM cviews;
SELECT * FROM cviews WHERE tripname LIKE '%Castles%' ORDER BY price;


--Deleting
SELECT * FROM bus;
DELETE FROM bus WHERE licenseplatenum LIKE '%UWO%';
SELECT * FROM bus;
SELECT * FROM passport;
SELECT * FROM passenger;
DELETE FROM passport WHERE citizenship = 'Canada';
SELECT * FROM passport;
SELECT * FROM passenger;

/*The table passport was affected because we were asked to delete all passports that were from Canada. 
Passenger isn't affected as it only asked for the passport to be deleted when the passenger is deleted and not the other way. Bus was affected because we had to delete any buses that included "UWO" in it.*/

SELECT * FROM bustrip;
DELETE FROM bustrip WHERE tripname = "California Wines";
SELECT * FROM bustrip;

DELETE FROM bustrip WHERE tripname = "Arrivaderci Roma";

/* The arrivaderci Roma trip name could not be deleted because it is being referenced in another table, so the program won't allow it to be deleted*/

SELECT * FROM passenger;
DELETE FROM passenger WHERE firstname='Pam';
SELECT * FROM passenger;
SELECT firstname,lastname FROM cviews;
DELETE FROM passenger WHERE lastname = 'Simpson';
SELECT firstname,lastname FROM cviews;
