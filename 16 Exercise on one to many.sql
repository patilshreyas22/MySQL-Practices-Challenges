use app;

 CREATE TABLE Students(
 id INT AUTO_INCREMENT PRIMARY KEY,
 FirstName VARCHAR(50)
 );
 
 CREATE TABLE Papers(
 title VARCHAR(50) UNIQUE,
 grade VARCHAR(10),
 StudentID INT,
 FOREIGN KEY (StudentID) REFERENCES Students (id) ON DELETE CASCADE
 );
 
 ALTER TABLE Papers 
 MODIFY grade INT;
 
 DESC papers;
 
 INSERT INTO students (firstname) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (studentid, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

show tables;


SELECT FirstName , title , grade FROM Students
INNER JOIN Papers ON students.id = papers.StudentID;

SELECT FirstName , title , grade FROM papers
RIGHT JOIN students ON students.id = papers.studentid;

SELECT FirstName , title , grade FROM students
LEFT JOIN papers ON students.id = papers.studentid;

SELECT FirstName , IFNULL(title, 'Missing') AS 'Title' , IFNULL(grade,0) AS 'Grade' FROM papers
RIGHT JOIN students ON students.id = papers.studentid;

SELECT FirstName , CAST(IFNULL(AVG(grade), 0) AS DECIMAL(6, 4)) AS Average FROM papers
RIGHT JOIN students ON papers.studentid = students.id
GROUP BY FirstName
ORDER BY Average DESC;

SELECT FirstName , CAST(IFNULL(AVG(grade), 0) AS DECIMAL(6, 4)) AS Average,
CASE 
WHEN
CAST(IFNULL(AVG(grade), 0) AS DECIMAL(6, 4)) > 75
THEN 'Passing'
ELSE 'Failing'
END AS 'Passing Status'
FROM papers
RIGHT JOIN students ON papers.studentid = students.id
GROUP BY FirstName
ORDER BY Average DESC;







