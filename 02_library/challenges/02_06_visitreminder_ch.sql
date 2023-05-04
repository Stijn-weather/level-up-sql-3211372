-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT(LoanID) AS Checkthisout, Patrons.FirstName, Patrons.Lastname FROM Loans 
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.FirstName
ORDER BY COUNT(LoanID) ASC
LIMIT 20