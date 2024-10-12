Create Database userinfo;
Use userinfo;
SELECT * FROM sys.databases;  
GO  
Create table user_details(Cust_id int primary key not null, First_name varchar(50) not null, Last_name varchar(50) not null, Contact_number int not null, email_id varchar(50) not null, user_address varchar(50) not null,country char(3));
Create table login_info as(Select Cust_id, email_id, First_name from user_details);
SELECT * FROM sys.tables;  
GO 

Insert into user_details values(1001,'aparajita', 'nakula', 91234567,'aparajita.nukula@testmail.com', '23 2nd cross sardar road, akula', 'IND');
Go

Select * from user_details;
Drop table user_details;