-- View all data
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;

-- Customer Order Details
SELECT
    C.CustomerName,
    P.ProductName,
    O.Quantity,
    O.OrderDate
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Products P ON O.ProductID = P.ProductID;

-- Total Sales
SELECT
    SUM(P.Price * O.Quantity) AS TotalSales
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID;

-- Top Selling Product
SELECT
    P.ProductName,
    SUM(O.Quantity) AS TotalQuantitySold
FROM Orders O
JOIN Products P ON O.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalQuantitySold DESC;

-- Orders Per Customer
SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS NumberOfOrders
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName;