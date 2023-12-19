create table STATION 
(    ID number, 
    CITY char(20), 
    STATE char(2), 
    lAT_N Number, 
    LONG_W   Number 
);

insert into STATION VALUES (13,'PHOENIX','AZ',33,112);

insert into STATION VALUES (44,'DENVER','CO',40,105);

insert into STATION VALUES (66,'CARIBOU','ME',47,68);

select * from STATION;

select * from STATION 
where LAT_N > 39.7 ;

create table STATS 
(    ID number, 
    MONTH Number, 
    TEMP_F Number, 
    RAIN_I Number 
 );

insert into stats  values (13, 1,57.4, 0.31);

select * from stats;

insert into stats  values (13, 7, 91.7, 5.15);

insert into stats  values (44, 1, 27.3 ,0.18);

insert into stats  values (44, 7, 74.8, 2.11);

insert into stats  values (66,1,6.7,2.1);

insert into stats  values (66,7,65.8,4.52);

select * from stats;

select * from station;

select * from stats;

select * from station;

select * from stats;

select * from station;

select * from stats;

SELECT MAX(RAIN_I) FROM STATS;

select * from station;

select * from stats;

SELECT *  FROM STATS 
where RAIN_I = (select MAX(RAIN_I) from stats);

SELECT *  FROM STATS 
where RAIN_I = (select MAX(RAIN_I) from stats);

select * from stats;

select * from station;

select * from stats;

select * from station;

select * from stats;

select * from station;

select * from stats;

select * from station;

SELECT stats.TEMP_F, stats.ID,station.city 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT stats.TEMP_F,station.city 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT station.city,stats.TEMP_F 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT distinct(station.city),stats.TEMP_F 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

select * from stats;

select * from station;

SELECT distinct(station.city),stats.TEMP_F, stats.MONTH 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

select * from stats;

SELECT  distinct(station.city), stats.ID, stats.TEMP_F, stats.MONTH, stats.RAIN_I 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT distinct(station.city), stats.ID, stats.TEMP_F, stats.MONTH, stats.RAIN_I 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
order by MONTH;

SELECT distinct(station.city), stats.ID, stats.TEMP_F, stats.MONTH, stats.RAIN_I 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
order by MONTH;

SELECT distinct(station.city), stats.ID, stats.TEMP_F, stats.MONTH, stats.RAIN_I 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

with my_cte AS ( SELECT distinct(station.city), stats.ID, stats.TEMP_F, stats.MONTH, stats.RAIN_I 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID) 
SELECT * FROM MY_CTE 
ORDER BY RAIN_I DESC


select * from stats;

select * from station;

SELECT station.city,stats.TEMP_F, station.city,station.LAT_N 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
where MONTH = 7 
ORDER BY TEMP_F;

SELECT station.city,stats.TEMP_F,stats.MONTH ,station.LAT_N 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
where MONTH = 7 
ORDER BY TEMP_F;

select * from stats;

select * from station;

SELECT distinct(station.city), AVG(stats.RAIN_I), MAX(stats.TEMP_F), MIN(stats.TEMP_F) 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
GROUP BY CITY;

SELECT station.city, AVG(stats.RAIN_I), MAX(stats.TEMP_F), MIN(stats.TEMP_F) 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
GROUP BY CITY;

SELECT station.city, AVG(stats.RAIN_I) AS AVERAGE_RAINFALL, MAX(stats.TEMP_F) AS MAX_TEMPERATURE, MIN(stats.TEMP_F) AS MIN_TEMPERATURE 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID 
GROUP BY CITY;

SELECT  distinct(station.city), stats.RAIN_I,stats.TEMP_F 
FROM  stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32),ID 
FROM stats ;

SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius,ID 
FROM stats ;

SELECT ID, ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius 
FROM stats ;

WITH MY_CEP AS (SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius 
FROM stats) 
SELECT temperature_in_Celcius FROM MY_CEP


select * from stats;

WITH MY_CEP AS (SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius 
FROM stats) 
SELECT MY_CEP.temperature_in_Celcius FROM MY_CEP


select * from stats;

select * from stats;

SELECT ROUND (2.54 * RAIN_I) AS rainfall_in_Centimeter 
 FROM stats;

WITH MY_CPR AS (SELECT ROUND (2.54 * RAIN_I) AS rainfall_in_Centimeter 
 FROM stats) 
SELECT MY_CPR.rainfall_in_Centimeter FROM MY_CPR


SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius 
FROM stats;

SELECT ROUND(2.54 * RAIN_I) AS rainfall_in_Centimeter FROM stats;

WITH MY_CPR AS (SELECT ROUND(2.54 * RAIN_I) AS rainfall_in_Centimeter FROM stats) 
SELECT   
MY_CPR.rainfall_in_Centimeter  
FROM MY_CPR


select * from stats;

UPDATE STATS 
SET TEMP_F = 74.9 
WHERE ID = 44 AND MONTH = 7;

select * from stats;

UPDATE STATS 
SET TEMP_F = 74.9 
WHERE ID = 44 AND MONTH = 7;

SELECT * FROM STATS;

SELECT distinct(station.city),stats.TEMP_F, stats.MONTH 
FROM stats 
INNER JOIN station 
ON stats.ID = station.ID;

SELECT * FROM STATS;

SELECT ID,MONTH	,TEMP_F,(RAIN_I - 0.01) AS faulty_RAIN_I ,RAIN_I 
FROM STATS;

SELECT ID,MONTH	,TEMP_F,(RAIN_I - 0.01) AS faulty_RAIN_I  
FROM STATS;

SELECT ROUND(( ( 9 * TEMP_F ) / 5 ) + 32) AS temperature_in_Celcius,ID 
FROM stats;

SELECT ROUND(2.54 * RAIN_I) AS rainfall_in_Centimeter ,ID FROM stats ;

