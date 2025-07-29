SELECT customers.CustomerId, customers.FirstName || ' ' || customers.LastName AS CustomerName, employees.FirstName || ' ' || employees.LastName AS SupportRepName, employees.Title AS SupportRepTitle
FROM customers
JOIN employees ON customers.SupportRepId = employees.EmployeeId
ORDER BY CustomerName;

SELECT invoices.InvoiceId, invoices.InvoiceDate, customers.FirstName || ' ' || customers.LastName AS CustomerName
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
ORDER BY CustomerName DESC;

SELECT tracks.TrackId, tracks.Name AS TrackName, albums.Title AS AlbumTitle, artists.Name AS ArtistName
FROM tracks
JOIN albums ON albums.AlbumId = tracks.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
ORDER BY TrackName DESC;

SELECT invoice_items.InvoiceLineId, tracks.Name AS TrackName, albums.Title AS AlbumTitle, artists.Name AS ArtistName
FROM invoice_items
JOIN tracks ON tracks.TrackId = invoice_items.TrackId
JOIN albums ON albums.AlbumId = tracks.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
ORDER BY AlbumTitle;