/*5.  Write a query that returns a list of products that are not sold yet
*/

SELECT Production.Products.productid,productname
FROM Sales.OrderDetails 
RIGHT JOIN Production.Products
ON Sales.OrderDetails.productid = Production.Products.productid
WHERE Sales.OrderDetails.productid IS NULL