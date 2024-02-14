-- Module 4) DA - SQL - Introduction and Getting started with sql


-- Assessment 1: 
use assessment;

create table Worker(
	WORKER_ID int,
    FIRST_NAME varchar (20),
    LAST_NAME varchar(20),
    SALARY int,
    JOINING_DATE date
);

alter table worker
add DEPARTMENT varchar (10);

insert into worker values
(1, 'Monica', 'Arora', 100000, '2014-02-20', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin');

select * from worker;


-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.--
select * from worker order by FIRST_NAME ASC, DEPARTMENT DESC;


-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
select * from worker where FIRST_NAME in ('Vipul','Satish');


-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
select * from worker where FIRST_NAME LIKE '_____h';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 


-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT  COUNT(*) FROM worker GROUP BY FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT HAVING COUNT(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table. 
select * from worker limit 6;


-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
select DEPARTMENT, count(WORKER_ID) as 'NUMBER OF WORKERS' FROM worker group by DEPARTMENT having count(WORKER_ID)>5;


-- 8. Write an SQL query to show all departments along with the number of people in there
select DEPARTMENT, count(WORKER_ID) as 'NUMBER OF WORKERS' FROM worker group by DEPARTMENT;


-- 9. Write an SQL query to print the name of employees having the highest salary in each department. 
SELECT FIRST_NAME, salary FROM worker ORDER BY salary DESC LIMIT 2;



-- Question 2: Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 

CREATE TABLE Student (
StdID int(4), StdName varchar(30) not null,
Sex varchar(7), Percentage int, Class int ,
Sec varchar(1), Stream varchar(10), DOB date
);

select * from student;

insert into  Student values (1001, 'Surekha Joshi', 'FEMALE', 82, 12, 'A', 'Science', '1998-03-08');

insert into  Student values 
(1002, 'Mahi Agarwal', 'FEMALE', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'MALE', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'MALE', 63, 11, 'C', 'Commerce', '1997-05-11'),
(1005, 'Dipesh Pulkit', 'MALE', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'Jahanvi Puri', 'FEMALE', 60, 11, 'B', 'Commerce', '2008-07-11'),
(1007, 'Sanam Puri', 'MALE', 23, 12, 'F', 'Commerce', '1998-03-08'),
(1008, 'Sahil Saras', 'MALE', 56, 11, 'C', 'Commerce', '2008-07-11'),
(1009, 'Akshra Agarwal', 'FEMALE', 72, 12, 'B', 'Commerce', '1996-10-01'),
(1010, 'Stuti Mishra', 'FEMALE', 39, 11, 'F', 'Science', '2008-11-23'),
(1011, 'Harsh Agarwal', 'MALE', 42, 11, 'C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'MALE', 49, 12, 'C', 'Commerce', '1998-06-28'),
(1013, 'Akriti Saxena', 'FEMALE', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'Tani Rastogi', 'FEMALE', 82, 12, 'A', 'Science', '2008-11-23');


-- 1 To display all the records form STUDENT table. 
SELECT * FROM student;


-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM student; 


-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student WHERE percentage >= 80;


-- 4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName , Stream, Percentage from student WHERE percentage > 80; 


-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * From student WHERE stream = 'Science' AND percentage > 75; 


