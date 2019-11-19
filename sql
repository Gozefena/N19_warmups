-- Get a list of the 3 long-standing customers for each country


-- Modify the previous query to get the 3 newest customers in each each country.


-- Get the 3 most frequently ordered products in each city
-- FOR SIMPLICITY, we're interpreting "most frequent" as 
-- "highest number of total units ordered within a country"
-- hint: do something with the quanity column

--SELECT c.CustomerName, MAX(O.ShippedDate) as L_S, c.Country
--FROM customers as c
--INNER JOIN Orders 
  --     ON C.customerID  = O.customerID
    --   WHERE O.ShippedDate
      -- ORDER BY c.country
       --LIMIT 3
SELECT * 
FROM customers 
JOIN orders 
ON customers.customer_ID = orders.customer_ID 
WHERE orders.shipped_Date =(
     SELECT MAX(Shipped_Date) FROM Orders);
