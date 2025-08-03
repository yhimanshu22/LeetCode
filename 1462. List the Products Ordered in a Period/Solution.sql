/* Write your T-SQL query statement below */
select a.product_name ,sum(b.unit) as unit from Products as a
join Orders as b
on a.product_id = b.product_id and order_date  between '2020-02-01' and '2020-02-29'

group by a.product_id
having sum(b.unit) >= 100
