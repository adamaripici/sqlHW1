
-- Exercise #02: L stations in alphabetical order
-- In the file “hw01-02.sql”, write a single SQL select query to retrieve the name of every L station, in alphabetical order.
.open CTA_L_daily_ridership.db

SELECT Station_Name
FROM Stations
ORDER BY Station_Name;

