-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT COUNT(Orders.OrderID) AS CUONT, FirstName, LastName, email
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
GROUP BY CUONT DESC
LIMIT 2;