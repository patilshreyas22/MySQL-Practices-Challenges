/* BETWEEN */

USE BOOK_SHOP;

SELECT TITLE , RELEASED_YEAR FROM BOOKS WHERE RELEASED_YEAR >=2004 AND RELEASED_YEAR <=2015 ORDER BY RELEASED_YEAR;

SELECT TITLE , RELEASED_YEAR FROM BOOKS WHERE RELEASED_YEAR BETWEEN 2004 AND 2015 ORDER BY RELEASED_YEAR;

SELECT TITLE , RELEASED_YEAR , PAGES FROM BOOKS WHERE PAGES BETWEEN 200 AND 300 ORDER BY PAGES;

/* not between */

SELECT title , released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY RELEASED_YEAR;

SELECT title , stock_quantity FROM books WHERE stock_quantity NOT BETWEEN 25 AND 50 ORDER BY stock_quantity;
	
/* COMPARING DATES */ 

select * from people ORDER BY BIRTHDT;

SELECT * FROM people WHERE birthdate < '2005-01-01';

insert into people (name , birthdate , birthtime , birthdt) values ('shraddha' , '2001-04-22' , '12:21:08' , '2001-04-22 12:21:08'),
																   ('arjun' , '1855-01-01' , '12:00:00' , '1855-01-01 12:00:00');

delete from people where birthdate = '2003-04-22';

/* now im gonna compare dates , this has to be done due to loss of mysql data earlier */

select * from people WHERE birthdate < '2000-01-01' order by birthdate;

select * from people where year(birthdate) < '2000' order by birthdate;

select * from people where hour(birthdt) > 12 order by hour(birthdt);

/* CAST : converts one data type to another */

SELECT CAST('09:00:25' AS TIME ) AS 'CASTED TIME';

SELECT * FROM people WHERE HOUR(BIRTHTIME) BETWEEN 15 AND 25;

SELECT * FROM people WHERE birthtime BETWEEN CAST('15:00:00' AS TIME) AND CAST('25:00:00' AS TIME);

SELECT * FROM people WHERE birthtime BETWEEN '15:00:00' AND '25:00:00'; /* MySQL automatically detects without using CAST that it is a date as we have used the 'birthtime' in 'where clause' */

SELECT * FROM PEOPLE WHERE MONTH(BIRTHDT) BETWEEN 02 AND 04;

