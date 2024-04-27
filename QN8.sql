/*8.  Write a query that returns list of customers that have no orders placed.
*/

select sales.Customers.custid, companyname,contactname
from sales.Customers
left join sales.Orders
on sales.Customers.custid = sales.Orders.custid
where orderid is NULL