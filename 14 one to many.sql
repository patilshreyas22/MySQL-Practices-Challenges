


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
FOREIGN KEY (CustomerID) REFERENCES customers (id)
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
       
       SELECT * FROM orders; 
       
       INSERT INTO orders (OrderDate , Amount , CustomerID) VALUES ('2021-04-11' , 35.50 , 7 );  /* this is invalid as there is FOREIGN KEY CONSTRAINT */
       
       INSERT INTO orders (OrderDate , Amount , CustomerID) VALUES ('2021-04-11' , 35.50 , 3 ); /* there is a customer ID  of 3 in customers table , it will work as costraint is passed */
       
       SELECT * FROM customers;
       
       SELECT * FROM orders WHERE CustomerID = (SELECT id FROM customers WHERE LastName = 'George'); /* first evalutes the select query which is in the bracket and then the outside query */ 
       
       /* the above query only shows the orders table */
       
       SELECT * FROM customers , orders ; /* cartesian join */ /* combines every row of a table with other table */
       
       /* INNER JOIN */
       
        SELECT * FROM customers 
       JOIN orders 
       ON customers.id = orders.CustomerID;
       
       SELECT FirstName , LastName , OrderDate , Amount FROM customers 
       JOIN orders 
       ON customers.id = orders.CustomerID
       WHERE LastName = 'George';
       
        SELECT FirstName , LastName , OrderDate , Amount FROM customers 
        INNER JOIN orders 
       ON customers.id = orders.CustomerID;
       
        SELECT CONCAT (FirstName , ' ' , LastName ) AS 'Name' , OrderDate , Amount FROM customers 
       JOIN orders 
       ON customers.id = orders.CustomerID;
       
       SELECT FirstName , LastName , SUM(Amount) FROM customers
       JOIN orders ON orders.customerID = customers.id
       GROUP BY FirstName , LastName
       ORDER BY SUM(Amount);
       
       SELECT FirstName , LastName , OrderDate , Amount FROM Customers 
       LEFT JOIN orders ON customers.id = orders.CustomerID;             /* this is difn from below query */
       
       SELECT OrderDate , Amount , FirstName , LastName  FROM Orders 
       LEFT JOIN customers ON customers.id = orders.CustomerID;          /* this is diffn from above query */ /* SAME AS INNER JOIN */
       
       /* WE CAN HAVE CUSTOMERS WITH NO ORDERS , BUT WE CANNOT HAVE ORDERS WITH NO CUSTOMERS */
       
       SELECT CONCAT (FirstName , ' ' , LastName) AS 'Name' , IFNULL(SUM(Amount) , 0) AS 'Total'
       FROM customers
       LEFT JOIN orders ON customers.id = orders.CustomerID
       GROUP BY Name
       ORDER BY Total;
       
       /* IF NULL IS USED ABOVE */
       
       
	
       
       