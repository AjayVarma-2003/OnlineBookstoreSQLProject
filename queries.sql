-- Sample Queries

-- 1. Retrieve a list of all books with their authors.
SELECT Books.Title, Authors.AuthorName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- 2. Calculate the total sales for each book.
SELECT Books.Title, SUM(OrderDetails.Subtotal) AS TotalSales
FROM Books
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY Books.Title;

-- 3. Find the top-rated books based on customer reviews.
SELECT Books.Title, AVG(Reviews.Rating) AS AverageRating
FROM Books
LEFT JOIN Reviews ON Books.BookID = Reviews.BookID
GROUP BY Books.Title
ORDER BY AverageRating DESC;

-- 4. Identify customers who have made the most purchases.
SELECT Customers.FirstName, Customers.LastName, COUNT(Orders.OrderID) AS TotalPurchases
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.FirstName, Customers.LastName
ORDER BY TotalPurchases DESC;

-- 5. Get a list of authors and their total book sales.
SELECT Authors.AuthorName, SUM(OrderDetails.Subtotal) AS TotalSales
FROM Authors
JOIN Books ON Authors.AuthorID = Books.AuthorID
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY Authors.AuthorName
ORDER BY TotalSales DESC;

-- 6. Find books with no reviews.
SELECT Books.Title
FROM Books
LEFT JOIN Reviews ON Books.BookID = Reviews.BookID
WHERE Reviews.ReviewID IS NULL;

-- 7. Generate a report on the total revenue for a specific time period.
SELECT Orders.OrderDate, SUM(OrderDetails.Subtotal) AS TotalRevenue
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
WHERE Orders.OrderDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY Orders.OrderDate
ORDER BY Orders.OrderDate;
