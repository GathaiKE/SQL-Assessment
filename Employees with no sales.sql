CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50)
);

insert into employees (id, name, department) VALUES
(1, 'John Mwaniki', 'Sales'),
(2, 'Jane Nelima', 'Marketing'),
(3, 'Bob Wanga', 'IT'),
(4, 'Sarah Hasidi', 'HR'),
(5, 'John Mwaura', 'Sales'),
(6, 'Jane Otieno', 'Marketing'),
(7, 'Bob Ambasi', 'IT'),
(8, 'Sarah Kering', 'HR'),
(9, 'Bob Githinji', 'IT'),
(10, 'Sarah Mwaniki', 'HR');

delete top (4) from employees


select * from employees
CREATE TABLE sales (
  id INT PRIMARY KEY,
  employee_id INT,
  sale_amount DECIMAL(10, 2),
  sale_date DATE,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);

INSERT INTO sales (id, employee_id, sale_amount, sale_date) VALUES
(1, 1, 100.00, '2023-05-01'),
(2, 1, 200.00, '2023-05-02'),
(3, 2, 50.00, '2023-05-01'),
(4, 2, 75.00, '2023-05-02'),
(5, 3, 500.00, '2023-05-01'),
(6, 5, 100.00, '2023-05-01'),
(7, 7, 200.00, '2023-05-02'),
(8, 5, 50.00, '2023-05-01'),
(9, 3, 75.00, '2023-05-02'),
(10, 10, 500.00, '2023-05-01');

select * from sales

SELECT employees.*
FROM employees
LEFT JOIN sales ON employees.id = sales.employee_id
WHERE sales.id IS NULL;