Use Northwind;

SELECT * FROM Customers;

-- LIST THE CUSTOMERS and their CITY 
SELECT DISTINCT ContactName, City from Customers;

-- LIST THE CUSTOMERS FROM "SAME CITY"
SELECT DISTINCT(A.ContactName) AS ContactName, A.CITY FROM Customers A, Customers B
Where A.CustomerID <> B.CustomerID AND A.City = B.City
Order by City;

-- DISPLAY THE "NUMBER OF CUSTOMERS FROM EACH CITY" 
SELECT COUNT(A.CITY), A.CITY FROM Customers A, Customers B
Where A.CustomerID <> B.CustomerID AND A.City = B.City
GROUP BY A.CITY
Order by COUNT(A.CITY);
