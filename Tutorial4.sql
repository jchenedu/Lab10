/* Tutorial 4 */


SELECT name
FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

/* For this query, we are outputting all the countries where the population is bigger than Russia from the table 'world' */


SELECT name
FROM world
WHERE gdp/population >
    (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND continent = 'Europe';

/* For this query, we are outputting all the countries in Europe that has a higher GDP than the United Kingdom from the table 'world' */


SELECT name, continent
FROM world
WHERE continent IN (SELECT continent FROM world WHERE name IN ('Argentina', 'Australia'))
ORDER BY name;

/*For this query, we are outputting the countries and continent in the continents where Argentina and Australia are in from the table 'world' */


SELECT name, population
FROM world
WHERE population >
    (SELECT population FROM world WHERE name = 'Canada')
AND population <
    (SELECT population FROM world WHERE name = 'Poland');

/* For this query, we are outputting the country and population, where it's population is more than Canada, but less than Poland from the table 'world' */

SELECT name,
   CONCAT(ROUND(100*population/(SELECT population FROM world WHERE name='Germany')),'%')
FROM world
WHERE continent='Europe'

/* For this query, we are outputting all the countries and population as a percentage of Germany's population in Europe from the table 'world' */


SELECT name
FROM world
WHERE gdp >= ALL(SELECT gdp FROM world WHERE gdp >=0 AND continent = 'Europe') AND continent != 'Europe';

/* For this query, we are outputting all the countries that have a higher GDP than all the countries in Europe and not in Europe from the table 'world' */


SELECT continent, name, area
FROM world x
WHERE area >= ALL
    (SELECT area FROM world y
    WHERE y.continent=x.continent
    AND area>0);

/* For this query, we are outputting the continent, country and area where it is the largest country in that continent from the table 'world' */


SELECT continent, name
FROM world x
WHERE name <= ALL(SELECT name FROM world y WHERE y.continent = x.continent);

/* For this query, we are outputting alphabetically the continent and the country in the continent from the table 'world' */


SELECT name, continent, population
FROM world x
WHERE 25000000  > ALL(SELECT population FROM world y WHERE x.continent = y.continent AND y.population > 0);

/* For this query, we are outputting the country, continent and population where the country has a population greater than 25,000,000 from the table 'world' */


SELECT name, continent
FROM world x
WHERE population > ALL(SELECT population*3 FROM world y WHERE x.continent = y.continent AND population > 0 AND y.name != x.name);

/* For this query, we are outputting the country and continent where the country has three times the amount of population than other countries in their continent from the table 'world' */