/*
	Steven Starlin
	03/21/2020

	NOTE: I chose four updateable views because I have commitment issues when it comes to data :P
*/
/*
USE FinalProject;
GO

CREATE VIEW Server_Orders_View AS
	SELECT o.ID, TableNumber, OrderedDate, FirstName, LastName, JobTitleID
	FROM [Order] o
		JOIN Employee e
		ON e.ID = o.ServerID;
GO


CREATE VIEW Order_And_Items_View AS
	SELECT o.ID, o.TableNumber, o.ServerID, o.OrderedDate, oi.DiscountID, oi.ProductID
	FROM [Order] o
		JOIN OrderItem oi
		ON o.ID = oi.OrderID;
GO


CREATE VIEW Order_Items_And_Products_View AS
	SELECT oi.OrderID, oi.DiscountID, oi.ProductID, p.Name, p.BasePrice, p.CategoryID, p.TaxExempt
	FROM OrderItem oi
		JOIN Product p
		ON oi.ProductID = p.ID;
GO


CREATE VIEW Major_Order_Details_View AS
	SELECT o.ID AS OrderID, o.OrderedDate, o.TableNumber, 
		   p.Name AS [Product Name], p.BasePrice, p.TaxExempt, 
		   c.Name AS [Category Name], c.Reportable,
		   d.Description AS DiscountDesc, d.Type, d.Amount, d.IsActive,
		   (e.LastName + ', ' + e.FirstName) AS Server
	FROM Product p
		JOIN Category c
			ON c.ID = p.CategoryID
		JOIN OrderItem oi
			ON p.ID = oi.ProductID
		JOIN [Order] o
			ON o.ID = oi.OrderID
		JOIN Employee e
			ON e.ID = o.ServerID
		JOIN Discount d
			ON d.ID = oi.DiscountID;
GO
*/