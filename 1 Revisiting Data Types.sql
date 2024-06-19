show databases;
use book_shop;
show tables;
desc books;
select * from books;
select count(*) from books;

/* date and time */

/* DATE - 'YYYY-MM-DD' 
   TIME - 'HH-MM-SS' ( -838 HOURS TO +838 HOURS )
   DATETIME -'YYYY-MM-DD HH-MM-SS'
*/
SELECT * FROM BOOKS;
SHOW TABLES;
CREATE TABLE people (
name VARCHAR(100),
BIRTHDATE DATE,
BIRTHTIME TIME,
BIRTHDT DATETIME
);
SHOW TABLES;
DESC people;

INSERT INTO people (name , birthdate , birthtime , birthdt ) VALUES ('pranita' , '1998-06-11' , '9:18:23' , '1998-06-11 9:18:23'),
					                                                ('aditya' , '1992-6-24' , '5:18:23' , '1992-6-24 5:18:23'),
                                                                    ('tejas' , '2003-04-26' , '22:18:25' , '2003-04-26 22:18:25');
                                                                    
                                                                    select * from people;
                                                                    

/* CURDATE , CURTIME AND NOW */

/* cur is basically current - date , time */

SELECT CURTIME(); /*  RETURNS CURRENT TIME */
SELECT CURDATE(); /*  RETURNS CURRENT DATE */

SELECT CURRENT_TIMESTAMP(); 
SELECT NOW(); /* CURRENT_TIMESTAMP AND NOW ARE SAME , IT GIVES YOU DATETIME */
use book_shop;
INSERT INTO PEOPLE (name , birthdate , birthtime , birthdt) VALUES ('agastya' , curdate() , curtime() , now() );
select * from people;

                                                                    


