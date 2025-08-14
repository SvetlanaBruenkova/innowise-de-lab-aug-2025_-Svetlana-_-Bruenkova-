--Найдите всех клиентов, которые сделали заказ с максимальной суммой.
select first_name, last_name, amount
from customers
left join orders
on orders.customer_id = customers.customer_id
where orders.amount = (
  select MAX(amount) from orders
)
order by customers.customer_id, order_id;