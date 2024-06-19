CREATE TABLE companies (
supplier_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE,
address VARCHAR(255) NOT NULL
);

/* NOT NULL CANNOT BE NULL , UNIQUE - DUPLICATE ENTRIED NOT ALLOWED */


CREATE TABLE parties (
name VARCHAR(50),
age INT CHECK (age > 18 )
);

INSERT INTO parties (name , age) VALUES ('Shreyas' , '21');
INSERT INTO Parties (name , age) VALUES ('Shrishti' , '17'); /* cannot be inserted as the check is wrong , check constraint violated */
SELECT * FROM parties;

CREATE TABLE palindrome (
word VARCHAR(50) CHECK (REVERSE(WORD) = WORD)
);

INSERT INTO palindrome (word) VALUES ('CIVIC');
INSERT INTO PALINDROME (WORD) VALUES ('ROTOR') , ('LEVEL') , ('KAYAK') , ('RADAR');

SELECT * FROM PALINDROME;

CREATE TABLE vowels (
word VARCHAR(50) CHECK (word LIKE '%a%') /* only if there is an 'a' in the word then only the word will be inserted or else rejected */
);

INSERT INTO vowels (word) VALUES ('shre');

select * from VOWELS;

/* NAMED CONSTRAINT */

CREATE TABLE users (
name VARCHAR(50),
age INT,
CONSTRAINT Age_is_not_justified CHECK (age<18)
);

INSERT INTO users (names , age) VALUES ('adiruth' ,  20); /* cannot be inserted as age is 20 */ 
select * from users;

/* multi column constraints */

show tables;

CREATE TABLE companies2 (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address) /* COMBINATION OF NAME AND ADDRESS COLUMN SHOULD BE UNIQUE */
);

INSERT INTO companies2 (name , address ) VALUES ('BINCAPS' , 'PUNE');
INSERT INTO companies2 (name , address) VALUES ('bincaps' , 'sangli');
INSERT INTO companies2 (name , address) VALUES ('shreyp' , 'sangli');
INSERT INTO companies2 (name , address) VALUES ('shreyp' , 'sangli');
select * from companies2;

CREATE TABLE houses(
purchase_price INT NOT NULL,
sell_price INT NOT NULL,
CONSTRAINT selling_policy CHECK (sell_price >= purchase_price )
);

INSERT INTO houses (purchase_price ,  sell_price) VALUES (500 , 450);
SELECT * from houses;






