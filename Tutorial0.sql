/* Tutorial 0 */

SELECT population FROM world
  WHERE name = 'Germany';

/* For this query, we are pulling the population from the 'name' column cell called 'Germany' in the table called 'world'. */

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

/* In this query, we all pulling the population from the 'name' column cells called 'Sweden', 'Norway' and 'Denmark' in the table called 'world' */

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

/* In this query, we all pulling the 'name' and 'area' columns from the table called 'world' where the 'area' column cells value are between 200,000 and 250,000 */