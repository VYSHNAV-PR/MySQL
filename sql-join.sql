create database sql_joins;
use sql_joins;
create table customers(
cust_id int primary key,
name varchar(50),
city varchar(50)
);
insert into customers value
(1,'Alan','Malappuram'),
(2,'Vyshnav','Malappuram'),
(3,'Hari','Palakkad'),
(4,'Karthik','Kochi');

create table orders(
order_id int primary key,
cust_id int,
product varchar(50),
quantity int
);

insert into orders value
(101,1,'Laptop',1),
(102,1,'Phone',2),
(103,2,'Laptop',1),
(104,3,'Camera',1),
(105,3,'Tablet',1),
(106,5,'Camera',1);

select * from orders;

-- innerjoin
select customers.name,customers.city,orders.product,orders.quantity
from customers
inner join orders
on customers.cust_id=orders.cust_id;

-- leftjoin
select customers.name,customers.city,orders.product,orders.quantity
from customers
left join orders
on customers.cust_id=orders.cust_id;

-- rightjoin
select customers.name,customers.city,orders.product,orders.quantity
from customers
right join orders
on customers.cust_id=orders.cust_id;

-- fulljoin
select customers.name,customers.city,orders.product,orders.quantity
from customers
left join orders
on customers.cust_id=orders.cust_id
union
select customers.name,customers.city,orders.product,orders.quantity
from customers
right join orders
on customers.cust_id=orders.cust_id;

-- crossjoin
select customers.name,orders.product
from customers
cross join orders;
