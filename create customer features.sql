create or replace table `xxxxxx.tableau_project_dataset.retail_customer_features` as 
WITH
  invoice_level_data AS (
    SELECT
      CustomerID,
      InvoiceNo,
      SUM(Quantity * UnitPrice) AS order_value,
      MAX(InvoiceDate)
        AS InvoiceDate  
    FROM `xxxxx.tableau_project_dataset.uk_online_retail`
    WHERE CustomerID IS NOT NULL AND Quantity > 0
    GROUP BY CustomerID, InvoiceNo
  )
SELECT
  t1.CustomerID,
  COUNT(t1.InvoiceNo)
    AS frequency,  
  SUM(t1.order_value) AS monetary,
  AVG(t1.order_value)
    AS avg_order_value,  
  DATE_DIFF(
    DATE '2011-12-09',
    DATE(
      MAX(
        t1.InvoiceDate)), 
    DAY)
    AS recency_days
FROM invoice_level_data AS t1
WHERE t1.CustomerID IS NOT NULL
GROUP BY t1.CustomerID;