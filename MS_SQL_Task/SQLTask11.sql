---Question 1. Write a SQL query to find the salesperson and customer who reside in the same city. Return 
--Salesman, cust_name and city.

select salesman.name,customer.customer_name,salesman.city from customer
inner join salesman
on
salesman.city=customer.city

---Question 2. Write a SQL query to find those orders where the order amount exists between 500 and 2000. 
--Return ord_no, purch_amt, cust_name, city.

select orders.order_no,orders.purch_amt,customer.customer_name,customer.city from customer
inner join orders
on
orders.customer_id=customer.customer_id
where orders.purch_amt between 500 and 2000

---Question 3. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return 
--Customer Name, city, Salesman, commission.

select salesman.name,customer.city,customer.customer_name,salesman.comission from customer
inner join salesman
on
salesman.salesman_id=customer.salesman_id

---Question 4. Write a SQL query to find salespeople who received commissions of more than 12 percent 
--from the company. Return Customer Name, customer city, Salesman, commission.

select customer.customer_name,customer.city,salesman.name,salesman.comission from customer
inner join salesman
on 
salesman.salesman_id=customer.salesman_id
where salesman.comission > 0.12

---Question 5. Write a SQL query to locate those salespeople who do not live in the same city where their 
--customers live and have received a commission of more than 12% from the company. 
--Return Customer Name, customer city, Salesman, salesman city, commission.

select customer.customer_name,customer.city,salesman.name,salesman.city,salesman.comission from customer
inner join salesman
on
salesman.salesman_id=customer.salesman_id
where salesman.city!=customer.city and salesman.comission>0.12

select*from customer
select*from salesman

---Question 6. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, 
--Customer Name, grade, Salesman, commission.

select orders.order_no,
orders.order_date,
orders.purch_amt,
customer.customer_name,
customer.grade,
salesman.name,
salesman.comission
from orders
inner join customer
on customer.customer_id=orders.customer_id
inner join salesman
on customer.salesman_id=salesman.salesman_id

---Question 7.Write a SQL statement to join the tables salesman, customer and orders so that the same 
--column of each table appears and only the relational rows are returned.

select customer.salesman_id from orders
inner join customer
on 
orders.salesman_id=customer.salesman_id
inner join salesman
on
customer.salesman_id=salesman.salesman_id

---Question 8. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
--The results should be sorted by ascending customer_id.

select customer.customer_name,customer.customer_name,customer.grade,salesman.name,salesman.city from customer
inner join salesman
on
salesman.salesman_id=customer.salesman_id
order by customer_id asc

---Question 9. Write a SQL query to find those customers with a grade less than 300. Return cust_name, 
--customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

select customer.customer_name,customer.city,customer.grade,salesman.name,salesman.city from customer
inner join salesman
on 
customer.salesman_id=salesman.salesman_id
where customer.grade<300
order by customer.customer_id asc

---Question 10. Write a SQL statement to make a report with customer name, city, order number, order date, 
--and order amount in ascending order according to the order date to determine whether any of the 
--existing customers have placed an order or not.

select customer.customer_name,customer.city,orders.order_no,orders.order_date,orders.purch_amt from customer
inner join orders
on
orders.customer_id=customer.customer_id
order by orders.order_date asc



