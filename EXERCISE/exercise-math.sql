-- SQLite
-- (1) How may suppliers are there? Use a query
--
-- SELECT COUNT(*)
-- FROM Suppliers;

-- (2) What is the sum of all the employee's salaries?

-- (3) What is the price of the cheapest item that Northwinds sells?
--
-- SELECT ProductName, MIN(UnitPrice)
-- FROM Products;

-- (4) What is the average price of items that Northwind sells?
--
-- SELECT AVG(UnitPrice)
-- FROM Products

-- (5) What is the price of the most expensive item that Northwinds sells?
--
-- SELECT ProductName, MAX(UnitPrice)
-- FROM Products;

-- (6) What is the supplier ID of each supplier and the number of items they supply?
--  you can anser this query by only looking at the products table.
--
-- SELECT SupplierID, COUNT(*)
-- FROM Products
-- GROUP BY SupplierID;

-- (7) What is the category ID of each category and the average price pf each item in the category?
--
-- SELECT CategoryID, AVG(UnitPrice)
-- FROM Products
-- GROUP BY CategoryID

-- (8) For the suppliers that provide at least 5 items to Northwinds,
--  what is the supplier ID of each supplier and the number of items they supply?
--
-- SELECT SupplierID, COUNT(*)
-- FROM Products
-- GROUP BY SupplierID
-- HAVING COUNT(*) >= 5

-- (9) List the product id, product name, amd inverntory value 
-- (calculated by multiplying unit price by the number of units on hand)
--  sort results in descending order by value
--  if two of more have the same value order by product name
--
-- SELECT ProductID,
    --  ProductName, 
    --  UnitPrice, 
    --  UnitsInStock, 
    --  UnitPrice * UnitsInStock AS InventoryValue
-- FROM Products
-- ORDER BY InventoryValue DESC
