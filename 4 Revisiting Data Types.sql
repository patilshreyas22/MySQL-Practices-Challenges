use book_shop;

show tables;
desc people;

/* TIMESTAMP */

/* TIMESTAMP CONTAINS BOTH , TIME AND DATE BUT THE RANGE OF TIME STAMP IS SHORT '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC */

SELECT NOW(); /* SAME AS TIMESTAMP */

SELECT TIMESTAMP('2024-01-07 15:08:08');

/* FUNCTIONS : TIMESTAMP_ADD . TIMESTAMP_DIFF , TIMESTAMP_SUB */

/* USING TIMESTAMP CONSUMES LESS MEMORY , ITS JUST AMOTHER WAY OF STORING TIME WITH A DATE */

CREATE TABLE captions2 (
text VARCHAR(150),
posted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,     /* this will store the time when the caption was inserted into the database (i.e posted) */
updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP );  
 
 INSERT INTO captions2 (text) VALUES ('shreyas you are surely gonna make it');
 SELECT * from captions2;
 
 update captions2 SET text = 'Shreyas believe in yourself , you are gonna make it';
 

