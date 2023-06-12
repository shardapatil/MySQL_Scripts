select count(onum) from orders where odate = '1990-10-03';

SELECT count(onum) total_order
FROM orders
WHERE odate LIKE '03-OCT-%';
--------------------------------------------------------------------------
select count(city) from customers where city is not Null;


SELECT count(cname) empty_city
FROM customers
WHERE cname IS NOT NULL;
-------------------------------------------------------------------------
select distinct  min(amt) from orders;


SELECT min(amt) ) as smallest order,cnum
FROM orders
GROUP BY cnum;
-------------------------------------------------------------------------
select cname from customers where cname like 'G%' order by cname;

-------------------------------------------------------------------------
select city from customers where rating =(select max(rating) from customer); 
-------------------------------------------------------------------------
select count(odate) as 'sales perople registered on' ,odate
from orders group by odate;

------------------------------------------------------------------------
