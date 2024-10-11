
--Assessment 

create table t_product_master(product_id varchar(2) not null primary key, product_name varchar(30), cost_per_item int);

insert into  t_product_master values
('P1', 'Pen', 10),
('P2','Scale', 15),
('P3','Notebook',25);

select * from t_product_master;

drop table  t_product_master;


create table t_user_master(userr_id varchar(12) not null primary key, userr_name varchar(30));

insert into t_user_master values
('U1', 'Alfred Lawrence'),
('U2','William Paul'),
('U3','Edward Fillip'); 

select * from t_user_master;

drop table t_user_master;



create table t_transaction(userid varchar(12), product_id varchar(2), transaction_date date, transaction_type varchar(10), 
transaction_amount int, foreign key(userid) references t_user_master(userr_id), 
foreign key(product_id) references t_product_master(product_id));
	
																																																																						


insert into t_transaction values
('U1','P1','2010-10-25','order',150),
('U1','P1','2010-11-20','payment',750),
('U1','P1','2010-11-20','order',200),
('U1','P3','2010-11-25','order',750),
('U3','P3','2010-11-26','order',200),
('U2','P1','2010-11-15','order',50),
('U3','P2','2010-11-16','payment',100);


select * from t_transaction;

drop table t_transaction;

--User_Name Product_Name Ordered_Quantity Amount_Paid Last_Transaction_Date Balance



select u.userr_name,p.product_name,
SUM(Case 
when t.transaction_type='Order' then t.transaction_amount ELSE 0 END) As OrderedQuantity,
SUM(CASE when t.transaction_type='Payment' then t.transaction_amount ELSE 0 END) AS AmountPaid,
max(t.transaction_date) as last_transaction_date,
sum(case when t.transaction_type='Order' then (t.transaction_amount*p.cost_per_item) else 0 end) as balance
from  t_user_master as u INNER JOIN 
t_transaction as t ON u.userr_id=t.userr_id INNER JOIN t_product_master as p ON 
t.product_id= p.product_id   Group By userr_name, p.product_name ;



select * from t_product_master;
select * from t_user_master;
select * from t_transaction;


















--2nd

create table departments(
department_id int primary key,
department_name varchar(255) not null
);


drop table departments;

insert into departments
values(1,'HR'),
(2,'Accounts'),
(3,'Tech'),
(4,'Admin')
 
 select * from departments;

create table employees(employee_id int primary key,mname varchar(255) not null,department_id int not null,hire_date date not null,
foreign key (department_id ) references departments(department_id)

);

insert into employees
values(1,'Anushka',1,'2022-01-01'),
(2,'Abhinav',2,'2021-02-01'),
(3,'Amrita',3,'2020-03-04'),
(4,'Aditya',4,'2022-01-01'),
(5,'Ambika',1,'2023-01-07'),
(6,'Sarita',2,'2022-02-03'),
(7,'Muskan',3,'2021-01-03'),
(8,'Akansha',4,'2021-01-01');

drop table employees;



create table sales (
sale_id int primary key,
employee_id int not null,
sale_date date not null,
amount float not null,
foreign key (employee_id) references employees(employee_id)
 
);



insert into sales
values(1,8,'2021-02-01',8000),
(2,5,'2024-03-01',2000),
(3,1,'2020-03-07',10000),
(4,4,'2022-03-01',1000),
(5,2,'2020-04-01',9000),
(6,3,'2021-03-25',10000);



drop table sales;



create table performance_reviews(
review_id int primary key,
employee_id int not null,
review_date date not null,
score int not null,
foreign key (employee_id) references employees(employee_id)
)

drop table performance_reviews;

insert into performance_reviews
values(1,8,'2022-02-02',8),
(2,4,'2022-03-02',6),
(3,5,'2022-03-08',9),
(4,2,'2022-03-09',5),
(5,6,'2022-04-02',8),
(6,3,'2022-03-26',9);


drop table employees;
create table departments(department_id int primary key, department_name varchar(15));

create table sales(sales_id int primary key, employee_id int, sale_date date, amount int, foreign key(employee_id) references 
employees(employee_id));
 
 drop table employees;
 drop table sales;
 drop table performance_reviews;
 drop table departments;


 select * from employees;
 select * from sales;
 select * from performance_reviews;
 select * from departments;



