-- Получите список заказов вместе с именем клиента, который сделал заказ.
select first_name, last_name, item, amount
from Customers
inner join Orders
on Orders.customer_id = Customers.customer_id 
order by Customers.customer_id, order_id;