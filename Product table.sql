-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    Price DECIMAL(10,2),
    InStock BIT DEFAULT 1
);

-- Insert sample data
INSERT INTO Products (ProductName, Category, Price, InStock)
VALUES
    ('Wireless Mouse', 'Electronics', 25.99, 1),
    ('HDMI Cable', 'Electronics', 9.99, 1),
    ('Office Chair', 'Furniture', 149.99, 1),
    ('Standing Desk', 'Furniture', 299.99, 0),
    ('Notebook', 'Stationery', 2.50, 1),
    ('Pen', 'Stationery', 1.20, 1);
