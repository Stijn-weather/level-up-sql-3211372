-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(BookID) FROM BOOKS
WHERE Title = "Dracula"

SELECT COUNT(LoanID) FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
WHERE Books.Title="Dracula"
AND Loans.ReturnedDate IS NULL

SELECT(
  SELECT COUNT(BookID)
  FROM BOOKS
  WHERE Title = "Dracula") 
  - (SELECT COUNT(LoanID)
    FROM Loans
    JOIN Books ON Books.BookID = Loans.BookID
    WHERE Books.Title="Dracula"
    AND Loans.ReturnedDate IS NULL)
    AS
    Hoottenanny