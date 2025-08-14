--Подсчитайте количество клиентов в каждой стране.
select country, count(*)
from Customers
Group By country