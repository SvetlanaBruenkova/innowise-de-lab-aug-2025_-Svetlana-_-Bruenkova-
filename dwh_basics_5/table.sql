-- Таблица измерения арендаторов
CREATE TABLE Dim_Tenant (
    Tenant_SK SERIAL PRIMARY KEY,
    Source_Tenant_ID INT,
    Full_Name TEXT NOT NULL,
    Phone TEXT,
    Email TEXT UNIQUE
);

-- Таблица измерения недвижимости
CREATE TABLE Dim_Realty (
    Realty_SK SERIAL PRIMARY KEY,
    Source_Realty_ID INT,
    Address TEXT NOT NULL,
    Type TEXT,
    Status TEXT
);

-- Таблица измерения дат
CREATE TABLE Dim_Date (
    Date_SK SERIAL PRIMARY KEY,
    Source_Date_ID DATE,
    Date DATE NOT NULL,
    Month INT,
    Year INT
);

-- Таблица фактов аренды
CREATE TABLE Fact_Rent (
    Rent_SK SERIAL PRIMARY KEY,
    Tenant_SK INT REFERENCES Dim_Tenant(Tenant_SK),
    Realty_SK INT REFERENCES Dim_Realty(Realty_SK),
    Date_SK INT REFERENCES Dim_Date(Date_SK),
    Monthly_Rent NUMERIC(12,2),
    Current BOOLEAN
);

