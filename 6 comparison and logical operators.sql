/* not equal */

show databases;
use book_shop;

select * from books;

select * from books where released_year != 2017;

select title , author_lname from books where author_lname != 'Gaiman';

select title FROM books WHERE title not like '% %';

SELECT TITLE , AUTHOR_FNAME FROM BOOKS WHERE author_fname NOT LIKE '%DAV%';

select TITLE FROM BOOKS WHERE TITLE NOT LIKE '%E%';

/* GREATER THAN > */

 SELECT * FROM BOOKS WHERE RELEASED_YEAR > 2000 ORDER BY RELEASED_YEAR ; 
 
 SELECT 99<45; /* RETURNS A BOOLEAN NUMBER TRUE / FALSE */
 
 SELECT 1>NULL ;
 
 
