select a.product_id , 
ifnull(b.new_price,10) as price from (select distinct product_id from Products) as a 
left join(select product_id, new_price from Products
where change_date <= '2019-08-16' and
(product_id , change_date) in(
select product_id , max(change_date) from Products
where change_date <= '2019-08-16'
group by product_id)) as b
on a.product_id = b.product_id