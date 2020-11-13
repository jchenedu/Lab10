/* Tutorial 5 */


SELECT SUM(population)
FROM world;

/* For this query, we are outputting the sum/total population of the world from the table 'world' */

SELECT DISTINCT continent
FROM world;

/* For this query, we are outputting just one continent from the table 'world' */

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa';

/* For this query, we are outputting the total GDP of the continent 'Africa' from the table 'world' */

SELECT COUNT(name)
FROM world
WHERE area >= 1000000;

/* For this query, we are outputting the total amount of countries that have an area bigger than or equal to 1,000,000 from the table 'world' */

SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

/* For this query, we are outputting the total population in 'Estonia', 'Latvia', 'Lithuania' from the table 'world' */

SELECT continent, COUNT(name)
FROM world
GROUP BY continent;

/* For this query, we are outputting the continents and the total amount of countries in that continent from the table 'world' */

SELECT continent, COUNT(name)
FROM world
WHERE population >= 10000000
GROUP BY continent;

/* For this query, we are outputting the continents and the total number of countries in that continent that has a population greater than or equal to 10,000,000 from the table 'world' */

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000;

/* For this query, we are outputting the continents where their population is greater than or equal to 100,000,000 from the table 'world' */