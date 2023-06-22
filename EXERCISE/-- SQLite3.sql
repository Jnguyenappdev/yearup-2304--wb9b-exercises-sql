-- SQLite
-- (1) What is the product name(s) of the most expensice products?
--  HINT: find max price in subQ and use value to find products that euqal value
-- SELECT ProductName, UnitPrice
-- FROM Products
-- Where UnitPrice = ( Select MAX(UnitPrice)
--     FROM Products
-- );

-- (2) What is the order id, shipping name and shipping address of all orders shipped via "Federal shipping"?
-- HINT: find shipper id of "Federal shipping" in a subquery
--  and then use that value to find the orders that used that shipper
-- SELECT OrderID, ShipName, ShipAddress, ShipVia
-- FROM Orders
-- WHERE ShipVia = (
--     SELECT ShipperID
--     FROM Shippers
--     WHERE CompanyName = 'Federal Shipping');

-- (3) What are the order ids of the orders that ordered "Sasquatch Ale" in subQ
--  use value to find the matching otders from ther "order details" table 
-- surround it with back ticks in FROM clause

-- SELECT OrderID, ProductID
-- FROM 'Order Details' 
-- WHERE ProductID = (
--     SELECT ProductID
--     FROM Products
--     WHERE ProductName = "Sasquatch Ale"
-- );

-- (4) What is the name of the employee that sold order 10266?
-- SELECT EmployeeID, FirstName, LastName
-- FROM Employees
-- WHERE EmployeeID = (
--     SELECT EmployeeID
--     FROM Orders
--     WHERE OrderID = 10266
-- )


-- (5) What is the name of the customer that bought order 10266?
-- SELECT CustomerID, CompanyName
-- FROM Customers
-- WHERE CustomerID = (
--     SELECT CustomerID
--     FROM Orders
--     WHERE OrderID = 10266
-- );
