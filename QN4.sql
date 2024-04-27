/*4.  Write a query that returns the list of product that has maximum sale
*/

declare @num int = 1000; --change value of num to get top sold products

(SELECT top (@num) productname,qty 
FROM Sales.OrderDetails
inner join Production.Products
on Sales.OrderDetails.productid = Production.Products.productid)
order by qty desc

