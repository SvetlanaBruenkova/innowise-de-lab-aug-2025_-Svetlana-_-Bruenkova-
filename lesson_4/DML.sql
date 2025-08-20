-- Начинаем транзакцию 
BEGIN;

-- 1️ Вставка двух новых сотрудников
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES ('Anya', 'Tink', 'HR', 67000.00), 
('Kate', 'Rade', 'Finance', 65000.00);

-- 2️ Выбор всех сотрудников 
SELECT * FROM Employees;

-- 3️ Выбор только FirstName и LastName из отдела IT
SELECT FirstName, LastName 
FROM Employees 
WHERE Department = 'IT';

-- 4️ Обновление зарплаты Alice Smith
UPDATE Employees 
SET Salary = 65000.00 
WHERE FirstName = 'Alice' AND LastName = 'Smith';

-- 5️ Удаление сотрудника с фамилией Prince
DELETE FROM EmployeeProjects
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM Employees
    WHERE LastName = 'Prince'
);
DELETE FROM Employees 
WHERE LastName = 'Prince'; 

-- Завершаем транзакцию 
COMMIT;

SELECT * FROM Employees
ORDER BY EmployeeID ASC;