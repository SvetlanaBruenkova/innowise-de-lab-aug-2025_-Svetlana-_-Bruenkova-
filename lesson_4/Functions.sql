-- Функция: Создать функцию PostgreSQL с именем CalculateAnnualBonus, которая принимает employee_id и Salary в качестве входных данных и возвращает рассчитанную сумму бонуса (10 % от Salary) для этого сотрудника.

CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
    employeeid INTEGER,
    salary NUMERIC
)
RETURNS NUMERIC
AS $$
DECLARE
    bonus NUMERIC;
BEGIN
    -- Рассчитываем 10% от зарплаты
    bonus := salary * 0.10;
    RETURN bonus;
END;
$$ LANGUAGE plpgsql;

-- Использовать эту функцию в операторе SELECT, чтобы увидеть потенциальный бонус для каждого сотрудника
SELECT employeeid, firstname, lastname, salary, CalculateAnnualBonus (employeeid, salary)  AS bonus
FROM Employees;

-- Представление (View): Создать представление с именем IT_Department_View, которое показывает EmployeeID, FirstName, LastName и Salary только для сотрудников из отдела 'IT'.
CREATE VIEW IT_Department_View AS
SELECT employeeid, firstname, lastname, salary
FROM Employees
WHERE department = 'IT';

--  Выбрать данные из представления IT_Department_View.
SELECT * FROM IT_Department_View;

-- нет работников в айти, проверим работу в Senior IT
CREATE VIEW IT_Department_View_2 AS
SELECT employeeid, firstname, lastname, salary
FROM Employees
WHERE department = 'Senior IT';

--  Выбрать данные из представления IT_Department_View.
SELECT * FROM IT_Department_View_2;


