/* Tutorial 3 */


SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

/* For this query, we are outputting the cells from year, subject and winner that has the year '1950' from the table 'nobel' */


SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

/* For this query, we are outputting the literature winner from the subject column in the year 1962 from the table 'nobel' */


SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

/* For this query, we are outputting all the cells from the columns yr and subject where the winner was 'Albert Einstein' from the table 'nobel' */


SELECT winner FROM nobel WHERE subject = 'Peace' AND yr >= 2000;

/* For this query, we are outputting all the cells from the column winner where the subject was 'Peace' and the year was 2000 and after from the table 'nobel' */


SELECT * FROM nobel WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989;

/* For this query, we are outputting all the winners where the subject is Literature and between the years 1980 and 1989 from the table 'nobel' */


SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
		  'Barack Obama');

/* For this query we are outputting all the columns from the winners 'Theordore Roosevelt' 'Woodrow Wilson' 'Jimmy Carter' 'Barack Obama' from the table 'nobel' */


SELECT winner FROM nobel WHERE winner LIKE 'John%';

/* For this query we are outputting all the winners with the first name 'John' from the table 'nobel' */


SELECT * FROM nobel WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984;

/* For this query we are outputting the winners where the subject is Physics and from the year 1980 or the subject is Chemistry and from the year 1984 from the table 'nobel' */


SELECT * FROM nobel WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine');

/* For this query we are outputting the winners, years and subject for 1980 and subjects that are not Chemistry or Medicine from the table 'nobel' */


SELECT * FROM nobel WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004;

/* For this query we are outputting the year, subject and winners where the subject is Medicine and before 1910 and where the Literature after the year 2004 from the table 'nobel' */

