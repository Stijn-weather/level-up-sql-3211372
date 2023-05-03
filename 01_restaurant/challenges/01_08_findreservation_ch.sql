-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT ReservationID, Customers.LastName, PartySize FROM Reservations
JOIN Customers ON Customers.CustomerID=Reservations.CustomerID
WHERE (Customers.LastName LIKE
'Ste%' OR Customers.LastName LIKE 'Stu%')
AND PartySize = 4
AND Reservations.Date LIKE '2022-06-14%';
