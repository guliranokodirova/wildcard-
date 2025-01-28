
                        ---WILCARD---
						-----CUSTOMER TABLE----


SELECT TOP (1000) [salesman_id]
      ,[customer_id]
      ,[cust_name]
      ,[city]
      ,[grade]
  FROM [W3Resource].[Inventory].[Customer]

  ---From the following table, write a SQL query to retrieve the details of all customers whose ID belongs to any
  ---of the values 3007, 3008 or 3009. Return customer_id, cust_name, city, grade, and salesman_id

  select * from [W3Resource].[Inventory].[Customer]
  where customer_id in (3007,3008,3009)

  ---From the following table, write a SQL query to retrieve the details of the customers whose names
  ---begins with the letter 'B'. Return customer_id, cust_name, city, grade, salesman_id.. 
  9) select * FROM [W3Resource].[Inventory].[Customer]
  where cust_name like 'B%'

  ---From the following table, write a SQL query to find the details of the customers whose names end with
  --the letter 'n'. Return customer_id, cust_name, city, grade, salesman_id.

  10) select * FROM [W3Resource].[Inventory].[Customer]
  where cust_name like '%n'


  ---From the following table, write a SQL query to find all those customers who does
  ---not have any grade. Return customer_id, cust_name, city, grade, salesman_id.

  select * FROM [W3Resource].[Inventory].[Customer]
  where grade is null 


  ---From the following table, write a SQL query to locate all customers
  ---with a grade value. Return customer_id, cust_name,city, grade, salesman_id.
  select *  FROM [W3Resource].[Inventory].[Customer]
  where  grade is not  null

                              ----SALESMAN---


							  SELECT TOP (1000) [salesman_id]
      ,[name]
      ,[city]
      ,[commission]
  FROM [W3Resource].[Inventory].[Salesman]

  ---From the following table, write a SQL query to find the details of those salespeople
  --who come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city, commission.

 1/2) select * from [W3Resource].[Inventory].[Salesman]
  where city = 'Rome' or city = ' Paris'


  3)  select * from [W3Resource].[Inventory].[Salesman]
      where city not in ('Rome','Paris')

  ---From the following table, write a SQL query to find salespeople who receive commissions between 0.12 and 
  ---0.14 (begin and end values are included). Return salesman_id, name, city, and commission.  
5) select * from [W3Resource].[Inventory].[Salesman]
  where commission between 0.12 and 0.14

  7)
---From the following table, write a SQL query to retrieve the details of the salespeople whose names
---begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission.   

select * from [W3Resource].[Inventory].[Salesman]
where name between 'A' and 'L'

8) select * from [W3Resource].[Inventory].[Salesman]
where name not between 'A' and 'M'

---From the following table, write a SQL query to find the details of those salespeople whose names begin with 
---�N� and the fourth character is 'l'. Rests may be any character. Return salesman_id, name, city, commission. 

11)select * from [W3Resource].[Inventory].[Salesman]
where name like 'N__l%'


                         ---ORDERS---

						 SELECT TOP (1000) [salesman_id]
      ,[ord_no]
      ,[purch_amt]
      ,[ord_date]
      ,[customer_id]
  FROM [W3Resource].[Inventory].[Orders]

  ---From the following table, write a SQL query to select orders between 500 and 4000
  ---(begin and end values are included). Exclude orders amount 948.50 and 1983.43. Return
  ---ord_no, purch_amt, ord_date, customer_id, and salesman_id. 
  select * from [W3Resource].[Inventory].[Orders]
  where purch_amt between 500 and 4000 AND purch_amt not in (948.50, 1983.43)











