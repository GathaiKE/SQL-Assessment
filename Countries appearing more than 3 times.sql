CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  ContactName VARCHAR(50),
  Address VARCHAR(100),
  City VARCHAR(50),
  PostalCode VARCHAR(20),
  Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  
  (6, 'Ana Rodriguez', 'Ana Trujillo', 'Avda de la Constitución', 'México D.F.', '05021', 'Mexico'),
  (7, 'Sally Navara', 'Antonio Sanders', 'St Matthews street', 'Georgia', '05023', 'UK'),
  (8, 'Michael Withers', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'London', 'UK'),
  (9, 'Berglunds Singh', 'Christina Berglund', 'sarat 8', 'New Delhi', 'S-958 22', 'Kenya'),
  (10, 'Brian Gathai', 'Kariuki Gathai', '455 nyeri', 'Nyeri', '12209', 'Kenya'),
  (11, 'Ana Rodriguez', 'Ana Trujillo', 'Avda de la Constitución', 'México D.F.', '05021', 'Mexico'),
  (12, 'Sally Navara', 'Antonio Sanders', 'St Matthews street', 'Georgia', '05023', 'Kenya'),
  (13, 'Michael Withers', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'London', 'UK'),
  (14, 'Berglunds Singh', 'Christina Berglund', 'sarat 8', 'New Delhi', 'S-958 22', 'UK');

  select * from customers

SELECT *
FROM Customers
WHERE Country IN (
  SELECT Country
  FROM Customers
  GROUP BY Country
  HAVING COUNT(*) > 3
);