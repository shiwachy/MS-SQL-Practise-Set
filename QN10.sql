/*10. Write a query that returns country where maximum shipping is done
*/
declare @num int = 5
select top (@num) shipcountry,count(orderid) as shipFreq
from sales.Orders
group by shipcountry
order by shipFreq desc