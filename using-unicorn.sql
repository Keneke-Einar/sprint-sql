SELECT invoices.InvoiceId, invoices.InvoiceDate, invoice_items.TrackId, invoice_items.UnitPrice, invoice_items.Quantity
FROM invoices
JOIN invoice_items USING (InvoiceId)
ORDER BY invoice_items.UnitPrice DESC;