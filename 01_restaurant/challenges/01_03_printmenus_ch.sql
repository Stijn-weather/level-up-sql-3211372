-- Create reports that will be used to make three menus.
SELECT Name, Price FROM Dishes
ORDER BY Price ASC
-- Create a report with all the items sorted by price (lowest to highest).
SELECT Name, Price, type FROM Dishes 
WHERE Type='Appetizer' OR type='Beverage'
ORDER BY Type ASC
-- Create a report showing appetizers and beverages.
SELECT Name, Price, type FROM Dishes
WHERE Type != 'Beverage'
ORDER BY Type ASC
-- Create a report with all items except beverages.