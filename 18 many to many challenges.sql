use bms;
show tables;


SELECT TITLE , RATING FROM SERIES
INNER JOIN REVIEWS ON SERIES.SERIESID = REVIEWS.SERIES_RID;

SELECT title , ROUND(IFNULL(AVG(RATING) , 0),2) AS AVG_RATING FROM SERIES /* USED ROUND HERE TO ROUND OFF THE RATING AVERAGE */
INNER JOIN REVIEWS ON SERIES.SERIESID = REVIEWS.SERIES_RID
GROUP BY title 
ORDER BY AVG(RATING);

select concat(Firstname , ' '  , lastname) as 'Name' , rating from reviewers
inner join reviews on reviews.reviewer_rid = reviewers.reviewerid;

SELECT title as 'unreviewed series' from reviews
right join series on series.seriesid = reviews.series_rid
where reviewid is null;

select genre , ROUND(avg(rating) , 2) as Avg_Rating from series
inner join reviews on series.seriesid = reviews.series_rid
group by genre;

/* USING CASE STATEMENT , RIGHT JOIN */

SELECT FirstName , LastName , COUNT(rating) as rating , ifnull(min(rating),0) as MIN , ifnull(max(rating),0) as MAX , ifnull(round(avg(rating),2),0) as 'AVG',
CASE 
WHEN
count(RATING) > 0 
THEN 'INACTIVE'
ELSE 'ACTIVE'
END AS '_STATUS_'
from reviews
right join reviewers on reviewers.reviewerid = reviews.reviewer_rid
GROUP BY FirstName , LastName;


/* right join but using case differently */

SELECT FirstName , LastName , COUNT(rating) as rating , ifnull(min(rating),0) as MIN , ifnull(max(rating),0) as MAX , ifnull(round(avg(rating),2),0) as 'AVG',
CASE 
WHEN
RATING is null
THEN 'INACTIVE'
ELSE 'ACTIVE'
END AS '_STATUS_'
from reviews
right join reviewers on reviewers.reviewerid = reviews.reviewer_rid
GROUP BY FirstName , LastName , _status_;


/* LEFT JOIN */

SELECT 
    firstname,
    lastname,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.REVIEWERid = reviews.reviewer_rid
GROUP BY firstname , lastname;



/* USING IF */

-- USING IF 
SELECT 
    firstname,
    lastname,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.reviewerid = reviews.reviewer_rid
GROUP BY firstname , lastname;


select title , rating , concat(firstname , ' ' , lastname) as reviewer from series
inner join reviews on series.seriesid = reviews.series_rid
inner join reviewers on reviewers.reviewerid = reviews.reviewer_rid;  
