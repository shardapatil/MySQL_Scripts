                  -- Assignment –5 and 6
 /* Relational and Logical Operators.
1) Write a query that will give you all orders for more than Rs. 1,000.
2) Write a query that will give you the names and cities of all salespeople in London 
with a commission above .10.
3) Write a query on the Customers table whose output will exclude all customers 
with a rating <= 100, unless they are located in Rome.
4) What will be the output from the following query?
 Select * from Orders 
 where (amt < 1000 OR 
 NOT (odate = ‘03-OCT-1990’ 
 AND cnum > 2003));
5) What will be the output of the following query?
 Select * from Orders 
 where NOT ((odate = ‘03-OCT-1990’ OR snum
 >1006) AND amt >= 1500);
6) What is a simpler way to write this query?
 Select snum, sname, city, comm From Salespeople
 where (comm > .12 OR comm <.14); */

-- ---------------------------------------------------------------------------
-- 1. Write a query that will give you all orders for more than Rs. 1,000.

	select * from orders where Amt>1000;
-- ----------------------------------------------------------------------------
/* 2.  Write a query that will give you the names and cities of all salespeople in London 
with a commission above .10 */

	select sname, city from salespeople where city= 'London'
	and comm>.10;
-- ------------------------------------------------------------------------------
/* 3. Write a query on the Customers table whose output will exclude all customers 
with a rating <= 100, unless they are located in Rome. */

	select * from customers where  rating <=100 or city= 'Rome' ;
-- ------------------------------------------------------------------------------
-- 4. What will be the output from the following query?

 Select * from Orders 
 where (amt < 1000 OR NOT (odate = ‘03-OCT-1990’ AND cnum > 2003)); 

 Select * from Orders
    ->  where (amt < 1000 OR NOT (odate = '1990-10-03' AND cnum > 2003));


-- ---------------------------------------------------------------------------------

 -- 5.What will be the output of the following query?
  Select * from Orders 
       where NOT ((odate = ‘03-OCT-1990’ OR snum>1006) AND amt >= 1500);

select * from orders where not ((odate ='1990-10-03' or snum>1006 )and amt >=1500);


-- ----------------------------------------------------------------------------------


-- 6. What is a simpler way to write this query?
            Select snum, sname, city, comm From Salespeople
           where (comm > .12 OR comm <.14);


	  Select snum, sname, city, comm From Salespeople
               where (comm > .12 OR comm <.14);

 -- -----------------------------------------------------------------------------------------


             -- Assignment –6
/* Using Special Operators in Conditions.
1) Write two different queries that would produce all orders taken on October 3rd or 
4
th, 1990.
2) Write a query that selects all of the customers serviced by Peel or Motika.
(Hint: the snum field relates the two tables to one another). 
3) Write a query that will produce all the customers whose names begin with a letter 
from ‘A’ to ‘G’.
4) Write a query that selects all customers whose names begin with the letter ‘C’.
5) Write a query that selects all orders except those with zeroes or NULLs in the amt 
field */







select * from orders where odate = '1990-10-03';

select * from orders where odate = '1990-10-04';

-- -------------------------------------------------------------------

select * from customers where snum =(select snum from salespeople where sname = 'Peel' or 'Motika');

-- ----------------------------------------------------------------------
-- select * from customers where cname like '[a-G]%';
select * from customers where cname regexp '^[a-G]';
-- -----------------------------------------------------------------------

select * from customers where cname regexp '^[c]';
-- ------------------------------------------------------------------------


select * from orders where not amt regexp '0' or null;





















