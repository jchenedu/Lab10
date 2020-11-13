/* Tutorial 1 */

SELECT name FROM world
  WHERE name LIKE 'Y%';

/* For this query, we are pulling cells that starts with the letter 'Y' from the column called 'name' in the table called 'world' */

SELECT name FROM world
  WHERE name LIKE '%Y';

/* For this query, we are pulling cells that ends with the letter 'Y' from the column called 'name' in the table called 'world' */

SELECT name FROM world
  WHERE name LIKE '%x%';

/* For this query, we are pulling cells that contains the letter 'x' from the column called 'name' in the table called 'world' */

SELECT name FROM world
  WHERE name LIKE '%land';

/* For this query, we are pulling cells that ends with 'land' from the column called 'name' in the table called 'world' */

SELECT name FROM world
  WHERE name LIKE 'C%ia';

/* For this query, we are pulling cells that starts with the letter 'C' and ends with 'ia' from the column called 'name' in the table called 'world */

SELECT name FROM world
  WHERE name LIKE '%oo%';

/* For this query, we are pulling cells that contains 'oo' from the column called 'name' in the table called 'world */

SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

/* For this query, we are pulling cells that contains the letter 'a' three times or more from the column called 'name' in the table called 'world */

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

/* For this query, we are pulling cells where the second character is the letter 't' from the column called 'name' in the table called 'world */

SELECT name FROM world
 WHERE name LIKE '%o__o%';

/* For this query, we are pulling cells where they have two 'o' letters seperated by two other characters from the column called 'name' in the table called 'world' */

SELECT name FROM world
 WHERE name LIKE '____';

/* For this query, we are pulling cells that only contains four characters from the column called 'name' in the table called 'world' */

SELECT name
  FROM world
 WHERE name = capital;

/* For this query, we are pulling cells where the name of the country and capital are the same from the column called 'name' in the table called 'world' */

SELECT name
  FROM world
 WHERE capital = concat(name, ' City');

/* For this query, we are pulling cells where the capital of the country is the name of country and city at the end of it from the column called 'name in the table called 'world' */

SELECT capital,name FROM world WHERE capital LIKE concat('%', name, '%');

/* For this query, we are pulling cells that has the the country's name in the capital from the columns called 'capital' and 'name' in the table called 'world' */

SELECT name, capital FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;

/* For this query, we are pulling cells where the capitals name includes its country's name but is longer from the columns 'capital' and 'name' in the table called 'world' */

SELECT name, REPLACE(capital, name, '') FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;

/* For this query, we are pulling the columns 'name' and an extension column that shows the extension that makes up the capital of the country in the table called 'world' */