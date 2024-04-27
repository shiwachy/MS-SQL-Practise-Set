/*1.  Write a query that returns contactName, companyName, address, city, orderId, orderdate 
	(meaning I want a list of customers with their orders)
*/

SELECT contactname,companyname,address,city,orderid,orderdate
FROM sales.Customers
INNER JOIN sales.Orders
ON sales.Customers.custid = sales.Orders.custid