USE EcommerceDB;

INSERT INTO Customers VALUES
(1, 'Rahul Sharma', 'Hyderabad'),
(2, 'Priya Reddy', 'Bangalore'),
(3, 'Amit Kumar', 'Chennai');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Smartphone', 'Electronics', 25000),
(103, 'Headphones', 'Accessories', 2000);

INSERT INTO Orders VALUES
(1001, 1, 101, 1, '2025-05-01'),
(1002, 2, 102, 2, '2025-05-02'),
(1003, 3, 103, 3, '2025-05-03');