
--Creating Database
create database mydb;

--Droping Database
drop mydb;


--using database
use mydb;



--creating table
create table Studentt(student_id int, student_name varchar(15), course_name varchar(25), course_fees int);

Alter table learning RENAME TO student;

--fetching table
select * from Studentt;


--inserting rows to the table
insert into Studentt values
(2, 'Anshika Bisht', 'C++', 1200),
(3, 'Darshika Pundir', 'Java', 1000),
(4, 'Isha Goyal', 'Spring', 1300),
(5, 'Aradhya Ghatola', 'DBMS', 1400)
;


--using select
select course_fees from Studentt;

select student_name, course_fees from Studentt;

select * from Studentt where course_name='sql';



--using distinct
select distinct course_name from Studentt;