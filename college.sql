CREATE TABLE employee (ID INT AUTO_INCREMENT PRIMARY KEY , FirstName VARCHAR(255) , LastName VARCHAR(255) , SALARY INT , EmailID VARCHAR(255));

INSERT INTO employee(ID, FirstName, LastName, Salary, EmailId) VALUES(1, "Neeta", "Korade", 59000, "neetak12@gmail.com"), (2, "Sushma", "Singh", 62000, "sushsingh67@gmail.com"), (3, "Kavita", "Rathod", 27000, "kavitar09@gmail.com"), (4, "Mrunalini", "Deshmukh", 88000, "mrunald78@gmail.com"), (5, "Swati", "Patel", 34000, "swatip67@gmail.com"), (6, "Laxmi", "Kadam", 44000, "laxmik14@gmail.com"), (7, "Lalita", "Shah", 66000, "lalita45@gmail.com"), (8, "Savita", "Kulkarni", 31000, "savitak56@gmail.com"), (9, "Shravani", "Jaiswal", 38000, "shravanij39@gmail.com"), (10, "Shweta", "Wagh", 20000, "shwetaw03@gmail.com");


SELECT * FROM employee;

CREATE TABLE department (Dept_ID INT NOT NULL , ID INT NOT NULL  , Dept_Name VARCHAR(255) NOT NULL DEFAULT 'NOT ASSIGNED' , FOREIGN KEY (ID) REFERENCES Employee (ID) );

DESC department;

DROP TABLE department;

SELECT * FROM DEPARTMENT;

SELECT FirstName , Dept_Name FROM employee INNER JOIN department ON employee.ID = department.ID;

INSERT INTO employee(FirstName, LastName, Salary, EmailId) VALUES ('KHUSHI' , 'WAGHMARE' , 10000 , 'khushi26@gmail.com');

DESC DEPARTMENT;

INSERT INTO department (Dept_ID , ID , Dept_Name) VALUES (8 , 11 , NULL);



