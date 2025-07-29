SELECT 
    employees.FirstName || ' ' || employees.LastName AS EmployeeName,
    customers.FirstName || ' ' || customers.LastName AS CustomerName,
    invoices.InvoiceId,
    invoices.InvoiceDate,
    tracks.Name AS TrackName,
    albums.Title AS AlbumTitle,
    artists.Name AS ArtistName,
    genres.Name AS GenreName,
    media_types.Name AS MediaTypeName
FROM employees
JOIN customers ON customers.SupportRepId = employees.EmployeeId
INNER JOIN invoices ON invoices.CustomerId = customers.CustomerId
INNER JOIN invoice_items ON invoice_items.InvoiceId = invoices.InvoiceId
INNER JOIN tracks ON tracks.TrackId = invoice_items.TrackId
INNER JOIN albums ON albums.AlbumId = tracks.AlbumId
INNER JOIN artists ON artists.ArtistId = albums.ArtistId
INNER JOIN genres ON genres.GenreId = tracks.GenreId
INNER JOIN media_types ON media_types.MediaTypeId = tracks.MediaTypeId
ORDER BY EmployeeName, CustomerName, InvoiceDate;