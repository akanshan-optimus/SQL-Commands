select * from employee;
select * from department;
select * from Adress;

use mydb;
create table department(dp_id int primary key, dp_name varchar(20), emp_id int, foreign key(emp_id) references employee(emp_id));

create table Adress(ad_id int primary key, city varchar(20), street varchar(20), emp_id int, foreign key(emp_id) references employee(emp_id));


insert into department values(101, 'HR', 1),(102,'Admin', 1),(103, 'Tech', 2);
insert into Adress values(100, city1, 1), (200, city2, street2, 2);


--inner join

select * from Employee INNER JOIN department ON Employee.emp_id= department.emp_id;

select * from Employee INNER JOIN department ON Employee.emp_id= department.emp_id INNER JOIN Adress ON Employee.emp_id= Adress.emp_id;


--LEFT JOIN
select * from Employee LEFT JOIN department ON Employee.emp_id= department.emp_id LEFT JOIN Adress ON Employee.emp_id= Adress.emp_id;

--select * from Employee LEFT JOIN department ON Employee.emp_id= department.emp_id LEFT JOIN Adress ON Employee.emp_id= Adress.emp_id;


--RIGHT JOIN
select * from Employee RIGHT JOIN department ON Employee.emp_id= department.emp_id RIGHT JOIN Adress ON Employee.emp_id= Adress.emp_id;



--FULL OUTER JOIN
select * from Employee FULL OUTER JOIN  department ON Employee.emp_id= department.emp_id FULL OUTER JOIN Adress ON Employee.emp_id=Adress.emp_id;


--SELF JOIN
select e1.street,e1.add_id, e2.city, e2.emp_id from Adress as  e1, Adress as e2 WHERE e1.city=e2.city;

