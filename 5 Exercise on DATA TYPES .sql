/*

CHAR - IT IS USED WHERE THE STRING DATA IS SMALL I.E IT IS NOT A BIG ASS NAME , MAYBE IT COULD BE SOMEONES INITIALS 

ITEM_NAME - VARCHAR
PRICE - TINYINT
QUANTITY - 

DATETIME AND TIMESTAMPS ARE SAME , BOTH GIVES OFF DATE AND TIME BUT THERE IS A RANGE DIFFERENCE AND ALSO TIMESTAMP CONSUMES LESS STORAGE AND THE RANGE OF TIMESTAMP IS COMPARATLIVELY SMALLER 
 */
 
 SELECT CURTIME();
 SELECT CURDATE();
 SELECT DATE_FORMAT(CURDATE() , '%w') AS 'DAY OF WEEK';
 SELECT DATE_FORMAT(CURDATE() , '%W') AS 'DAY OF WEEK';
 
 SELECT CONCAT(DATE_FORMAT(NOW() , '%m') , '/' , DATE_FORMAT(NOW() , '%d') , '/' , DATE_FORMAT(NOW() , '%Y')) AS 'DATE' , 
		CONCAT(TIME_FORMAT(NOW() , '%h') , '/' , TIME_FORMAT(NOW() , '%i') , '/' , TIME_FORMAT(NOW() , '%s')) AS 'TIME' /* in 12 hour format */;
        
SELECT CONCAT (DATE_FORMAT(NOW() , '%M') , ' ' , DATE_FORMAT(NOW() , '%D') , ' ' , 'at' , ' ' , TIME_FORMAT(NOW() , '%h') , ':' , TIME_FORMAT(NOW() , '%i')) AS 'DATE AND TIME';

CREATE TABLE tweets1 (
             
             tweet VARCHAR(180),
             username VARCHAR(20),
             Posted_On TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO tweets1 (tweet , username) VALUES ('hello myself rekha' , 'uttara_patil');

SELECT * FROM tweets1;

SELECT DATE_FORMAT(CURDATE() , ' %m/%d/%Y'); /* TEACHER SOLUTION */

UPDATE tweets1 SET tweet = 'why would i tell you my name' WHERE username = 'oyeshreyas';

SELECT DATE_FORMAT(NOW() , '%M %D at %h:%i'); /* SIR SOLUTION */

SELECT ROUND(123.456);      -- Rounds to the nearest integer
SELECT ROUND(123.456, 2);   -- Rounds to 2 decimal places


