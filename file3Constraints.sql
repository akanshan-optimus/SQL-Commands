--primary key, not null
create table Student(s_id INT PRIMARY KEY NOT NULL, s_name VARCHAR(15), s_address VARCHAR(100));

--unique
create table Student1(s_id INT NOT NULL UNIQUE, s_name VARCHAR(15), s_address VARCHAR(100));


--check
ALTER TABLE Student ADD age INT CHECK(age>=18); 

--default
ALTER TABLE Student ADD salary INT DEFAULT 20000;

--index

drop table Student1;



--auto increment
CREATE TABLE Student1(s_id INT PRIMARY KEY AUTO_INCREMENT, s_name VARCHAR(30));

