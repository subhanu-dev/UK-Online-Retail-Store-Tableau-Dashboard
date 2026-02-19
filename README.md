
This is a transactional data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.

Dataset link from UCI ML Repository: https://archive.ics.uci.edu/dataset/352/online+retail


| Column Name | Description                                                    | Data Type          | Additional Notes                                                    |
| ----------- | -------------------------------------------------------------- | ------------------ | ------------------------------------------------------------------- |
| InvoiceNo   | Invoice number uniquely assigned to each transaction           | Nominal            | 6-digit integer. If it starts with 'C', it indicates a cancellation |
| StockCode   | Product (item) code uniquely assigned to each distinct product | Nominal            | 5-digit integer                                                     |
| Description | Product (item) name                                            | Nominal            | Text description of the product                                     |
| Quantity    | Quantity of each product per transaction                       | Numeric            | Represents number of units purchased                                |
| InvoiceDate | Date and time when the transaction was generated               | Numeric (Datetime) | Contains both date and time                                         |
| UnitPrice   | Price per unit of the product in sterling                      | Numeric            | Currency value (GBP)                                                |
| CustomerID  | Unique identifier assigned to each customer                    | Nominal            | 5-digit integer                                                     |
| Country     | Country where the customer resides                             | Nominal            | Country name                                                        |


For 135,080 transactions the customer id is null.
