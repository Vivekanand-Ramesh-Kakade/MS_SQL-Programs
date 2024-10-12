Select * from user_details
Select * from Purchase_order

Select Cust_id, First_name from user_details 
Where country='IND';

Select Cust_id, First_name, country from user_details 
Where country!='IND';

Select SUM(Cust_id), MIN(Cust_id), First_name from user_details 
Where country='IND'
Group By First_name
HAVING MIN(Cust_id)>1000 AND sum(Cust_id)> 1000
Order by First_name;