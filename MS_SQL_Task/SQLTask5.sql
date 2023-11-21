create table item_mast(
pro_id int primary key,
pro_name varchar(30) not null,
pro_price float not null,
pro_com int not null)insert into item_mast values
(101,'Mother Board',3200.00,15),
(102,'Key Board',450.00,16),
(103,'ZIP drive',250.00,14),
(104,'Speaker',550.00,16),
(105,'Monitor',5000.00,11),
(106,'DVD drive',900.00,12),
(107,'CD drive',800.00,12),
(108,'Printer',2600.00,13),
(109,'Refill cartridge',350.00,13),
(110,'Mouse',250.00,12)


---Question 1. Find the name and price of the cheapest item(s).
declare @minimum varchar(10)
set @minimum=(select min(pro_price) from item_mast)
select pro_name,@minimum as 'cheapest item' from item_mast
where pro_price=@minimum

---Question 2. Display all the customers, who are either belongs to the city New York or not 
--had a grade above 100. 

select customer_name,city,grade from customer where(city='New York' and grade>100)

---Question 3. Find those salesmen with all information who gets the commission within a 
--range of 0.12 and 0.14.

select name,comission from salesman where comission between 0.12 and 0.14 

---Question 4. Find all those customers with all information whose names are ending with the 
--letter 'n'
select * from customer where customer_name like '%n'

---Question 5. Find those salesmen with all information whose name containing the 1st 
--character is 'N' and the 4th character is 'l' and rests may be any character.
select * from salesman where name like 'N%%l%'

---Question 6. Find that customer with all information who does not get any grade except 
--NULL.select * from customer where grade=Null
---Question 7. Find the total purchase amount of all orders.

select sum(purch_amt) as 'total purchase' from orders 

---Question 8. Find the number of salesman currently listing for all of their customers.

select count(distinct(salesman_id)) from customer

---Question 9. Find the highest grade for each of the cities of the customers.
select city,max(grade) as 'highest grade' from customer group by city

---Question 10. Find the highest purchase amount ordered by the each customer with their ID 
--and highest purchase amount.
declare @high varchar(10)
set @high=(select max(purch_amt) from orders)
select customer_id,@high as 'highest purchase' from orders 
where purch_amt=@high
group by customer_id

---Question 11. Find the highest purchase amount ordered by the each customer on a particular 
--date with their ID, order date and highest purchase amount.

select 
customer_id,order_date,max(purch_amt) 
from orders
group by customer_id,order_date

---Question 12. Find the highest purchase amount on a date '2012-08-17' for each salesman 
--with their ID.
select salesman_id,max(purch_amt) as 'highest purchase' from orders 
where order_date='2016-08-17'
group by salesman_id

---Question 13. Find the highest purchase amount with their customer ID and order date, for 
--only those customers who have the highest purchase amount in a day is more than 
--2000.

select customer_id,  order_date, max(purch_amt) as 'enyukseyi' from orders  
group by customer_id,order_date
having max(purch_amt)>2000

---Question 14. Write a SQL statement that counts all orders for a date August 17th, 2012

select count(customer_id) from orders where order_date='2016-08-17'














