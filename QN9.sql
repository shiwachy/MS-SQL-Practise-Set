/*9.  Write a query that returns a customer that has spent the most 
*/


select sales.Customers.custid,
	companyname,
	sum((unitprice*qty)) as spentRs
from sales.Customers
inner join sales.Orders
on sales.Customers.custid = sales.Orders.custid
inner join Sales.OrderDetails
on sales.Orders.orderid = Sales.OrderDetails.orderid
group by sales.Customers.custid,
		companyname
order by spentRs desc


