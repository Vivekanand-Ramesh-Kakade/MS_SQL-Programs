SELECT DISTINCT *
INTO duplicate_table
FROM Purchase_order
GROUP BY pur_date,Cust_id, pur_month, pur_unit, base_rate, total
HAVING COUNT(pur_date) > 1

DELETE Purchase_order
WHERE Cust_id
IN (SELECT Cust_id
FROM duplicate_table)

INSERT Purchase_order
SELECT *
FROM duplicate_table

Select * from duplicate_table
Select * from Purchase_order
Drop table duplicate_table
