CREATE OR REPLACE MODEL `tableau_project_dataset.customer_kmeans`
OPTIONS(
  model_type = 'kmeans',
  num_clusters = 4,
  standardize_features = TRUE
) AS
SELECT
  frequency,
  monetary,
  avg_order_value,
  recency_days
FROM `tableau_project_dataset.retail_customer_features`;