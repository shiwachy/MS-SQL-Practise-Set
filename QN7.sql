/*7.  Write a query that returns list of customers with their total 
	number of orders and total quantities
*/

select companyname, 
	count(sales.Orders.orderid) as ordrCount,
	sum(Sales.OrderDetails.qty) as totalQty
from Sales.Customers
inner join sales.Orders
on Sales.Customers.custid = sales.Orders.custid
inner join Sales.OrderDetails
on sales.Orders.orderid = Sales.OrderDetails.orderid
group by companyname



