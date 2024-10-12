use userinfo;
Select* from user_details;
Select * from user_details where country='IND';
Select * from user_details where Cust_id<= 1006 AND user_address!= 'willigston raod, elizibath street avenue, bellingh';
Select * from user_details where Cust_id between 1004 and 1008 OR user_address= 'willigston raod, elizibath street avenue, bellingh';

Create table Purchase_order(Cust_id int, pur_date int, pur_month char(5), pur_unit int, base_rate float, total float);
select pur_unit*base_rate AS total from Purchase_order;
Select * from Purchase_order;

