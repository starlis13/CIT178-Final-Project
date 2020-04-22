/*
	Final Project Procedures
*/
/*
USE FinalProject;
GO

CREATE PROC spGrabAllOrders
AS
	SELECT * 
	FROM [Order]


CREATE PROC spFetchDiscount
	@Description TEXT = '%'
AS
	BEGIN TRY
		SELECT * 
		FROM Discount 
		WHERE Description LIKE @Description;
	END TRY
	BEGIN CATCH
		PRINT 'Error Occurred!';
		PRINT ERROR_MESSAGE();
	END CATCH



CREATE PROC spFetchEmployeeFirstName
	@FirstName VARCHAR(40) OUTPUT,
	@LastName VARCHAR(50) = NULL
AS
	BEGIN TRY
		SELECT @FirstName = FirstName, @LastName = LastName
		FROM Employee 
		WHERE LastName = @LastName;
	END TRY
	BEGIN CATCH
		PRINT 'Error Occurred!';
		PRINT ERROR_MESSAGE();
	END CATCH

DECLARE @FirstName VARCHAR(50);
EXEC spFetchEmployeeFirstName @FirstName OUTPUT, @LastName = 'Starlin';

SELECT @FirstName AS 'Employee First Name'


CREATE PROC spGetOrderCountForTheDay
AS 
	BEGIN
		DECLARE @OrderCount INT;

		SELECT @OrderCount = COUNT(ID)
		FROM [Order]
		WHERE OrderedDate = GETDATE();

		RETURN @OrderCount;
	END
GO

DECLARE @InvCount INT;

EXEC @InvCount = spGetOrderCountForTheDay

SELECT @InvCount AS 'Number of Orders';
*/


/* Final Project User Defined Functions */
/*
USE FinalProject;
GO

CREATE FUNCTION fnProductName
	(@ProductID INT)
	RETURNS VARCHAR(25)
BEGIN
	RETURN (SELECT Name FROM Product WHERE ID = @ProductID);
END

SELECT * 
FROM Product 
WHERE Name = dbo.fnProductName(21211);


CREATE FUNCTION fnFindJobFromName
	(@JobName VARCHAR(50))
	RETURNS TABLE
RETURN 
	(SELECT * FROM Job WHERE JobTitle = @JobName);

SELECT * FROM fnFindJobFromName('Server');
*/

/* Final Project Triggers */
/*
CREATE TABLE OrderItemLogs(
	OrderItemID INT,
	OrderID INT,
	Status VARCHAR(30)
);


CREATE TRIGGER OrderItems_DELETED ON OrderItem
	AFTER DELETE
AS 
	BEGIN
		SET NOCOUNT ON;
		DECLARE @OrderItemID INT;
		DECLARE @OrderID INT;

		SELECT @OrderItemID = DELETED.ID, @OrderID = DELETED.OrderID
		FROM DELETED;

		INSERT INTO OrderItemLogs
		VALUES (@OrderItemID, @OrderID, 'DELETED');
	END


CREATE TRIGGER OrderItems_INSERT ON OrderItem
	AFTER INSERT
AS
	BEGIN
		SET NOCOUNT ON;
		DECLARE @OrderItemID INT;
		DECLARE @OrderID INT;

		SELECT @OrderItemID = INSERTED.ID
		FROM INSERTED;

		INSERT INTO OrderItemLogs
		VALUES (@OrderItemID, @OrderID, 'Inserted');
	END


CREATE TABLE ProductLogs(
	ProductID INT,
	Status VARCHAR(30)
);


CREATE TRIGGER Products_Updated ON Product
	AFTER UPDATE
AS
	BEGIN
		SET NOCOUNT ON;
		DECLARE @ProductID INT;

		SELECT @ProductID = UPDATED.ID
		FROM UPDATED;

		INSERT INTO ProductLogs
		VALUES (@ProductID, 'Updated');
	END
*/