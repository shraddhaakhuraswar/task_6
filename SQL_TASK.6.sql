--How to alter in view table for rename column, delete column, insert column__

DROP VIEW CITY_REPORT	

CREATE OR REPLACE VIEW city_sales AS
select c.city ,sum(s.sales)as "city sales" ,sum(s.quantity) as "qty_sold" ,
	sum(s.profit)as profit_city,sum(s.discount)as "discount in city"
from sales as s
inner join customer as c
on c.customer_id=s.customer_id
group by city
order by sum(s.sales)



BEGIN;


	select * from customer
DROP VIEW my_view;
CREATE VIEW my_view AS
SELECT customer_id, customer_name, age
FROM customer;

COMMIT;

DROP VIEW my_view;

CREATE VIEW my_view AS
SELECT customer_id, customer_name AS full_name
FROM customer;

DROP VIEW my_view;

CREATE VIEW my_view AS
SELECT customer_id, customer_name AS full_name, age
FROM customer;