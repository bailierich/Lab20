-- #1 
SELECT * FROM customers

-- #2 
SELECT DISTINCT Country FROM customers

-- #3 
SELECT * From customers Where CustomerID  like "BL%"

-- #4 
SELECT * FROM orders LIMIT 100;

-- #5
SELECT * FROM customers where PostalCode =  1010 or 3012 or 12209 or 05023;

-- #6
SELECT * FROM orders where ShipRegion != 'null'

--#7
Select * FROM customers ORDER BY Country, City;

--#8
INSERT INTO customers (`CustomerID`,`CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES ('Wowza','Grand Circus', 'Bailie Richard', 'Best Student Ever', '996 New Place Lane', 'West Bloomfield', '48322', 'USA', '586-846-6268');

--#9
UPDATE orders SET ShipRegion='EuroZone' WHERE ShipCountry='France';

--#10
DELETE FROM orderdetails WHERE Quantity = 1;

--#11
SELECT MIN(quantity) FROM `order details`;
SELECT MAX(quantity) FROM `order details`;
SELECT AVG(quantity) FROM `order details`;

or 

SELECT avg(quantity) AS `Average`, min(quantity) AS `Minimum`, max(quantity) AS `Maximum` FROM `order details`;

--#12
SELECT avg(quantity) AS `Average`, min(quantity) AS `Minimum`, max(quantity) AS `Maximum` FROM `order details` group by orderID;

--#13
SELECT CustomerID FROM orders WHERE OrderID = 10290;

--#14
SELECT * FROM orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID;
SELECT * FROM orders LEFT JOIN customers ON orders.CustomerID = customers.CustomerID;
SELECT * FROM orders RIGHT JOIN customers ON orders.CustomerID = customers.CustomerID;
--#15
SELECT shipcity , shipCountry FROM orders INNER JOIN employees ON orders.employeeID = employees.employeeID Where employees.city = 'London';

--#16
SELECT shipname From products INNER JOIN `order details` ON products.productID = `order details`.productID INNER JOIN orders ON
orders.OrderID = `order details`.OrderID WHERE products.Discontinued = 1;

--#17
SELECT employees.FirstName From employees where ReportsTo is NULL ;

--#18
SELECT employees.FirstName From employees where ReportsTo = 2;





