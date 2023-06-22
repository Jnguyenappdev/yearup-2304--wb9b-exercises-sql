-- SQLite

-- (1) What is the name of the table that holds the items NorthwindSells?
-- FROM Products;

-- (2) Write a query to list the products id, product name, and unit price of every product
-- SELECT ProductID, ProductName, UnitPrice
-- FROM Products;

-- (3) Write a query to list the products id, product name, and unit price of every product
-- Except this time, order them in ascendin order by price
-- SELECT ProductID, ProductName, UnitPrice
-- FROM Products
-- ORDER BY UnitPrice;

-- (4) What are the products that we carry where the unit price is $7.50 or less?
-- SELECT ProductName, UnitPrice
-- FROM Products
-- WHERE ( UnitPrice <= 7.50 );

-- What arw the products that we carry where we have at least 100 units on hand?
--  order the in descending order by price
-- SELECT ProductID, ProductName, UnitPrice, UnitsInStock
-- FROM Products
-- WHERE ( UnitsInStock >= 100 )
-- ORDER BY UnitPrice DESC;

-- (6) What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price
-- -- if two or more have the same price, list those in ascending order by product name
-- SELECT ProductID, ProductName, UnitsInStock, UnitPrice
-- FROM Products
-- WHERE (UnitsInStock >= 100 )
-- ORDER BY ProductName, UnitPrice DESC;

-- (7) What are the products that we carry where we have no units on hand but 1 or more units of them are on backorder?
--  order by product name
-- SELECT ProductID, ProductName , UnitPrice, UnitsInStock, UnitsOnOrder
-- FROM Products
-- WHERE UnitsInStock = 0
--     AND (UnitsOnOrder > 0)
-- ORDER BY ProductName;

-- (8) What is the name of the table that holds the types of categories of items NorthWind sells?
-- FROM Categories;

-- (9) Write a query that lists all the columns and all the rows of the categories table
--  What is the category ID of seafood?   8
-- SELECT CategoryID, CategoryName, Description, Pictures
-- FROM Categories;

-- (10) Examine the Products table. How does it identify the type ( category )  of each item sold? 
--  write a query to list all seafood items we carry
-- SELECT CategoryID, ProductName
-- FROM Products
-- WHERE CategoryID = 8;

-- (11) What are the first and last names of all Northwinds employees?
-- SELECT FirstName, LastName
-- FROM Employees;

-- (12) What employees have "manager" in their titles?
-- SELECT EmployeeID, FirstName, LastName, Title
-- FROM Employees
-- WHERE Title LIKE "%Manager%";

-- (13) List the distinct job titles in employees
-- SELECT EmployeeID, FirstName, LastName, Title
-- FROM Employees;

-- (14) SKIP

-- (15) List all information about all Northwind's Suppliers
-- SELECT SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage
-- FROM Suppliers;

-- (16) Examine the products tble. How do you know what supplier supplies each product?
--  write query to list all of the items that "Tokyo Traders" supplies"
-- 3