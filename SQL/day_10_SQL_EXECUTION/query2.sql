--creating the drivers table 
CREATE TABLE drives (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    license_no VARCHAR(50) UNIQUE
);

--creating a ride table with driver_id as a foreign key 
CREATE TABLE rides(
    rider_id INT PRIMARY KEY,
    driver_id INT ,
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    ride_date DATETIME,
    fare DECIMAL(10,2),
    FOREIGN KEY (driver_id) REFERENCES drives(driver_id)
);

--insertion of elements and values to drives table 
INSERT INTO drives(driver_id,driver_name,license_no)
VALUES(101,'john','abc123'),(102,'doe','def456');
--insertion of elements and values to rides table 
INSERT INTO rides(rider_id, driver_id,pickup_location,drop_location,ride_date,fare)
VALUES
(301,101,'chennai','madurai','2026-1-1 12:00:00',500.00),
(304,101,'chennai','vpm','2026-2-5 12:50:00',1000.00),
(307,102,'chennai','cuddalore','2026-3-7 12:10:00',1500.00),
(308,102,'cuddalore','madurai','2026-4-15 2:00:00',50000.00);
PRAGMA table_info(drives);  -- pragma is a command in sqlite used to show the structure of the crreated table (it is used as DESC OR DESCRIBE in mysql so donty confuse it)
PRAGMA table_info(rides);
SELECT * FROM drives;
SELECT * FROM rides;
--to find the no.of rows in a table
SELECT COUNT (*)FROM rides;
--to find the no.of rows in a table with condition 
SELECT COUNT (*)FROM rides WHERE pickup_location='chennai';
--calculate sum of vaslues in a table 
SELECT sum(fare) from rides;
--to find the average sum of entries in a table 
SELECT avg(fare) from rides;
--to find the maximum value from a coloumn of table 
SELECT max(fare) from rides;
--to find the minimun value from a coloumn of table 
SELECT min(fare) from rides;
SELECT pickup_location,sum(fare) AS income FROM rides GROUP BY pickup_location
