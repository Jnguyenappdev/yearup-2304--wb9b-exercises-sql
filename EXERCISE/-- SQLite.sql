-- SQLite

-- (1) List all the product id, product name, unit price, and category name of all products.Address
--  Order by Category name andd within that by product name
-- 
-- SELECT ProductID, ProductName, UnitPrice, CategoryName, 
-- FROM Products
-- JOIN Categories
--     ON Products.CategoryID = Categories.CategoryID
-- ORDER Sales by CategoryName, ProductName

-- (2) List the product id, product name, unit price and supplier name of all products that cost more than $75 
--  order by product name
-- 
-- SELECT ProductID, ProductName, UnitPrice, CompanyName
-- FROM Products
-- JOIN Suppliers
--     ON Products.SupplierID = Suppliers.SupplierID
-- WHERE UnitPrice >= 75


-- (3) List the product id product name, unit price, category name, and spplier name of every product
-- order by product name
-- 
-- SELECT ProductID, ProductName, UnitPrice, CompanyName
-- FROM Products
-- JOIN Suppliers
--     ON Products.SupplierID = Suppliers.SupplierID
-- ORDER BY ProductName;

-- (4) What is the product(s) and categories of the more expensive products>
--  Find MAX price in subQ and then use that in more complex Q that joins products with categories
-- 
-- SELECT ProductName, CategoryName, UnitPrice
-- FROM Products
-- JOIN Categories
--     ON Products.CategoryID = Categories.CategoryID
-- WHERE UnitPrice = (
--     SELECT MAX(UnitPrice)
--     FROM Products
--     GROUP BY CategoryID
-- );

-- (5) List the order id, ship name, ship address, and shipping companu name of every order that shipped to germany
--
-- SELECT OrderID, ShipName, ShipAddress, ShipCountry, CompanyName
-- FROM Orders
-- JOIN Shippers
--     ON Orders.ShipVia = Shippers.ShipperID
-- WHERE ShipCountry = "Germany";

-- (6) List ther order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"
--  
-- SELECT Orders.OrderID, OrderDate, ShipName, ShipAddress, ProductName
-- FROM Orders
-- JOIN `Order Details`
--     ON Orders.OrderID = `Order Details`.OrderID
-- JOIN Products
--     On `Order Details`.ProductID = Products.ProductID
-- WHERE products.ProductName = "Sasquatch Ale";