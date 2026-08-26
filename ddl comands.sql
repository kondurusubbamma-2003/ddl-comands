create database ecommercedb;
use ecommercedb;
create table products(product_id int, product_name varchar(20), product_category varchar(20));
insert into products values(101,'ponds','buty'),(102,'lotion', 'skin'),(103,'sunscreen','face');
create table customers(customer_id int, customer_name varchar(20), customer_orders varchar(20));
alter table customers modify customer_orders int;
insert into customers values(1, 'subbu', 2),(2,'akki', 3),(3,'janu', 4); 
create table orders(order_id int, order_name varchar(20), order_del_date int);
insert into orders values(10,'kurti',24),(20,'two peas set', 27),(30,'coord set',30);
select *from products;
alter table orders add column customer_id int;
select * from orders;
update orders set customer_id=1 where order_id=10;
update orders set customer_id=2 where order_id=20;
update orders set customer_id=3 where order_id=30;
ALTER TABLE orders ADD PRIMARY KEY (order_id);
select *from orders;
ALTER TABLE products ADD PRIMARY KEY (product_id);
use ecommercedb;

alter table orders
add constraint fk_customer
foreign key (customer_id)
references customers(customer_id);

create index idx_product_name
on products(product_name);

create index idx_product_category
on products(product_category);

create view customerorders as
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_name,
    o.order_del_date
from customers c
inner join orders o
on c.customer_id = o.customer_id;

select * from customerorders;
drop table products;

create table products (
    product_id int primary key,
    product_name varchar(20),
    product_category varchar(20),
    product_description varchar(100)
);

alter table customers
add customer_address varchar(100);

select * from products;
select * from customers;
select * from customerorders;





