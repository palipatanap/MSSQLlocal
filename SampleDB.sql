-- 1. Create a database
CREATE DATABASE SampleStoreDB;
GO

-- 2. Use the new database
USE SampleStoreDB;
GO

-- 3. Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100)
);
GO

-- 4. Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

-- 5. Insert sample customers
INSERT INTO Customers (FirstName, LastName, Email)
VALUES 
    ('Alice', 'Smith', 'alice.smith@example.com'),
    ('Bob', 'Johnson', 'bob.johnson@example.com'),
    ('Charlie', 'Lee', 'charlie.lee@example.com');
GO

-- 6. Insert sample orders
INSERT INTO Orders (CustomerID, OrderDate, Amount)
VALUES
    (1, '2024-01-15', 250.00),
    (1, '2024-02-10', 175.50),
    (2, '2024-03-05', 320.00),
    (3, '2024-03-18', 89.99);
GO
