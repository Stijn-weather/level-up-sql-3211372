-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT COUNT(distinct Title), Published 
FROM Books
GROUP BY Published
ORDER BY Published

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(Loans.LoanID) AS Hackjack, Books.Title
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
GROUP BY Books.Title
ORDER BY Hackjack DESC
LIMIT 5;