-- Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
CREATE USER hr_user WITH PASSWORD '12345';

-- Предоставить hr_user право SELECT на таблицу Employees.
GRANT SELECT ON table Employees TO hr_user;

-- Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;
SELECT * FROM Employees;

-- Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees.
INSERT INTO Employees (FirstName, LastName, Department, Salary, Email)
VALUES ('Tanya', 'Vink', 'HR', 57000.00, 'tanya@gmail.com'); 

-- Как пользователь-администратор, предоставить hr_user права INSERT и UPDATE на таблицу Employees.
GRANT USAGE ON SCHEMA public TO hr_user;
GRANT INSERT, UPDATE ON table Employees TO hr_user;

-- Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. 
INSERT INTO Employees (FirstName, LastName, Department, Salary, Email)
VALUES ('Tanya', 'Vink', 'HR', 57000.00, 'tanya@gmail.com'); 

UPDATE public.Employees
SET Salary = 59000.00
WHERE Email = 'tanya@gmail.com';

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Email = 'tanya@gmail.com';









