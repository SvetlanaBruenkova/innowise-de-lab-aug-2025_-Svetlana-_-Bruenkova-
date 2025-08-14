-- Выведите список доставок со статусом и именем клиента.
select status, first_name, last_name
from Customers
left join shippings
on Shippings.customer = Customers.customer_id 
order by Customers.customer_id, Shipping_id;
