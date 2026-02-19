CREATE OR REPLACE TABLE tableau_project_dataset.retail_customer_features AS
SELECT
  CustomerID,
  COUNT(DISTINCT InvoiceNo) AS frequency,
  SUM(Quantity * UnitPrice) AS monetary,
  AVG(Quantity * UnitPrice) AS avg_order_value,
  DATE_DIFF(
    DATE '2011-12-09',
    DATE(MAX(InvoiceDate)),
    DAY
  ) AS recency_days
FROM `genuine-ember-452916-g8.tableau_project_dataset.uk_online_retail`
WHERE CustomerID IS NOT NULL
  AND Quantity > 0 # returns are not considered
GROUP BY CustomerID;