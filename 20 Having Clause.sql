SELECT * FROM full_review;

SELECT title , avg(rating) AS 'Rating' , COUNT(RATING) FROM full_review GROUP BY title;

/* HAVING CLAUSE IMPOSE CONDITIONS ON THE GROUP BY  , BASICALLY FILTERS THE GROUP BY CLAUSE */

SELECT title , avg(rating) AS 'Rating' , COUNT(rating) AS 'Count Rating' FROM full_review GROUP BY title HAVING COUNT(rating) > 1;

/* WITH ROLLUP , only works with GROUP BY clause */

SELECT AVG(rating) FROM full_review;

SELECT title , AVG(rating) FROM full_review GROUP BY title with rollup; /* LAST ROW WILL BE THE AVG FOR ALL OF THE ROWS */

select title , COUNT(rating) FROM full_review GROUP BY title WITH ROLLUP; /* LAST ROW WILL BE THE TOTAL NO OF RATING COUNT */

SELECT 
    released_year, genre, AVG(rating)
FROM
    full_review
GROUP BY released_year , genre WITH ROLLUP;

SELECT 
    firstname, released_year, genre, AVG(rating)
FROM
    full_review
GROUP BY released_year , genre , firstname WITH ROLLUP;
