-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT ReservationID FROM Reservations
JOIN Customers WHERE Customer.CustomerID=Reservations.CustomerID
WHERE Customers.Firstname LIKE ""