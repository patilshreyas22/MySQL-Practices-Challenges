/* IN OPERATOR */

SELECT title , author_lname FROM books WHERE author_lname IN ('eggers' , 'smith' , 'lahiri');

/* NOT IN */

SELECT title , author_lname FROM books WHERE author_lname NOT IN ('eggers' , 'smith' , 'lahiri');

SELECT title , released_year FROM books WHERE released_year NOT IN ( 2003 , 2016 , 2000 , 1981) ORDER BY released_year;

SELECT title , released_year FROM books WHERE released_year NOT IN (2000 , 2002 , 2004 , 2006 , 2008 , 2010 , 2012 , 2014 , 2016 , 2018) ORDER BY released_year;

SELECT title ,released_year FROM books WHERE released_year>=2000 AND released_year % 2 != 0 ORDER BY released_year; /* used the modulo here */

/* CASE STATEMENTS */

SELECT title , released_year ,
CASE 
WHEN released_year >= 2000 THEN 'Modern Lit'
ELSE '20th Century Lit'
END AS 'Genre'
FROM books;

SELECT released_year , count(*) ,
CASE 
WHEN released_year >= 2000 THEN 'Modern Lit'
ELSE '20th Century Lit'
END AS 'Genre'
FROM books
GROUP BY released_year; 

/* stock and genre with case statement */

SELECT title , released_year ,
CASE 
WHEN released_year >= 2000
THEN 'Modern Lit'
ELSE '20th Century Lit'
END AS 'Genre',
stock_quantity,
CASE
WHEN stock_quantity BETWEEN 0 AND 50 
THEN '*'
WHEN stock_quantity BETWEEN 51 AND 100
THEN '**'
ELSE '***'
END AS 'Stock Rating'
FROM books; 



