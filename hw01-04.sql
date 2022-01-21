-- Exercise #04: Total # of riders that passed through station 40190 in the year 2005?
-- In the file “hw01-04.sql”, write a single SQL select query to retrieve the total # of riders that passed through the turnstiles of station 40190 during the year 2005.
-- [ Hint: use sum() function, the date() function, and where clause with date range. Answer: 1289362]
.open CTA_L_daily_ridership.db
SELECT sum(Num_Riders)
FROM Ridership
WHERE Station_ID = '40190' 
AND Ride_Date >= '2005-01-01' AND
 Ride_Date < '2006-01-01'