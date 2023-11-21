---Question 1. Write a SQL query to find the salespeople and customers who live in the 
--same city.Return customer name, salesperson name and salesperson city.

select customer.customer_name,salesman.name,salesman.city from customer 
inner join salesman
on customer.city=salesman.city

---Question 2. Write a SQL query to locate all the customers and the salesperson who 
--works for them. Return customer name, and salesperson name.

select customer.customer_name,salesman.name from customer 
inner join salesman
on 
customer.salesman_id=salesman.salesman_id

--Question 3. Write a SQL query to find those salespeople who generated orders for their 
--customers but are not located in the same city. Return ord_no, cust_name, 
--customer_id (orders table), salesman_id (orders table).

select  
orders.order_no,
customer.customer_name,
orders.customer_id, 
orders.salesman_id
from orders
inner join customer
on orders.customer_id=customer.customer_id
join salesman
on customer.salesman_id=salesman.salesman_id
where customer.city!=salesman.city

---Question 4. Write a SQL query to find those customers where each customer has a grade 
--and is served by a salesperson who belongs to a city. Return cust_name as 
--"Customer", grade as "Grade".

select customer.customer_name as 'Customer' , customer.grade as 'Grade',salesman.city from customer 
inner join salesman
on
salesman.salesman_id=customer.salesman_id
where customer.grade is not null and salesman.city is not null

---Question 5. Write a SQL query to find those customers who are served by a salesperson 
--and the salesperson earns commission in the range of 12% to 14% (Begin and end values are included.). 
--Return cust_name AS "Customer", city AS "City".

select customer.customer_name as'Customer',customer.city from customer
inner join salesman
on salesman.salesman_id=customer.salesman_id
where salesman.comission between 0.12 and 0.14

---Question 6. Write a SQL query to find all orders executed by the salesperson and ordered by the customer 
--whose grade is greater than or equal to 200. Compute purch_amt*commission as “Commission”. 
--Return customer name, commission as “Commission%” and Commission

select customer.customer_name,(orders.purch_amt*salesman.comission) as 'commission',comission from orders
inner join customer
on
customer.customer_id=orders.customer_id
inner join salesman
on 
customer.salesman_id=salesman.salesman_id
where customer.grade>=200


