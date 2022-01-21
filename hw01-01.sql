.open CTA_L_daily_ridership.db

-- write a single SQL select query to retrieve the total
-- # of L stations in the Stations table.
-- ANSWER: 147

select count(Station_ID)
from Stations;