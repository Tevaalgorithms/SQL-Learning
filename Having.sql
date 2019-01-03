-- FROM w3School
/* Need to remember this */
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);
use Northwind;
Select * from Customers;

-- lists the number of customers in each country. Only include countries with more than 5 customers:
-- The resulrs needed to be in the decending or of the no of countires and if the countries are same no then order by country name asc
SELECT COUNT(ContactName)AS NO_OF_CUSTOMERS, Country from Customers 
GROUP BY Country
HAVING COUNT(ContactName) > 5
ORDER BY COUNT(ContactName) DESC, Country ASC;

-- lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers) ALSO DO NOT INCLUDE USA this time:
SELECT COUNT(ContactName)AS NO_OF_CUSTOMERS, Country from Customers 
WHERE COUNTRY <> 'USA'
GROUP BY Country
HAVING COUNT(ContactName) > 5
ORDER BY COUNT(ContactName) DESC, Country ASC;

-- lists the employees that have registered more than 10 orders:
Select * From Employees;
Select * From Orders;
Select Count(O.OrderID), E.FirstName from Employees as E inner join Orders as O on E.EmployeeID = O.EmployeeID
GROUP BY E.FirstName
HAVING Count(O.OrderID) > 10;

-- lists if the employees "Davolio" or "Andrew" or "Nancy" have registered more than 50 orders and do the sorting based on count DESC and (if there is same count) then first name ASC:
SELECT COUNT(O.ORDERID), E.FirstName from Employees as E inner join Orders O on E.EmployeeID = O.EmployeeID
WHERE E.FirstName = 'Davolio' or E.FirstName = 'Andrew'  or E.FirstName = 'Nancy'
GROUP BY E.FirstName
Having Count(O.OrderID) > 50
Order By Count(O.OrderID) DESC, E.FirstName ASC;
