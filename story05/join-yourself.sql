SELECT 
    managers.FirstName AS ManagerFirstName,
    managers.LastName AS ManagerLastName,
    managers.Title AS ManagerTitle,
    COUNT(subordinates.EmployeeId) AS SubordinateCount
FROM employees managers
JOIN employees subordinates ON subordinates.ReportsTo = managers.EmployeeId
GROUP BY managers.EmployeeId, managers.FirstName, managers.LastName, managers.Title
ORDER BY managers.LastName ASC, managers.FirstName ASC;