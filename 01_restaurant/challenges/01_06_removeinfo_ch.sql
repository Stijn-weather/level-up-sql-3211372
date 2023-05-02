-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022. [zondag]
Select CustomerID from Customers
Where firstname = 'Norby'

DELETE FROM Reservations
WHERE CustomerID = 64
AND Date LIKE "2022-07-29%"