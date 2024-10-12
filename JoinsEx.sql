-- Purchase_order table selected and viewed
select * from Purchase_order;

--data added to Purchase_order table
insert into Purchase_order
Values (1001, 31, 'JAN', 36, 2.06, 36*2.06),
(1005, 05, 'FEB', 96, 26.56, 96*26.56),
(1002, 23, 'FEB', 12, 126.00, 12*126.00),
(1001, 26, 'FEB', 104, 3.05, 104*3.05);

-- user_details table selected and viewed
SELECT * FROM user_details;

--inner join of user_details with Purchase_order table
SELECT user_details.Cust_id, First_name, Last_name, country from user_details
Inner join Purchase_order ON user_details.Cust_id= Purchase_order.Cust_id;

--inner join of Purchase_order with user_details table
SELECT Purchase_order.Cust_id, First_name,Last_name, country from Purchase_order
Inner join user_details ON Purchase_order.Cust_id= user_details.Cust_id;

--LEFT OUTER join of user_details with Purchase_order table
SELECT user_details.Cust_id, First_name, Last_name, country from user_details
left join Purchase_order ON user_details.Cust_id= Purchase_order.Cust_id;

--LEFT OUTER join of Purchase_order with user_details table
SELECT Purchase_order.Cust_id, First_name,Last_name, country from Purchase_order
left join user_details ON Purchase_order.Cust_id= user_details.Cust_id;

--RIGHT OUTER join of user_details with Purchase_order table
SELECT user_details.Cust_id, First_name, Last_name, country from user_details
right join Purchase_order ON user_details.Cust_id= Purchase_order.Cust_id;

--RIGHT OUTER join of Purchase_order with user_details table
SELECT Purchase_order.Cust_id, First_name,Last_name, country from Purchase_order
right join user_details ON Purchase_order.Cust_id= user_details.Cust_id;

--FULL OUTER join of user_details with Purchase_order table
SELECT user_details.Cust_id, First_name, Last_name, country from user_details
full outer join Purchase_order ON user_details.Cust_id= Purchase_order.Cust_id;

--FULL OUTER join of Purchase_order with user_details table
SELECT Purchase_order.Cust_id, First_name,Last_name, country from Purchase_order
full outer join user_details ON Purchase_order.Cust_id= user_details.Cust_id;

--SELF join of user_details with Purchase_order table
SELECT Purchase_order.Cust_id, First_name,Last_name, country from Purchase_order, user_details
Where Purchase_order.Cust_id= user_details.Cust_id;

--SELF join of Purchase_order with user_details table
SELECT user_details.Cust_id, First_name,Last_name, country,total, base_rate, pur_unit from user_details, Purchase_order 
Where user_details.Cust_id= Purchase_order.Cust_id ;
