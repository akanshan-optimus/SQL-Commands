


create table Customer(c_id int primary key, c_name varchar(15));
insert into Customer values(1, 'Amit'),(2,'Rohan'),(3,'Arun');

insert into 
create table orders(od_id int, product_name varchar(15));


alter table department 


--UNION
select * from orders UNION select * from Customer;



--GROUP BY
select dp_name, count(dp_name) from department GROUP BY dp_name;


select salary, count(salary), sum(salary) from employee GROUP BY salary;


select emp_name, sum(salary) from employee GROUP BY emp_name;




-- HAVING
select emp_name from employee GROUP BY emp_name having emp_name='Anita';



--EXISTS

select * from Employee WHERE EXISTS(select emp_id from department where employee.emp_id=department.emp_id);


--NOT EXISTS

select * from employee where NOT EXISTS(select emp_id from department where employee.emp_id=department.emp_id);


--ANY

select * from Employee WHERE salary = ANY (select salary from employee where salary>1400);

--ALL

select * from Employee WHERE salary = ALL (select salary from employee where salary>1000);


--select into
select * into Employeee  from employee;


-- IF CASE
SELECT 
    emp_name,
    emp_id,
    CASE
        WHEN salary>1400 THEN 'above 1400'
        WHEN salary>1500 THEN 'above 1500'
        ELSE 'under 1400'
    END as message
FROM 
    Employee;

	select * from employee;

	-- ISNULL
SELECT 
    emp_name,
    ISNULL(salary, 50000) AS salary
FROM 
    employee;


	--COALESCE

	SELECT 
    emp_name,
    COALESCE(salary, 50000) AS salary
FROM 
    employee;

	
	--Stored Procedures

	CREATE PROCEDURE print_emp
AS
select * from employee
GO;

EXEC print_emp;


select * from employeee;
select * from employee;
select * from department;




