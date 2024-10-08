
--UNION

create table Customer(c_id int primary key, c_name varchar(15));
insert into Customer values(1, 'Amit'),(2,'Rohan'),(3,'Arun');


create table Order(od_id int primary key, product_name varchar(15), c_id int, foreign key(c_id) references Customer(c_id));

select * from Order;