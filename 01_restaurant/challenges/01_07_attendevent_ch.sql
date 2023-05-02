-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
INSERT INTO AttendeeResponses (CustomerID, NumPeople)
VALUES((SELECT Reservations.CustomerID
  FROM Reservations
  JOIN Customers ON Reservations.CustomerID=Customers.CustomerID
WHERE Customers.Email = 'atapley2j@kinetecoinc.com' 


), (SELECT PartySize

FROM Reservations
JOIN Customers ON Reservations.CustomerID=Customers.CustomerID
WHERE Customers.Email = 'atapley2j@kinetecoinc.com' )
) 