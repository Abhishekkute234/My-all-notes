use cognizent

create table employee(
Employee_Id INT NOT NULL primary key auto_increment,
Name VARCHAR(200) Not NUll ,
Gender ENUM('Male','Female','Others'),
Employee_type ENUM('Intern','HR','Full Time', 'Product Manager','Sales'),
Date_of_birth date ,
Notice_period boolean ,
Salary bigint  


) ;

select * from employee 
INSERT INTO employee (Name, Gender, Employee_type, Date_of_birth, Notice_period, Salary) VALUES
 ('Abhishek Kute', 'Male', 'HR', '2005-03-02', FALSE, 1000000),
('Priya Sharma', 'Female', 'Intern', '2004-07-15', FALSE, 250000),
('Rahul Patel', 'Male', 'Full Time', '1998-11-20', TRUE, 800000),
('Sneha Desai', 'Female', 'Product Manager', '1995-04-10', TRUE, 1500000),
('Vikram Singh', 'Male', 'Sales', '1997-09-05', FALSE, 600000),
('Anita Rao', 'Female', 'HR', '1999-01-25', TRUE, 750000),
('Karan Mehta', 'Male', 'Intern', '2003-12-12', FALSE, 200000),
('Meera Gupta', 'Female', 'Full Time', '1996-06-18', TRUE, 900000),
('Arjun Reddy', 'Male', 'Product Manager', '1994-02-14', TRUE, 1800000),
('Lakshmi Nair', 'Female', 'Sales', '1998-08-30', FALSE, 550000),
('Rohit Kumar', 'Male', 'Full Time', '1997-05-22', TRUE, 850000),
('Divya Iyer', 'Female', 'HR', '1999-10-08', FALSE, 700000),
('Siddharth Bose', 'Male', 'Intern', '2004-03-17', FALSE, 220000),
('Pooja Malhotra', 'Female', 'Product Manager', '1995-12-03', TRUE, 1600000),
('Amit Joshi', 'Male', 'Sales', '1996-07-29', TRUE, 650000),
('Neha Kapoor', 'Female', 'Full Time', '1998-01-11', FALSE, 820000),
('Vishal Thakur', 'Male', 'HR', '1997-04-26', TRUE, 780000),
('Riya Sen', 'Female', 'Intern', '2003-09-19', FALSE, 240000),
('Manish Yadav', 'Male', 'Product Manager', '1994-11-07', TRUE, 1700000),
('Shweta Bansal', 'Female', 'Sales', '1999-02-13', FALSE, 580000),
('Gaurav Mishra', 'Male', 'Full Time', '1996-08-21', TRUE, 880000),
('Kavita Singh', 'Female', 'HR', '1998-05-04', TRUE, 720000),
('Nikhil Agarwal', 'Male', 'Intern', '2004-10-28', FALSE, 210000),
('Tara Devi', 'Female', 'Product Manager', '1995-03-16', FALSE, 1550000),
('Suresh Babu', 'Male', 'Sales', '1997-12-09', TRUE, 620000),
('Radha Krishnan', 'Female', 'Full Time', '1999-06-24', TRUE, 860000),
('Prakash Jain', 'Male', 'HR', '1996-01-31', FALSE, 740000),
('Sunita Rani', 'Female', 'Intern', '2003-04-14', FALSE, 230000),
('Deepak Verma', 'Male', 'Sales', '1998-09-27', TRUE, 590000);
select * from employee 

UPDATE employee SET Phone = '+918220579888' WHERE Employee_Id = 1;
UPDATE employee SET Phone = '+918770272918' WHERE Employee_Id = 2;
UPDATE employee SET Phone = '+919349384543' WHERE Employee_Id = 3;
UPDATE employee SET Phone = '+917555312760' WHERE Employee_Id = 4;
UPDATE employee SET Phone = '+919922771229' WHERE Employee_Id = 5;
UPDATE employee SET Phone = '+918341805818' WHERE Employee_Id = 6;
UPDATE employee SET Phone = '+916276024889' WHERE Employee_Id = 7;
UPDATE employee SET Phone = '+919080632251' WHERE Employee_Id = 8;
UPDATE employee SET Phone = '+919214625773' WHERE Employee_Id = 9;
UPDATE employee SET Phone = '+919795059850' WHERE Employee_Id = 10;
UPDATE employee SET Phone = '+916117402071' WHERE Employee_Id = 11;
UPDATE employee SET Phone = '+917736648989' WHERE Employee_Id = 12;
UPDATE employee SET Phone = '+917414382548' WHERE Employee_Id = 13;
UPDATE employee SET Phone = '+916545517801' WHERE Employee_Id = 14;
UPDATE employee SET Phone = '+919229442005' WHERE Employee_Id = 15;
UPDATE employee SET Phone = '+917506675881' WHERE Employee_Id = 16;
UPDATE employee SET Phone = '+916227565325' WHERE Employee_Id = 17;
UPDATE employee SET Phone = '+918633485527' WHERE Employee_Id = 18;
UPDATE employee SET Phone = '+917965893939' WHERE Employee_Id = 19;
UPDATE employee SET Phone = '+916872560849' WHERE Employee_Id = 20;
UPDATE employee SET Phone = '+916278941345' WHERE Employee_Id = 21;
UPDATE employee SET Phone = '+917934465664' WHERE Employee_Id = 22;
UPDATE employee SET Phone = '+916951698834' WHERE Employee_Id = 23;
UPDATE employee SET Phone = '+918662857794' WHERE Employee_Id = 24;
UPDATE employee SET Phone = '+918539822046' WHERE Employee_Id = 25;
UPDATE employee SET Phone = '+916723134167' WHERE Employee_Id = 26;
UPDATE employee SET Phone = '+918966329470' WHERE Employee_Id = 27;
UPDATE employee SET Phone = '+917896137642' WHERE Employee_Id = 28;
UPDATE employee SET Phone = '+916025148002' WHERE Employee_Id = 29;
UPDATE employee SET Phone = '+917038259631' WHERE Employee_Id = 30;
select * from employee 
