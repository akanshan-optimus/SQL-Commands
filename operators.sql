
--Arithmatic
select 30+50;

select 30-20;

select 20-30;

select 10*30;

select 30/2;

select 30%2;



-- bitwise


CREATE TABLE bitwise (
    
    and_op INT,
   or_op INT,
    xor_op INT
);

INSERT INTO bitwise 
VALUES
    (0 & 0, 0 | 0, 0 ^ 0),  
    (0 & 1, 0 | 1, 0 ^ 1),  
    (1 & 0, 1 | 0, 1 ^ 0),  
    (1 & 1, 1 | 1, 1 ^ 1);  

	select * from bitwise;



	--
		select * from employees where age>35;

		select * from employees where age<35;

		select * from employees where age=35;

		select * from employees where age>=35;

		select * from employees where age>=35;

		select * from employees where age<>35;

		select * from employees where age  BETWEEN 35 AND 90;

		select * from Employees where age IN (35,40);


			
		select department, count(department), age from employees group by department, age;

		select department from employee group by department having department='IT';

		SELECT department, COUNT(*) FROM employees GROUP BY department HAVING department = 'IT';

		select department, count(department) as cnt from employees where department='IT' group by department;

		


		select distinct department from employees;

		select * from employees;
		EXEC sp_help 'employees';

		desc employees;
		DESCRIBE employees;

	select age from Employees;


	
CREATE TABLE Employees2 (
    EmployeeID int primary key,
    Name varchar(50),
    Age int,
    Department varchar(50),
    Salary int
);





INSERT INTO Employees2 (EmployeeID, Name, Age, Department, Salary) VALUES
(1, 'Amit', 30, 'HR', 60000),
(2, 'Ankit', 25, 'IT', 75000),
(3, 'Anita', 35, 'IT', 80000),
(4, 'Mahimaa', 40, 'Finance', 90000),
(5, 'Sahil', 22, 'Marketing', 50000);



--AND
SELECT * FROM Employees2 WHERE Department = 'IT' AND Salary > 70000;







	--between

	SELECT * FROM Employees2 WHERE Age BETWEEN 25 AND 35;

	--LIKE
	SELECT * FROM Employees2 WHERE Name LIKE 'A%';





	--ALL
	select ALL department from Employees2;

	--OR
	SELECT * FROM Employees2 WHERE Department = 'IT' OR Salary > 70000;

	--NOT IN
	SELECT * FROM Employees2 WHERE Department NOT IN ('Finance');


	--IN
	SELECT * FROM Employees2 WHERE Department IN ('IT', 'Marketing');





