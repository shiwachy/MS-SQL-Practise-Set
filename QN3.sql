/*3.  Write a query that returns the list of products with their categories
*/


select productid,productname,categoryname,description
from Production.Products
left join Production.Categories
on Production.Products.categoryid = Production.Categories.categoryid