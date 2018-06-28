--Basic Common Table Expression

WITH product_details AS (  
  SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
  FROM Products
  JOIN Categories ON PRODUCTS.CategoryId = Categories.Id
  WHERE Products.Discontinued = 0
)
SELECT * FROM product_details
ORDER BY 2, 1

-- Basic Common Table Expression Expanded\

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
