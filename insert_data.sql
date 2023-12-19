-- Sample Data (You can add more data as needed)
INSERT INTO Authors VALUES (1, 'Author 1');
INSERT INTO Authors VALUES (2, 'Author 2');

INSERT INTO Books VALUES (1, 'Book 1', 1, '1234567890', 'Fiction', 29.99, 2020);
INSERT INTO Books VALUES (2, 'Book 2', 2, '0987654321', 'Non-Fiction', 19.99, 2018);

INSERT INTO Customers VALUES (1, 'John', 'Doe', 'john.doe@example.com', '123 Main St', '555-1234');
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak St', '555-5678');

INSERT INTO Orders VALUES (1, 1, '2023-01-01', 29.99);
INSERT INTO Orders VALUES (2, 2, '2023-02-01', 19.99);

INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 29.99);
INSERT INTO OrderDetails VALUES (2, 2, 2, 2, 39.98);

INSERT INTO Reviews VALUES (1, 1, 1, 5, 'Great book!', '2023-01-15');
INSERT INTO Reviews VALUES (2, 2, 2, 4, 'Interesting read', '2023-02-15');