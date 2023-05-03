-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
INSERT INTO Orders(CustomerID, OrderDate)
VALUES((
  SELECT Customers.CustomerID FROM Customers
  WHERE Firstname = 'Loretta' AND Lastname = 'Hundey'),
  '2022-09-20 14:00:00')

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES(1001, (SELECT Dishes.DishID
FROM Dishes
WHERE Dishes.Name = "House Salad")),
(1001,(SELECT Dishes.DishID
FROM Dishes
WHERE Dishes.Name = "Mini Cheeseburgers")),
(1001, (SELECT Dishes.DishID
FROM Dishes
WHERE Dishes.Name = "Tropical Blue Smoothie"))

SELECT SUM(Price) from Dishes
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001
