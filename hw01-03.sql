-- Exercise #03: Which L station has the station ID 40190?
-- In the file “hw01-03.sql”, write a single SQL select query to retrieve the name of the L station with station ID 40190.
-- [ Answer: Sox-35th-Dan Ryan ]
.open CTA_L_daily_ridership.db
SELECT Station_Name
FROM Stations
WHERE Station_ID = '40190';