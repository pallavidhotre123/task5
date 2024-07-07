 --INNER JOIN--
select * from customer_fact
select * from customer_region 

select  r.postal_code, r.city from customer_fact as f
inner join customer_region as r
on f.postal_code = r.postal_code
group by r.postal_code, r.city
limit 50
offset 50


  --LEFT JOIN--
SELECT * FROM product
select * from sales
	
select p.product_name, s.order_id from product as p
left join sales as s
on p.product_id = s.product_id
group by p.product_name, s.order_id
limit 50
offset 50

	
   --RIGHT JOIN--
select * from customer
select * from customer_region


select c.segment, c.country, c.state, c.first_name, c.region, r.city, r.state, r.region from customer as c
right join customer_region as r
on c.region = r.region

    --FULL JOIN--
select * from customer_fact
select * from customer_region

	
select f.customer_id, f.customer_name, f.postal_code, r.postal_code, r.city, r.region from customer_fact as f
full join customer_region as r
on f.postal_code = r.postal_code