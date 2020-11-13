/* Tutorial 2 */

SELECT name, continent, population FROM world;

/* For this query, we are pulling the cells from the columns 'name', 'continent' and 'population' from the table 'world' */

SELECT name
FROM world
WHERE population>=200000000;

/* For this query, we are pulling cells from the column 'name', where the population is greater than or equal to 200,000,000 from the table 'world' */

SELECT name, gdp/population
FROM world
WHERE population >= 200000000;

/* For this query, we are pulling the cells from the column 'name' and GDP, where the population is greater than or equal to 200,000,000 from the table 'world' */

SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

/* For this query, we are outputing all of the countries in South America and their population in millions from the table 'world' */

SELECT name, population
FROM world
WHERE name in ('France', 'Germany', 'Italy');

/* For this query, we are outputting the population of the countries called 'France', 'Germany', 'Italy' from the table 'world' */

SELECT name
FROM world
WHERE name LIKE '%united%';

/* For this query, we are outputting the countries that have 'united' in them from the table 'world' */

SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

/* For this query, we are outputting the countries with an area bigger than 3,000,000 or a population greater than 250,000,000 from the table 'world' */

SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population < 250000000)
  OR (area < 3000000 and population > 250000000);

/* For this query, we are outputting countries that either have an area bigger than 3,000,000 or population greater than 250,000,000 but not both from the table 'world' */

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America';

/* For this query, we are outputting the GDP of countries in South American from the table 'world' */

SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000;

/* For this query, we are outputting countries that have a GDP of at least 1,000,000,000,000 from the table 'world' */

