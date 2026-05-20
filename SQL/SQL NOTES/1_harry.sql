DROP database IF EXISTS fruits;

create database fruits;
use fruits

CREATE TABLE userss (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE NOT NULL,
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from userss;
select id from userss;
