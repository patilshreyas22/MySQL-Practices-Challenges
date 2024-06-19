use book_shop;
show tables;
select * from people;

/* DATE FUNCTIONS */

SELECT BIRTHDATE FROM PEOPLE;
SELECT BIRTHDT FROM PEOPLE;

/* DAY */

SELECT DAY(BIRTHDATE) FROM PEOPLE;
SELECT DAY(BIRTHDT) FROM PEOPLE;

/* DAYOFWEEK */

SELECT DAYOFWEEK(BIRTHDATE) FROM PEOPLE;
/* HERE SUNDAY = 1 ,,,,,SATURDAY = 7 */

/* DAYOFYEAR */

SELECT DAYOFYEAR(BIRTHDT) FROM PEOPLE; 

/* DAYOFMONTH */

SELECT DAYOFMONTH(BIRTHDATE) FROM PEOPLE;

SELECT DAYOFMONTH(BIRTHDT) FROM PEOPLE;

SELECT DAY(BIRTHDATE) , DAYOFYEAR(BIRTHDT) , DAYOFMONTH(BIRTHDATE) , DAYOFWEEK(BIRTHDATE) FROM PEOPLE;

/* MONTHNAME */

SELECT MONTHNAME(BIRTHDATE) FROM PEOPLE;
SELECT MONTH(BIRTHDATE) FROM PEOPLE;

/* YEAR */

SELECT YEAR(BIRTHDT) FROM PEOPLE;

/* ALL TOGETHER */

SELECT DAY(BIRTHDATE) , MONTH(BIRTHDATE) , YEAR(BIRTHDATE) , DAYOFMONTH(BIRTHDATE) , DAYOFYEAR(BIRTHDATE) , DAYOFWEEK(BIRTHDATE) , MONTHNAME(BIRTHDATE) FROM PEOPLE;