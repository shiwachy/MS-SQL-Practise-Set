/*2.  Write a query that returns orders with their orderid,orderdate, freight, shipaddress, 
	shipcity, shipcountry and totalValue of order.
*/

select
	Sales.Orders.orderid,
	orderdate,
	freight, 
	shipaddress,
	shipcity, 
	shipcountry,
	(unitprice*unitprice) as totalValue
from sales.Orders
INNER JOIN Sales.OrderDetails
ON Sales.Orders.orderid = Sales.OrderDetails.orderid
