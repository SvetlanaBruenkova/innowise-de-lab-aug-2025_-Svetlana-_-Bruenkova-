-- Доход по месяцам (Как менялась общая сумма поступлений по месяцам и годам?)
SELECT 
    Dim_Date.Month, 
    Dim_Date.Year, 
    SUM(Fact_Rent.Monthly_Rent) AS Total_Rent
FROM Fact_Rent
JOIN Dim_Date ON Fact_Rent.Date_SK = Dim_Date.Date_SK
GROUP BY Dim_Date.Month, Dim_Date.Year
ORDER BY Dim_Date.Year, Dim_Date.Month;

-- Доход по типу недвижимости (Какие типы недвижимости приносят больше всего дохода?)
SELECT 
    Dim_Realty.Type, 
    SUM(Fact_Rent.Monthly_Rent) AS Total_Rent
FROM Fact_Rent
JOIN Dim_Realty ON Fact_Rent.Realty_SK = Dim_Realty.Realty_SK
GROUP BY Dim_Realty.Type;

-- Активные арендаторы (Какие арендаторы арендуют объекты дольше всего?)
SELECT 
    Dim_Tenant.Full_Name, 
    COUNT(*) AS Active_Months
FROM Fact_Rent
JOIN Dim_Tenant ON Fact_Rent.Tenant_SK = Dim_Tenant.Tenant_SK
WHERE Fact_Rent.Current = TRUE
GROUP BY Dim_Tenant.Full_Name
ORDER BY Active_Months DESC;

-- Доход по годам (Какой был общий доход по годам?)
SELECT 
    Dim_Date.Year, 
    SUM(Fact_Rent.Monthly_Rent) AS Yearly_Rent
FROM Fact_Rent
JOIN Dim_Date ON Fact_Rent.Date_SK = Dim_Date.Date_SK
GROUP BY Dim_Date.Year
ORDER BY Dim_Date.Year;

-- Недвижимость без аренды (Какие объекты недвижимости не сданы в аренду?)
SELECT 
    R.Address,
    R.Type,
    R.Status
FROM Dim_Realty R
LEFT JOIN Fact_Rent F ON R.Realty_SK = F.Realty_SK
WHERE F.Realty_SK IS NULL;







