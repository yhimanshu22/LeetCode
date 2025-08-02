# Write your MySQL query statement below
select a.customer_id  from Customer as a
join Product as b
on a.product_key = b.product_key
group by customer_id
having count(distinct a.product_key) = (select count(*) from Product)