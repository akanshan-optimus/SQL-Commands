--group by
create table Employee(emp_name varchar(30), emp_id int primary key NOT NULL, salary int default 10000);

insert into Employee(emp_name, emp_id, salary) values('Anita',1, 1679), ('Reeta',2,1234), ('Mahima',3, 4321); 

SELECT * from Employee ORDER BY salary DESC;

SELECT * from Employee ORDER BY emp_name DESC;

SELECT * from Employee ORDER BY emp_name DESC, salary DESC;


SELECT * from Employee WHERE emp_id=1 AND emp_name='Anita';

SELECT * from Employee WHERE emp_id=1 OR emp_name='Reeta';

SELECT * from Employee WHERE not emp_id=1;


SELECT * from Employee WHERE emp_id IS NOT NULL;

insert into Employee values('Amit', 4, null);

SELECT * from Employee WHERE salary IS NULL;

SELECT TOP 2 * from Employee;



