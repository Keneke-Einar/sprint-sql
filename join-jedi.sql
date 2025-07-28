SELECT customers.FirstName, customers.LastName, invoices.InvoiceId
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId