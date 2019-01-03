use Northwind;

Select * from Products;
Select * from [Order Details];
Select * from Orders;
Select * from Customers;

-- Display the order with Customer Details
Select C.ContactName, O.OrderID from Customers as C inner join Orders as O on C.CustomerID = O.CustomerID;

-- Display the customer Name, and their product name, along with the date of order
-- Now I need to get ContactName from Customers, Order Date from Orders, Product name from Product table
-- The Order Details table helps to connect Product and Orders
Select C.ContactName, O.OrderDate, P.ProductName from Customers as C 
Inner join Orders as O ON C.CustomerID = O.CustomerID
Inner join [Order Details] as OD ON O.OrderID = OD.OrderID
Inner join  Products as P on OD.ProductID = P.ProductID;

-- NOW, let's count the products per customer
Select COUNT(P.ProductName), P.ProductName from Customers as C 
Inner join Orders as O ON C.CustomerID = O.CustomerID
Inner join [Order Details] as OD ON O.OrderID = OD.OrderID
Inner join  Products as P on OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY COUNT(P.ProductName) DESC;
