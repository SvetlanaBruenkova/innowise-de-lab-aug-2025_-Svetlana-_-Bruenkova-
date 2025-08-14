-- Найдите всех клиентов из страны 'USA', которым больше 25 лет.
select first_name, last_name, age, country
from customers
WHERE country like '%USA%' AND age > 25;
