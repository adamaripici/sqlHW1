-- Exercise #05: UIC-Halsted ridership 2019 vs. 2020
--  In the file “hw01-05.sql”, write two SQL select queries, one to retrieve the total # of riders through UIC- Halsted in 2019 and another to retrieve the total # of riders through UIC-Halsted in 2020. Instead of hard- coding the station ID for UIC-Halsted into the queries, each select query should use the “Select in Select” approach discussed in the reading.
-- [ Answer: 1729039 followed by 524093 ]

.open CTA_L_daily_ridership.db
SELECT SUM(Num_Riders)
FROM Ridership
WHERE Ride_Date >= '2019-01-01' AND
 Ride_Date < '2020-01-01' AND Station_ID IN
(SELECT Station_ID 
FROM Stations
WHERE Station_Name = 'UIC-Halsted');

SELECT SUM(Num_Riders)
FROM Ridership
WHERE Ride_Date >= '2020-01-01' AND
 Ride_Date < '2021-01-01' AND Station_ID IN
(SELECT Station_ID 
FROM Stations
WHERE Station_Name = 'UIC-Halsted');