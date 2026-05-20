-- sum of all fees 
SELECT SUM(fees) AS total_payroll FROM student ;

-- avegage of all the fees  
SELECT AVG(fees) AS avg_salary FROM student;

-- group according to the gender category  
SELECT gender, AVG(fees) AS avg_salary
FROM student
GROUP BY gender;

-- create the column of the name_length contain the lenght of the column  
SELECT name, LENGTH(name) AS name_length FROM student;