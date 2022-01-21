-- Exercise #06: Number of riders on July 4th for years 2016 through 2021, inclusive
-- In the file “hw01-06.sql”, write a single SQL select query to retrieve the date and total number of riders for each July 4th in years 2016 through 2021, inclusive. The results should be in descending order by the date.
-- [ Hint: use sum() function, and you’ll need to group by Ride_Date to compute the correct results, which are
-- Exercise #06: Number of riders on July 4th for years 2016 through 2021, inclusive
-- In the file “hw01-06.sql”, write a single SQL select query to retrieve the date and total number of riders for each July 4th in years 2016 through 2021, inclusive. The results should be in descending order by the date.
-- [ Hint: use sum() function, and you’ll need to group by Ride_Date to compute the correct results, which are

.open CTA_L_daily_ridership.db

SELECT DISTINCT date(Ride_Date), sum(Num_Riders)
FROM Ridership
WHERE strftime('%m', Ride_Date) = '07'
AND strftime('%d', Ride_Date) = '04'
AND Ride_Date > 2016
GROUP by Ride_Date
ORDER BY Ride_Date DESC;