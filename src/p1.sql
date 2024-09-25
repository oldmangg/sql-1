CREATE TABLE employees
( id         NUMBER,
  name       VARCHAR(25),
  position   VARCHAR(25),
  department VARCHAR(25),
  salary     NUMERIC(10,2),  
primary key (id) 
);

CREATE TABLE sales
( order_id    NUMBER,
  customer_id NUMBER,
  product_id  NUMBER,
  quantity    NUMBER,
  sale_date   DATE, 
primary key (order_id) 
);

CREATE TABLE customers
(    
  customer_id   NUMBER,
  customer_name VARCHAR(25),
  city          VARCHAR(25),
primary key (customer_id) 
);

CREATE TABLE orders
(    
  order_id     NUMBER,
  order_date   DATE,
  customer_id  NUMBER,
primary key (order_id),
foreign key(customer_id) references customers(customer_id) 
);

CREATE TABLE inventories
(    
  product_id   NUMBER,
  product_name VARCHAR(25),
  quantity     NUMBER,
  price        NUMERIC(10,2),
primary key (product_id) 
);

