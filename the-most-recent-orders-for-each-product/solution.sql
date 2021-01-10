select product_name, p.product_id, order_id, order_Date
from products p inner join 
(
select order_id, order_date,customer_id, product_id,
rank() over(partition by product_id order by order_date desc)  as rnk
from orders) o
on p.product_id=o.product_id
and o.rnk=1
 order by product_name asc
,product_id asc, order_id asc;