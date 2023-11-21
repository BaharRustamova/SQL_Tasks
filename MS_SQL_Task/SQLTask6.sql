create table employee(
EMP_IDNO int primary key,
EMP_FNAME varchar(30) not null,
EMP_LNAME varchar(30) not null,
EMP_DEPT int not null)

insert into employee values
(127323,'Michale','Robbin',57),
(526689,'Carlos','Snares',63),
(843795,'Enric','Dosio',57),
(328717,'Jhon','Snares',63),
(444527,'Joseph','Dosni',47),
(659831,'Zanifer','Emily',47),
(847674,'Kuleswar','Sitaraman',57),
(748681,'Henrey ','Gabriel',47),
(555935,'Alex','Manuel',57),
(539569,'George','Mardy',27),
(733843,'Mario','Saule',63),
(631548,'Alan','Snappy',27),
(839139,'Maria','Foster',57)



---Question 1. Write a SQL query to locate the details of customers with grade values above 100.

select * from customer where grade>100

---Question 2. Write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100.

select * from customer where city = 'New York' and grade>100

---Question 3. Write a SQL query to find customers who are from the city of New York or have a grade of over 100.

select * from customer where city = 'New York' or grade>100

---Question 4. Write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100.

select * from customer where city = 'New York' or grade !> 100

---Question 5. Write a SQL query to identify customers who do not belong to the city of 'New York' or have a grade value that exceeds 100.

select * from customer where city != 'New York' or grade > 100

---Question 6. Write a SQL query to find details of all orders excluding those with ord_date 
--equal to '2016-09-10' and salesman_id higher than 5005 or purch_amt greater than `1000.

select * from orders where ( (order_date!='2012-09-10' and salesman_id < 5005) or purch_amt < 1000)

---Question 7. Write a SQL query to find details of all orders with a purchase amount less than 200 or 
--exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009.

select * from orders where (purch_amt<200 or (order_date <='2016-02-10' and customer_id >3009))

---Question 8. Write a SQL query to find all orders that meet the following conditions. Exclude combinations
 --of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.

select * from orders where not ((order_date='2016-08-17' or customer_id>3005) and purch_amt<1000)

---Question 9 .Write a SQL query that displays order number, purchase amount, and the achieved and unachieved
 --percentage (%) for those orders that exceed 50% of the target value of 6000.

 select order_no,purch_amt,(purch_amt*100)/6000 as 'achieved',100-((purch_amt*100)/6000) as'unachieved' from orders where purch_amt>3000


 ---Question 10.Write a SQL query to find the details of all employees whose last name is ‘Dosni’ or ‘Mardy’ 
 select * from employee where EMP_LNAME='Dosni' or EMP_LNAME='Mardy'

 ---Question 11.Write a SQL query to find the employees who work at depart 47 or 63.

 select * from employee where EMP_DEPT='47' or EMP_DEPT='63'