create database dyp;
use  dyp;


create table student (
  roll_no INT primary key ,
  name VARCHAR(100) NOT NULL,
  gender ENUM('male','female','other') NOT NULL,
  date_of_birth DATE NOT NULL ,
  pass_of_fail boolean NOT NULL 

);
 alter table student add column email VARCHAR(100) unique NOT NULL;
 select * from student;
alter table student modify column name VARCHAR(150)
select * from student;
alter table student drop column email
select * from student ;

alter table student modify pass_of_fail boolean default true;


INSERT INTO student (roll_no, name, gender, date_of_birth, pass_of_fail) VALUES
(1, 'Aarav Sharma', 'male', '2005-03-15', true),
(2, 'Priya Patel', 'female', '2004-07-22', true),
(3, 'Rahul Kumar', 'male', '2005-11-08', false),
(4, 'Sneha Gupta', 'female', '2004-01-30', true),
(5, 'Vikram Singh', 'male', '2005-05-12', true),
(6, 'Anjali Desai', 'female', '2004-09-18', false),
(7, 'Kiran Joshi', 'other', '2005-02-25', true),
(8, 'Rohan Mehta', 'male', '2004-12-05', true),
(9, 'Meera Nair', 'female', '2005-04-10', false),
(10, 'Arjun Reddy', 'male', '2004-06-20', true);

SELECT * FROM student WHERE gender IN ('Male', 'Other');
SELECT * FROM student ORDER BY roll_no DESC LIMIT 5;


INSERT INTO student (roll_no, name, gender, date_of_birth, pass_of_fail) VALUES
(11, 'Aditya Verma', 'male', '2004-08-14', true),
(12, 'Divya Rao', 'female', '2005-01-27', false),
(13, 'Karthik Iyer', 'male', '2004-10-03', true),
(14, 'Pooja Menon', 'other', '2005-06-11', true),
(15, 'Siddharth Bose', 'male', '2004-03-19', false),
(16, 'Riya Chatterjee', 'female', '2005-09-07', true),
(17, 'Aryan Malhotra', 'male', '2004-12-22', true),
(18, 'Neha Kapoor', 'female', '2005-04-16', false),
(19, 'Devansh Trivedi', 'other', '2004-07-09', true),
(20, 'Swati Agarwal', 'female', '2005-02-28', true);


select * from student