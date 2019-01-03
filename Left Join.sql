Select * from Orders;
Select * from Customers;

-- Select all the customers and their orders
Select C.ContactName, O.OrderID from Customers as C inner join Orders as O on C.CustomerID = O.CustomerID;
Select count(C.ContactName) from Customers as C inner join Orders as O on C.CustomerID = O.CustomerID;

-- Here I am getting all the customers and if any cutomer's doesn't have order the ORDER ID get NULL.
-- NOTE THIS IS LEFT JOIN, SO, ALL THE RECORDS FROM LEFT SIDE WILL COME. (HERE THE LEFT SIDE IS CUSTOMERS)
-- NOTE: I purposefully sawp the oder in the ON clause 
-- to make sure that I remember the LEFT SIDE NOT DETERMINED BY THE ORDER IN ON clause order.
-- THE LEFT SIDE ORDER IS DETERMIND BY THE PLACE WHERE WE CALL THE LEFT JOIN clause. 
-- "from Customers as C left join Orders" . See here the customer is left hand side so, we get all the records from customer


Select C.ContactName, O.OrderID from Customers as C left join Orders as O on C.CustomerID = O.CustomerID;
Select count(C.ContactName) from Customers as C left join Orders as O on  O.CustomerID = C.CustomerID;
