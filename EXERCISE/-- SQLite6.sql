-- SQLite
-- SQLite
-- (1) Add new supplier
-- 
INSERT INTO Suppliers( CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES ( "newSupplierCompanyName", "newSupplierContactName", "newSupplierContactTitle", "newSupplierAddress", "newSupplierCity", "newSupplerRegion", "newSupplerPostalCode",
"newSupplierCountry", "newSupplierPhone", "newSupplierFax", "newSupplierHomePage");


-- (2) Add a new product provided by that supplier
-- 
INSERT INTO Products( ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsOnOrder, UnitsInStock, ReorderLevel, Discontinued)
VALUES (
"newProductName", 31, 3, 5, 2.5, 23, 0, 10, 0
);

-- (3) List all products and thier supplier
-- 
SELECT ProductID, ProductName, Products.SupplierID, CompanyName, UnitPrice
FROM Products
JOIN Suppliers
    ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductID DESC;


-- (4) Raise the price of your new product by 15%
-- 
UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID = 79;

-- (5) List the products and prices of all the products from that supplier
-- 
SELECT ProductName, UnitPrice, SupplierID
FROM Products
WHERE SupplierID = 31;

-- (6) Delete the new product
-- 
DELETE FROM Products
WHERE ProductID = 79;

-- (7) Delete the new supplier
-- 
DELETE FROM Suppliers
WHERE SupplierID = 31;

-- (8) List all products
-- 
SELECT ProductName, ProductID, SupplierID
FROM Products;

-- (9) List all Suppliers
-- 
SELECT SupplierID, CompanyName
FROM Suppliers;