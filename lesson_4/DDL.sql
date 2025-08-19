-- Создать новую таблицу с именем Departments 
CREATE TABLE Departments (
DepartmentID SERIAL PRIMARY KEY,
DepartmentName VARCHAR(50) UNIQUE NOT NULL,
Location VARCHAR(50)
);

--Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100)).
ALTER TABLE Employees 
ADD COLUMN Email VARCHAR(100);

--Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями
UPDATE Employees SET Email = 'alice@gmail.com' WHERE EmployeeID = 1;
UPDATE Employees SET Email = 'bob@gmail.com' WHERE EmployeeID = 2;
UPDATE Employees SET Email = 'charlie@gmail.com' WHERE EmployeeID = 3;
UPDATE Employees SET Email = 'eve@gmail.com' WHERE EmployeeID = 5;
UPDATE Employees SET Email = 'anya@gmail.com' WHERE EmployeeID = 6;
UPDATE Employees SET Email = 'kate@gmail.com' WHERE EmployeeID = 7;

SELECT EmployeeID, Email FROM Employees;

ALTER TABLE Employees
ADD CONSTRAINT unique_email UNIQUE (Email);

-- Переименовать столбец Location в таблице Departments в OfficeLocation.
ALTER TABLE Departments  RENAME COLUMN "location"  TO "OfficeLocation";




