insert into Inventory(product_id,product_name,product_price,product_quantity) values (1001,'Chips',10,20);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1002,'Cookies',20,15);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1003,'Water',15,15);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1004,'Coffee',50,8);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1005,'Tea',45,10);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1006,'Pen',5,25);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1007,'Pencil',8,25);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1008,'Labpad',20,20);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1009,'Soda',100,5);
insert into Inventory(product_id,product_name,product_price,product_quantity) values (1010,'Catberry',15,30);




insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2451,'Rahim','M',50000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2452,'Runa','F',25000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2453,'Sagar','M',70000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2454,'Nakib','M',50000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2455,'Mahmud','M',50000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2456,'Tahim','M',25000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2457,'Robiul','M',25000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2458,'Ridoy','M',25000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2459,'Tomal','M',25000);
insert into Employee(employee_id,employee_name,employee_gender,employee_salary) values (2460,'Priyanka','F',25000);





insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9001,'Sina','Bronze','Parulia');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9002,'Proloy','Gold','Teligati');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9003,'Turjo','Silver','Sakhipur');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9004,'Rinku','Diamond','Daualtpur');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9005,'Titumir','Bronze','Teligati');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9006,'Rashed','Bronze','Lapsa');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9007,'Opu','Bronze','Sonadanga');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9008,'Shanto','Silver','Fultola');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9009,'Raisul','Silver','Daulatpur');
insert into Customer(customer_id,customer_name,customer_membership,customer_address) values (9010,'Jibon','Gold','Daulatpur');





insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (1,9006,1004,2456,50,48,'bkash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (2,9008,1009,2460,100,95,'nagad');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (3,9004,1005,2454,45,38,'cash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (4,9008,1010,2458,15,15,'rocket');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (5,9010,1009,2454,100,90,'bkash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (6,9003,1003,2453,15,15,'upai');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (7,9007,1008,2456,20,20,'cash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (8,9004,1009,2451,100,85,'cash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (9,9001,1006,2456,5,5,'cash');
insert into orders(order_id,customer_id,product_id,employee_id,order_amount,order_net_amount,order_payment) values (10,9010,1004,2459,50,45,'bkash');





-- set pagesize-
	set pagesize 200;
--set linesize-	
	set linesize 100;
--Retrieve all records from the Customer table.
	SELECT * FROM Customer;
--Retrieve the product_name and product_quantity from the Inventory table where product_price is greater than 20.
	SELECT product_name, product_quantity FROM Inventory WHERE product_price > 20;
--Retrieve the customer_name and customer_membership from the Customer table where customer_address is 'Teligati'.
	SELECT customer_name, customer_membership FROM Customer WHERE customer_address = 'Teligati';
--Retrieve the order_id and order_payment from the Orders table where order_net_amount is between 40 and 60.
	SELECT order_id, order_payment FROM Orders WHERE order_net_amount BETWEEN 40 AND 60;
--Retrieve the product_name and product_quantity from the Inventory table sorted by product_quantity in descending order.
	SELECT product_name, product_quantity FROM Inventory ORDER BY product_quantity DESC;
--Count the number of records in the Inventory table.
	SELECT COUNT(*) FROM Inventory;
--Calculate the total product_quantity in the Inventory table.
	SELECT SUM(product_quantity) FROM Inventory;
--SELECT SUM(product_quantity) FROM Inventory;
	SELECT AVG(order_amount) FROM Orders;
--Calculate the maximum product_price in the Inventory table.
	SELECT MAX(product_price) FROM Inventory;
--SELECT MAX(Employee_salary) FROM Employee;
	SELECT MIN(employee_salary) FROM Employee;
--Retrieve the product names and their quantities from the Inventory table where the quantity is less than 10.
	SELECT product_name, product_quantity FROM Inventory WHERE product_quantity < 10;
--Retrieve the employee names and genders from the Employee table where the gender is 'F'.
	SELECT employee_name, employee_gender FROM Employee WHERE employee_gender = 'F';
--Retrieve the customer names and memberships from the Customer table where the membership is 'Gold' or 'Diamond'.
	SELECT customer_name, customer_membership FROM Customer WHERE customer_membership IN ('Gold', 'Diamond');
--Retrieve the order IDs and payment methods from the Orders table where the payment method is not 'cash'.
	SELECT order_id, order_payment FROM Orders WHERE order_payment <> 'cash';
--Retrieve the employee names and salaries from the Employee table where the salary is greater than or equal to 40000.
	SELECT employee_name, employee_salary FROM Employee WHERE employee_salary >= 40000;
--Retrieve the customer names and addresses from the Customer table where the address is not 'Teligati'.
	SELECT customer_name, customer_address FROM Customer WHERE customer_address <> 'Teligati';
--Retrieve the order IDs, amounts, and payment methods from the Orders table where the net amount is greater than 50 and the payment method is 'bkash'.
	SELECT order_id, order_amount, order_payment FROM Orders WHERE order_net_amount > 50 AND order_payment = 'bkash';
--Retrieve the product names and quantities from the Inventory table where the quantity is not equal to 0.
	SELECT product_name, product_quantity FROM Inventory WHERE product_quantity != 0;
--Retrieve the order IDs, amounts, and payment methods from the Orders table where the net amount is less than or equal to 50 or the payment method is 'cash'.
	SELECT order_id, order_amount, order_payment FROM Orders WHERE order_net_amount <= 50 OR order_payment = 'cash';
--Retrieve the product names and prices from the Inventory table where the price is not between 10 and 30.
	SELECT product_name, product_price FROM Inventory WHERE product_price NOT BETWEEN 10 AND 30;
--Retrieve the customer names and addresses from the Customer table where the address is 'Teligati' or 'Sakhipur'.
	SELECT customer_name, customer_address FROM Customer WHERE customer_address IN ('Teligati', 'Sakhipur');
--Retrieve the order IDs, amounts, and payment methods from the Orders table where the net amount is not greater than 50 and the payment method is not 'bkash'.
	SELECT order_id, order_amount, order_payment FROM Orders WHERE order_net_amount <= 50 AND order_payment != 'bkash';
--Retrieve the product names and quantities from the Inventory table where the quantity is greater than 10 and the price is less than 50.
	SELECT product_name, product_quantity FROM Inventory WHERE product_quantity > 10 AND product_price < 50;
--Retrieve the customer names and memberships from the Customer table where the membership is not 'Gold' or 'Silver'.
	SELECT customer_name, customer_membership FROM Customer WHERE customer_membership NOT IN ('Gold', 'Silver');

--UNION:

--Retrieve the unique customer names from the Customer table and employee names from the Employee table.
	SELECT customer_name FROM Customer
UNION
SELECT employee_name FROM Employee;

--join:
--Retrieve the order details along with customer and product information using a join:
SELECT o.order_id, c.customer_name, i.product_name, o.order_amount
FROM Orders o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN Inventory i ON o.product_id = i.product_id;


--Nested subquery:

--Retrieve the customer names who have placed orders for products with a price greater than the average product price.
	SELECT customer_name
FROM Customer
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE product_id IN (
        SELECT product_id
        FROM Inventory
        WHERE product_price > (
            SELECT AVG(product_price)
            FROM Inventory
        )
    )
);
--String operation

--Retrieve the customer names whose names start with the letter 'A':
	SELECT customer_name
FROM Customer
WHERE customer_name LIKE 'A%';

--VIEW:

--Create a view to retrieve the customer names and their corresponding order amounts:
	CREATE VIEW CustomerOrders AS
SELECT Customer.customer_name, Orders.order_amount
FROM Customer
JOIN Orders ON Customer.customer_id = Orders.customer_id;

--AND:

--Retrieve the customer names and IDs for customers with a Bronze membership and residing in Teligati.
	SELECT customer_name, customer_id
FROM Customer
WHERE customer_membership = 'Bronze' AND customer_address = 'Teligati';

--SOME:

--Retrieve the product names and quantities for products where the quantity is greater than some of the available quantities in the inventory.
	SELECT product_name, product_quantity
FROM Inventory
WHERE product_quantity > SOME (SELECT product_quantity FROM Inventory);


