CREATE VIEW tableau_project_dataset.retail_customers as
-- getting the model outputs
with kmeans_output as(
SELECT
  CustomerID,
  centroid_id AS customer_segment
FROM ML.PREDICT(
  MODEL `tableau_project_dataset.customer_kmeans`,
  (SELECT * FROM `tableau_project_dataset.retail_customer_features`)
)
)


select cust.*, model.customer_segment from tableau_project_dataset.retail_customer_features cust
join
kmeans_output model
on cust.CustomerID=model.CustomerID



