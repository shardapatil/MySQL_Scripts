mysql> use sunbeam;
Database changed
mysql> select * from orders;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1001 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> select count(onum) from orders where odate = '1990-10-03';
+-------------+
| count(onum) |
+-------------+
|           5 |
+-------------+
1 row in set (0.00 sec)

mysql> select * from customers;
+------+----------+----------+--------+------+
| Cnum | Cname    | city     | Rating | Snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.01 sec)

mysql> select count(city) from customers where city != Null;
+-------------+
| count(city) |
+-------------+
|           0 |
+-------------+
1 row in set (0.00 sec)

mysql> select distinct min(amt) from orders;
+----------+
| min(amt) |
+----------+
|    18.69 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT count(onum) total_order
    -> FROM orders
    -> WHERE odate LIKE '03-OCT-%';
+-------------+
| total_order |
+-------------+
|           0 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT count(cname) empty_city
    -> FROM customers
    -> WHERE cname IS NOT NULL;
+------------+
| empty_city |
+------------+
|          7 |
+------------+
1 row in set (0.00 sec)

mysql> select count(cname) from customers where city != Null;
+--------------+
| count(cname) |
+--------------+
|            0 |
+--------------+
1 row in set (0.00 sec)

mysql> select count(cname) from customers where cname != Null;
+--------------+
| count(cname) |
+--------------+
|            0 |
+--------------+
1 row in set (0.00 sec)

mysql> select count(cname) from customers where cname is not null;
+--------------+
| count(cname) |
+--------------+
|            7 |
+--------------+
1 row in set (0.00 sec)

mysql> select count(cname) from customers where (cname != Null);
+--------------+
| count(cname) |
+--------------+
|            0 |
+--------------+
1 row in set (0.00 sec)

mysql> select count(city) from customers where city is not Null;
+-------------+
| count(city) |
+-------------+
|           7 |
+-------------+
1 row in set (0.00 sec)

mysql> select distinct min(amt) from orders;
+----------+
| min(amt) |
+----------+
|    18.69 |
+----------+
1 row in set (0.00 sec)

mysql> select distinct min(amt) from orders group by cnum;
+----------+
| min(amt) |
+----------+
|    18.69 |
|    75.75 |
|   767.19 |
|  1713.23 |
|  1900.10 |
|  4723.00 |
|  5160.45 |
+----------+
7 rows in set (0.01 sec)

mysql> select distinct min(amt) as 'Smallest Num' from orders group by cnum;
+--------------+
| Smallest Num |
+--------------+
|        18.69 |
|        75.75 |
|       767.19 |
|      1713.23 |
|      1900.10 |
|      4723.00 |
|      5160.45 |
+--------------+
7 rows in set (0.00 sec)

mysql> select * from customers;
+------+----------+----------+--------+------+
| Cnum | Cname    | city     | Rating | Snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)

mysql> select city from customers where rating =(select max(rating) from customers); 
+----------+
| city     |
+----------+
| Berlin   |
| San Jose |
+----------+
2 rows in set (0.00 sec)

mysql> select city,rating from customers where rating =(select max(rating) from customers); 
+----------+--------+
| city     | rating |
+----------+--------+
| Berlin   |    300 |
| San Jose |    300 |
+----------+--------+
2 rows in set (0.00 sec)

mysql> select cname from customers where cname like 'G%';
+----------+
| cname    |
+----------+
| Giovanni |
| Grass    |
+----------+
2 rows in set (0.00 sec)

mysql> select cname from customers where cname like 'G%' order by cname;
+----------+
| cname    |
+----------+
| Giovanni |
| Grass    |
+----------+
2 rows in set (0.00 sec)

mysql> select count(odate) as 'sales perople registered on' ,odate
    -> from orders group by odate;
+-----------------------------+------------+
| sales perople registered on | odate      |
+-----------------------------+------------+
|                           5 | 1990-10-03 |
|                           2 | 1990-10-04 |
|                           1 | 1990-10-05 |
|                           2 | 1990-10-06 |
+-----------------------------+------------+
4 rows in set (0.00 sec)

mysql> select count(odate) as 'sales perople registered on' ,odate
    -> from orders group by odate;
+-----------------------------+------------+
| sales perople registered on | odate      |
+-----------------------------+------------+
|                           5 | 1990-10-03 |
|                           2 | 1990-10-04 |
|                           1 | 1990-10-05 |
|                           2 | 1990-10-06 |
+-----------------------------+------------+
4 rows in set (0.00 sec)

mysql> select count(odate) as 'sales perople registered on' ,odate
    -> from orders group by odate;
+-----------------------------+------------+
| sales perople registered on | odate      |
+-----------------------------+------------+
|                           5 | 1990-10-03 |
|                           2 | 1990-10-04 |
|                           1 | 1990-10-05 |
|                           2 | 1990-10-06 |
+-----------------------------+------------+
4 rows in set (0.00 sec)

mysql> select count(odate) as 'sales perople registered on' ,odate
    -> from orders group by odate;
+-----------------------------+------------+
| sales perople registered on | odate      |
+-----------------------------+------------+
|                           5 | 1990-10-03 |
|                           2 | 1990-10-04 |
|                           1 | 1990-10-05 |
|                           2 | 1990-10-06 |
+-----------------------------+------------+
4 rows in set (0.00 sec)

