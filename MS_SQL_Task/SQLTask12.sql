---Question 1. SQL statement to generate a report with customer name, city, order number, order date, order 
--amount, salesperson name, and commission to determine if any of the existing customers have 
--not placed orders or if they have placed orders through their salesman or by themselves.select customer.customer_name,customer.city,orders.order_no,orders.order_date,orders.purch_amt,salesman.name,salesman.comissionfrom customerleft outer join orderson orders.customer_id=customer.customer_idleft outer join salesmanonsalesman.salesman_id=customer.salesman_id---Question 2. Write a SQL statement to generate a list in ascending order of salespersons who work either 
--for one or more customers or have not yet joined any of the customers.

select salesman.name, count(customer.customer_id) as ' number of customer' from customer
right outer join salesman
on
customer.salesman_id=salesman.salesman_id
group by salesman.name
order by ' number of customer' asc

---Question 3. Write a SQL query to list all salespersons along with customer name, city, grade, order
--number, date, and amount. 

select salesman.name,
customer.customer_name,
customer.city,
customer.grade,
orders.order_no,
orders.order_date,
orders.purch_amt
from salesman
left outer join customer
on
salesman.salesman_id=customer.salesman_id
left outer join orders
on
orders.salesman_id=salesman.salesman_id

---Question 4. Write a SQL statement to make a list for the salesmen who either work for one or more 
--customers or yet to join any of the customer. The customer may have placed, either one or more 
--orders on or above order amount 2000 and must have a grade, or he may not have placed any 
--order to the associated supplier.select salesman.name,customer.customer_name,orders.customer_id from salesmanleft outer join customeronsalesman.salesman_id=customer.salesman_idleft outer join ordersonorders.customer_id=customer.customer_idwhere orders.purch_amt>2000 and customer.grade is not null---Question 5. For those customers from the existing list who put one or more orders, or which orders have 
--been placed by the customer who is not on the list, create a report containing the customer name, 
--city, order number, order date, and purchase amount.select customer.customer_name,customer.city,orders.order_no,orders.order_date,orders.purch_amtfrom orders right join customeronorders.customer_id=customer.customer_id---Question 6. Write a SQL statement to generate a report with the customer name, city, order no. order date, 
--purchase amount for only those customers on the list who must have a grade and placed one or more orders 
--or which order(s) have been placed by the customer who neither is on the list nor has a grade.

select customer.customer_name,
customer.city,
orders.order_no,
orders.order_date,
orders.purch_amt from customer
full outer join orders
on
orders.customer_id=customer.customer_id

---Question 7. Write a SQL query to combine each row of the salesman table with each row of the customer table.

select salesman.name,customer.customer_name from salesman cross join customer 

---Question 8. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each 
--salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.select salesman.name,customer.customer_name,salesman.city from salesmancross join customerwhere salesman.city=customer.city---Question 9. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. 
--each salesperson will appear for every customer and vice versa for those salesmen who belong to 
--a city and customers who require a grade.

select salesman.name,customer.customer_name,salesman.city from salesmancross join customerwhere salesman.city=customer.city and customer.grade is not null

---Question 10. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each 
--salesman will appear for all customers and vice versa for those salesmen who must belong to a 
--city which is not the same as his customer and the customers should have their own grade.

select salesman.name,customer.customer_name from salesmancross join customerwhere salesman.city!=customer.city and customer.grade is not null





