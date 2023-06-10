                  -- Assignment –5
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































