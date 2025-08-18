-- Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
UPDATE Employees
SET Salary = Salary * 1.1
WHERE Department = 'HR';

-- Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.
UPDATE Employees
SET Department = 'Senior IT'
WHERE Salary ='75000';

-- Удалить всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects. 
DELETE FROM Employees
WHERE NOT EXISTS (
    SELECT 1
    FROM EmployeeProjects
    WHERE EmployeeProjects.EmployeeID = Employees.EmployeeID
);

-- Вставить новый проект и назначить на него двух существующих сотрудников с определенным количеством HoursWorked в EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.

-- Начинаем транзакцию 
BEGIN;

--  Вставляем новый проект
INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Website Creation',  75000.00, '2025-08-20', '2025-10-10');

-- Вставка двух новых сотрудников
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES
    (1, 4, 25),  -- Элис работает 25 часов
    (2, 4, 40);  -- Боб работает 40 часов

-- Завершаем транзакцию 
COMMIT;