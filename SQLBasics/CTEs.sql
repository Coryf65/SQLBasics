--===============================================================
--Basic Common Table Expression
--===============================================================

WITH product_details AS (  
  SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
  FROM Products
  JOIN Categories ON PRODUCTS.CategoryId = Categories.Id
  WHERE Products.Discontinued = 0
)
SELECT * FROM product_details
ORDER BY 2, 1

--===============================================================
-- Basic Common Table Expression Expanded\
--===============================================================

WITH product_details AS (  
  SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
  FROM Products
  JOIN Categories ON PRODUCTS.CategoryId = Categories.Id
  WHERE Products.Discontinued = 0
)
SELECT CategoryName, COUNT(*) AS unique_product_count, SUM(UnitsInStock) AS stock_count
FROM product_details
GROUP BY 1
ORDER BY 2

--===============================================================
--ubqueries are powerful tools for writing complex SQL queries. 
--Unfortunately, they can also lead to difficult-to-understand SQL. 
--Learn how to make your SQL more readable and modular by converting 
--subqueries to common table expressions.
--===============================================================

--===============================================================
--Subquery Example
--===============================================================

SELECT 
  all_orders.EmployeeID, 
  Employees.LastName,
  all_orders.order_count AS total_order_count, 
  late_orders.order_count AS late_order_count
  FROM (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    GROUP BY EmployeeID
  ) all_orders
  JOIN (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    WHERE RequiredDate <= ShippedDate
    GROUP BY EmployeeID 
  ) late_orders
  ON all_orders.EmployeeID = late_orders.employeeID
  JOIN Employees
  ON all_orders.EmployeeId = Employees.Id
  
--===============================================================
--Rewritten with Common Table Expresssions
--===============================================================

WITH all_orders AS (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    GROUP BY EmployeeID
),
  late_orders AS (
    SELECT EmployeeID, COUNT(*) AS order_count
    FROM Orders
    WHERE RequiredDate <= ShippedDate
    GROUP BY EmployeeID 
)
SELECT 
  Employees.ID, LastName, 
  all_orders.order_count AS total_order_count,
  late_orders.order_count AS late_order_count
FROM Employees
JOIN all_orders ON Employees.ID = all_orders.EmployeeID 
JOIN late_orders ON Employees.ID = late_orders.EmployeeID

--===============================================================
--CTEs Referencing a CTE
--===============================================================

WITH 
  all_sales AS (
    SELECT Orders.Id AS OrderId, Orders.EmployeeId,
     SUM(OrderDetails.UnitPrice * OrderDetails.Quantity) AS invoice_total
     FROM Orders 
     JOIN OrderDetails ON Orders.id = OrderDetails.OrderId
     GROUP BY Orders.ID
  ), 
  revenue_by_employee AS (
     SELECT EmployeeId, SUM(invoice_total) AS total_revenue
     FROM all_sales
     GROUP BY EmployeeID
  ), 
  sales_by_employee AS (
     SELECT EmployeeId, COUNT(*) AS sales_count
     FROM all_sales
     GROUP BY EmployeeId
  )
SELECT 
  Employees.Id,
  Employees.LastName, 
  revenue_by_employee.total_revenue,
  sales_by_employee.sales_count,
  revenue_by_employee.total_revenue/sales_by_employee.sales_count AS    
                                               avg_revenue_per_sale
FROM revenue_by_employee
JOIN sales_by_employee ON revenue_by_employee.EmployeeId = sales_by_employee.EmployeeId
JOIN Employees ON revenue_by_employee.EmployeeId = Employees.Id
ORDER BY total_revenue DESC
Have questions about this video? Start a discussion with the community and Treehouse staff.


