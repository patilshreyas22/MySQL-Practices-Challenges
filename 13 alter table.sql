/* UNIQUE CONSTRAINT , CHECK , NAMED CONSTRAINT , MULTI COLUMN CONSTRAINT , ALTER TABLE: ADD , DROP , RENAME , CHANGE , MODIFY , CONSTRAINT */


show tables;
select * from companies;
desc companies;

ALTER TABLE companies
ADD COLUMN Alt_Phone VARCHAR(15);


DESC COMPANIES;

ALTER TABLE companies
ADD employee_count INT NOT NULL ; /* EVEN IF YOU DONT WRITE 'COLUMN' IN THIS QUERY , IT IS FINE */

ALTER TABLE companies 
DROP employee_count;

ALTER TABLE companies DROP Alt_Phone;

RENAME TABLE companies TO suppliers;
desc suppliers;

ALTER TABLE suppliers 
RENAME COLUMN name TO info;

show tables;

desc people;

ALTER TABLE people
RENAME COLUMN name TO People_Name;

desc people; 

ALTER TABLE people
MODIFY COLUMN People_Name VARCHAR (105);

SHOW TABLES;
DESC PALINDROME;
SELECT * FROM PALINDROME;

ALTER TABLE palindrome
MODIFY COLUMN word VARCHAR(50) UNIQUE NOT NULL;

ALTER TABLE palindrome 
MODIFY COLUMN word VARCHAR(50) UNIQUE NOT NULL DEFAULT 'IDK' ;
DROP INDEX word_1 ON book_shop.palindrome;
INSERT INTO PALINDROME () VALUES ();


SHOW TABLES;
DESC USERS;

ALTER TABLE users 
CHANGE Names Names VARCHAR (50) NOT NULL UNIQUE;

ALTER TABLE users
MODIFY COLUMN Names VARCHAR (100) not null DEFAULT 'Unknown';

select * from houses;

desc houses;

ALTER TABLE houses
ADD CONSTRAINT POSITIVE_PRICE CHECK (purchase_price >= 0);

INSERT INTO houses (purchase_price , sell_price) VALUES (5 , 7);