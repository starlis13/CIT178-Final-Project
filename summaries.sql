/*
	Steven Starlin
	04/17/2020
*/
USE FinalProject;
GO

SELECT COUNT(ID) AS [Total Orders This Year]
FROM [Order]
WHERE OrderedDate > '01-01-2020';

SELECT SUM(p.BasePrice) AS [221521 Order Total]
FROM OrderItem oi
	JOIN Product p
		ON p.ID = oi.ProductID
WHERE oi.OrderID = 221521