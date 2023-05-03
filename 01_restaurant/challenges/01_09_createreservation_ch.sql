-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.
SELECT * 
FROM Customers
WHERE Firstname = "Sam" AND Lastname = "Adams"

INSERT INTO Customers (Firstname, Lastname, Email)
VALUES('Sam', 'McAdams', 'smac@kinetecoinc.com')


INSERT INTO Reservations(CustomerID, Date, PartySize)
VALUES((SELECT Customers.CustomerID
FROM Customers
WHERE Customers.FirstName='Sam' AND Customers.LastName='McAdams'
), "2022-08-12 18:00",5)


DELETE FROM Reservations
WHERE CustomerID IS NULL
AND Date LIKE "2022-08-12%"
-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)