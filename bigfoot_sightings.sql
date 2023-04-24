/*Bigfoot Sightings 
Data Source: https://www.kaggle.com/datasets/sridharstreaks/datadna-dataset-challenge-feb-bigfoot-sightings
The Bigfoot Field Researchers Organization (BFRO) – www.bfro.net
Data file is converted to csv and imported into postgresql for data cleaning and processing
All single quote and double quotes were removed from data file in order to be imported here as csv
*/
--Check for null values and anomolies in columns
SELECT county
FROM bigfootsightings
GROUP BY county
ORDER BY county;

SELECT state
FROM bigfootsightings
GROUP BY state
ORDER BY state;

SELECT season, count(*)
FROM bigfootsightings
GROUP BY season; --92 unknown season

SELECT min(latitude),max(latitude)
FROM bigfootsightings;

SELECT min(longitude),max(longitude)
FROM bigfootsightings;

SELECT date, count(*)
FROM bigfootsightings
GROUP BY date
order by date; --976 nulls

SELECT MIN(date), MAX(date)
FROM bigfootsightings;

SELECT number, count(*)
FROM bigfootsightings
GROUP BY number
having count(*)>=2; --no duplicate returned, can use number as observation id

SELECT classification, count(*)
FROM bigfootsightings
GROUP BY classification;
/*Class A: I saw bigfoot
Class B: I saw evidence of bigfoot
Class C: Somebody told me they saw bigfoot*/

SELECT min(temperature_high),max(temperature_high),
min(temperature_mid),max(temperature_mid),
min(temperature_low),max(temperature_low)
FROM bigfootsightings; --in fahrenheit

SELECT min(dew_point),max(dew_point)
FROM bigfootsightings;

SELECT min(humidity),max(humidity)
FROM bigfootsightings;

SELECT min(cloud_cover),max(cloud_cover)
FROM bigfootsightings;

SELECT min(moon_phase),max(moon_phase)
FROM bigfootsightings;

SELECT min(precip_intensity),max(precip_intensity)
FROM bigfootsightings;--in inches

SELECT min(precip_probability),max(precip_probability)
FROM bigfootsightings;

SELECT precip_type, count(*)
FROM bigfootsightings
GROUP BY precip_type; --3298 nulls Could be no input or no precip

SELECT min(pressure),max(pressure)
FROM bigfootsightings;

SELECT summary, count(*)
FROM bigfootsightings
GROUP BY summary
ORDER BY count(*) DESC; --322 groups 1655 nulls

SELECT min(uv_index),max(uv_index)
FROM bigfootsightings;

SELECT min(visibility),max(visibility)
FROM bigfootsightings;

SELECT min(wind_bearing),max(wind_bearing)
FROM bigfootsightings;

SELECT min(wind_speed),max(wind_speed)
FROM bigfootsightings;

SELECT title, count(*)
FROM bigfootsightings
GROUP BY title
ORDER BY count(*) DESC; --unique values and 976 nulls

SELECT count(*)
FROM bigfootsightings
WHERE state IS NULL; -- 0 returned. All rows have location of sightings

SELECT count(*)
FROM bigfootsightings
WHERE county IS NULL;--0 returned

SELECT count(*)
FROM bigfootsightings
WHERE number IS NULL;--0 returned

SELECT count(*)
FROM bigfootsightings
WHERE date IS NULL; --976 returned.
--not eliminating data since they contain valuable geographical data

SELECT count(*)
FROM bigfootsightings
WHERE precip_type IS NULL;

SELECT MIN(date), MAX(date)
FROM bigfootsightings;

SELECT MIN(temperature_low), MAX(temperature_high)
FROM bigfootsightings;
--Create temperature count in bins for visualization in Tableau
WITH bins AS (SELECT generate_series(MIN(temperature_low)-2.8,MAX(temperature_high),2.8) AS lower,
generate_series(MIN(temperature_low),MAX(temperature_high+2.8),2.8) AS upper from bigfootsightings)
SELECT lower, upper, count(bfs.temperature_high)as temp_high
FROM bins
LEFT JOIN bigfootsightings as bfs
ON (bfs.temperature_high>=bins.lower AND bfs.temperature_high<bins.upper)
GROUP BY lower, upper
ORDER BY lower

WITH bins AS (SELECT generate_series(MIN(temperature_low)-2.8,MAX(temperature_high),2.8) AS lower,
generate_series(MIN(temperature_low),MAX(temperature_high+2.8),2.8) AS upper from bigfootsightings)
SELECT lower, upper, count(bfs.temperature_mid)as temp_mid
FROM bins
LEFT JOIN bigfootsightings as bfs
ON (bfs.temperature_mid>=bins.lower AND bfs.temperature_mid<bins.upper)
GROUP BY lower, upper
ORDER BY lower

WITH bins AS (SELECT generate_series(MIN(temperature_low)-2.8,MAX(temperature_high),2.8) AS lower,
generate_series(MIN(temperature_low),MAX(temperature_high+2.8),2.8) AS upper from bigfootsightings)
SELECT lower, upper, count(bfs.temperature_low)as temp_low
FROM bins
LEFT JOIN bigfootsightings as bfs
ON (bfs.temperature_low>=bins.lower AND bfs.temperature_low<bins.upper)
GROUP BY lower, upper
ORDER BY lower
--exported results in three separate tables and union columns in excel since tables are small in size

--total number of bigfoot sightings
SELECT COUNT(number)
FROM bigfootsightings;

SELECT classification, COUNT(classification)
FROM bigfootsightings
GROUP BY classification;