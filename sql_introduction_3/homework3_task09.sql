--Для каждого заказа добавьте колонку с суммой всех заказов этого клиента (используя оконную функцию).
select order_id, customer_id, item, amount, SUM(amount) over (partition by customer_id) as total_by_customer 
from orders
order by order_id;
 