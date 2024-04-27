/*6.  Write a query that returns list of products with their supplier details
*/

select productid,
		productname,
		Production.Suppliers.supplierid,
		companyname,
		contactname,
		contacttitle,
		address,
		city,country,
		phone,fax
from  Production.Products
left join Production.Suppliers
on Production.Products.supplierid = Production.Suppliers.supplierid
