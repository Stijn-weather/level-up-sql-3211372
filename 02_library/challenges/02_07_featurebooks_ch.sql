-- Create a list of books to feature in an exhibit.
SELECT Books.Title, COUNT(distinct Books.BookID) AS fatstack
FROM Books
JOIN Loans ON Loans.BookID = Books.BookID
WHERE Books.Published LIKE "189%" AND Loans.ReturnedDate IS NOT NULL
GROUP BY Books.title
ORDER BY fatstack
-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.