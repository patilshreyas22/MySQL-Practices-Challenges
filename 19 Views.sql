SELECT title , released_year , genre , rating , FirstName , LastName FROM series
INNER JOIN reviews ON series.SeriesID = reviews.Series_rid
INNER JOIN reviewers ON reviewers.ReviewerID = reviews.Reviewer_rid;	

/* CREATING A VIEW */

/* A VIEW WILL ACT AND WILL BE TREATED AS A TABLE */

CREATE VIEW full_review AS
SELECT title , released_year , genre , rating , FirstName , LastName FROM series
INNER JOIN reviews ON series.SeriesID = reviews.Series_rid
INNER JOIN reviewers ON reviewers.ReviewerID = reviews.Reviewer_rid; /* a virtual table (view) is created */

SELECT * FROM full_review;

SELECT * FROM full_review WHERE genre = 'Animation';

SELECT genre , avg(rating) FROM full_review
GROUP BY genre;

/* we can do anything to a view which we do to a table , but it is not an actual table but a virtual table */

DELETE FROM full_review WHERE released_year = 2010;  /* YOU CANNOT DELETE FROM A VIEW */

select * from series ORDER BY released_year;

CREATE VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year; /* insertable , updatable , deletable VIEW */

SELECT * FROM ordered_series;

INSERT INTO ordered_series (title , released_year , genre) VALUES ('The Great' , NOW() , 'Comedy');

SELECT * FROM series;

/* WHATEVER YOU ADD INTO THE INSERTABLE , UPDATABLE , ETC VIEW , WILL ALSO BE ADDED INTO THE ORIGINAL TABLE */

DELETE FROM ordered_series WHERE title = 'The Great';

/* REPLACE VIEW */

CREATE VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year DESC; /* THIS VIEW ALREADY EXISTS , CANNOT BE CREATED AGAIN */


CREATE OR REPLACE VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year DESC; /* THIS WILL REPLACE THE VIEW WITH WHATEVER THE NEW QUERY IS BUT THE VIEW NAME WILL BE SAME */

SELECT * FROM ordered_series;

ALTER VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year ASC; /* We can even alter the VIEWS */

DROP VIEW ordered_series;


