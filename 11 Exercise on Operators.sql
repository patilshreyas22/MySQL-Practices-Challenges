SELECT 10 != 10; /* BOOLEAN CALUE : 0 , (FALSE) */

SELECT 15 > 14 AND 99 - 5 <= 94; /* BOOLEAN : 1 */

SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10 ; /* BOOLEARN : 1 */

SELECT title , released_year FROM books WHERE released_year < 1980;

SELECT title , author_lname FROM books WHERE author_lname IN ('eggers' , 'chabon');

SELECT title , author_lname , released_year FROM books WHERE author_lname IN ('lahiri') AND released_year >= 2000; 

SELECT title , pages FROM books WHERE pages BETWEEN 100 AND 200 ORDER BY pages;

SELECT title , author_lname FROM books WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%';

SELECT title , author_lname FROM books WHERE substring(author_lname , 1 , 1) IN ('s' , 'c'); /* another method of the above query */

SELECT 	title , author_lname ,
CASE 
WHEN title LIKE '%Stories%'
THEN 'Short Stories'
WHEN title LIKE '%just kids%' OR title LIKE '%heartbreaking%'
THEN 'Memoir'
ELSE 'Novel'
END AS 'TYPE'
FROM books;

SELECT author_fname , author_lname , CONCAT( count(*) , ' ' , 'Books' ) AS 'Count'
FROM books 
GROUP BY author_fname , author_lname;