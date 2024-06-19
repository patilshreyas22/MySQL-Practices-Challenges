use app;

SELECT * FROM customers;
SELECT * FROM orders;

DESC CUSTOMERS;
DESC ORDERS;



/* RIGHT JOINS */

/* BELOW GIVEN BOTH OF THE QUERIES ARE SAME BECAUSE , THE RIGHT JOIN IS THE ORDERS TABLE , AND EVERY ORDER WILL HAVE A CUSTOMER TO IT , SO IT WILL MATCH WITH EVERY ROW FROM CUSTOMERS TABLE */

SELECT FirstName , LastName , OrderDate , Amount FROM customers 
INNER JOIN orders ON Customers.id = Orders.CustomerID; 

SELECT FirstName , LastName , OrderDate , Amount FROM customers 
RIGHT JOIN orders ON Customers.id = Orders.CustomerID; 

SELECT CONCAT(FirstName ,  ' ' , LastName) AS 'Name' , OrderDate , Amount FROM orders
RIGHT JOIN customers ON orders.CustomerID = customers.id;

/* ON DELETE CASCADE */

	SELECT * FROM customers;
    SELECT * FROM orders;
    
    DELETE FROM customers WHERE FirstName = 'Blue'; /* here blue steel was deleted only because he had no orders in the orders table */
    
    DELETE FROM customers WHERE FirstName = 'Boy'; /* Cannot delte or update a parent row : a foreign key constraint fails */
    
    show tables;
    
    drop table customers; /* cannot even drop the parent table as it is connected to the orders table using a foreign key */
    
    drop table orders;
    drop table customers;
   
   
   /* creating new tables using ON DELETE CASCADE */
   
   CREATE TABLE customers (
id INT AUTO_INCREMENT,
PRIMARY KEY (id),
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100)
);

CREATE TABLE orders (
OrderID int AUTO_INCREMENT,
PRIMARY KEY (OrderID),
OrderDate DATE,
Amount DECIMAL(8,2),
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES customers (id) ON DELETE CASCADE  /* USED ON DELETE CASCADE HERE */
);

INSERT INTO customers (FirstName, LastName, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       INSERT INTO orders (OrderDate, Amount, CustomerID)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
       
SELECT id , CustomerID AS 'CustomerID(Orders)' , CONCAT(FirstName , ' ' , LastName) , OrderDate , Amount FROM Customers
INNER JOIN Orders ON Customers.id = Orders.CustomerID;

SELECT id , CONCAT(FirstName , ' ' , LastName)  AS 'Name' , email , OrderDate , Amount , CustomerID FROM orders
INNER JOIN Customers ON Orders.CustomerID = Customers.id;

DELETE FROM customers WHERE id = 5; /* This will delete the data of id No 5 from the Orders Table As Well */


       
     

       
    
    
