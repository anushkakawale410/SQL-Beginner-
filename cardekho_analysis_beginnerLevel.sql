create schema cars;

USE cars;
/* import tables */


/*Import data*/
select * from cars.cardekho;

/*total cars : to get a count of total records */
SELECT COUNT(*) AS TOTAL FROM cars.cardekho;

/* the manager asked the employee How many cars will be available in 2023? */
SELECT COUNT(*) FROM cars.cardekho WHERE year = 2023;

-- the manager asked the employee : How many cars available in 2020, 2021,2022 --
SELECT year,COUNT(*) AS cars_available FROM cars.cardekho WHERE year IN (2020,2021,2022) group by year;

-- client asked me to  print the total of all cars by year. I don't see all the details --
SELECT YEAR, COUNT(*) AS TOTAL FROM cardekho GROUP BY year;

-- client asked to car dealer agent How many diesel cars will there be in 2020? --
SELECT COUNT(*) as CARS_AVAILABLE FROM cardekho WHERE (fuel='Diesel' AND year = 2020);

-- client required a car dealer agent How many petrol cars will be there in 2020? --
SELECT COUNT(*) as CARS_AVAILABLE FROM cardekho WHERE (fuel='Petrol' AND year = 2020);

-- The manager told the employee to give a print All the fuel cars(petrol, diesel and CNG) come by all year --
SELECT YEAR, COUNT(*) FROM cardekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT YEAR, COUNT(*) FROM cardekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT YEAR, COUNT(*) FROM cardekho WHERE fuel = 'CNG' GROUP BY year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
select year, count(*) from cardekho group by year having count(*) > 100; 

-- The manager said to the employee All cars count details between 2015 and 2023; we need a complete list --
select count(*) from cardekho where year group by 2015 and 2023;

-- The manager said to the employee All cars details between 2015 and 2023 we need a complete list --
select * from cardekho where year between 2015 and 2023;
