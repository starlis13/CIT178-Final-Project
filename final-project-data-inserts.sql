/*
	Steven Starlin
	02/29/2020
	Final Project Data Inserts
*/

/*TASK #1 */
INSERT INTO [Category] (Name, Reportable)
	VALUES ('Food', 1), 
		   ('Drink', 0), 
		   ('Dessert', 1), 
		   ('Appetizer', 1), 
		   ('Entree', 1), 
		   ('Tapas', 1);

INSERT INTO [Discount] (Description, Type, Amount, IsActive)
	VALUES ('None', 'Dollar', 10, 1),
		   ('Senior', 'Percent', 10, 1),
		   ('Birthday', 'Dollar', 5, 1),
		   ('Employee', 'Percent', 15, 1),
		   ('Happy Hour', 'Percent', 10, 1),
		   ('Closeout', 'Percent', 10, 1),
		   ('First Time Visitor', 'Dollar', 3, 1);

INSERT INTO [Table]  
	 VALUES (2, 'Section 1'),
			(4, 'Section 2'),
			(4, 'Section 3'),
			(6, 'Section 4'),
			(2, 'Section 1'),
			(8, 'Section 3');

INSERT INTO [Job] (Jobtitle, BasePay, MaxPay, GeoLocation)
	VALUES ('Server', 2.36, 3.50, 'Main'),
		   ('Manager', 2.36, 3.50, 'Main'),
		   ('Owner', 2.36, 3.50, 'Corporate'),
		   ('Bar Tender', 2.36, 3.50, 'Main'),
		   ('Bar Back', 2.36, 3.50, 'Main St.'),
		   ('None', 0.00, 0.00, 'None');

INSERT INTO [Employee] (FirstName, LastName, Birthday, JobTitleID)
	VALUES ('Steven', 'Starlin', '1994-06-23', 40),
	       ('Tonya', 'Starlin', '1994-06-23', 41),
	       ('Amanda', 'Hoffman', '1994-06-23', 42),
	       ('Anthony', 'Hoffman', '1994-06-23', 42),
	       ('Ian', 'Smith', '1994-06-23', 43),
	       ('Collin', 'Avery', '1994-06-23', 44),
		   ('No', 'Manager', '1970-01-01', 50);

INSERT INTO [Manager] (EmployeeID, ManagerID)
	VALUES (41, 42),
		   (42, 43),
		   (43, 47),
		   (44, 47),
		   (45, 43),
		   (46, 45);

INSERT INTO [Product] (Name, BasePrice, CategoryID, TaxExempt)
	VALUES ('Burger', 8.99, 12510, 0),
		   ('Cola', 1.99, 12511, 0),
		   ('Sundae', 4.99, 12512, 1),
		   ('Malted Shake', 6.99, 12512, 1),
		   ('Cheese Curds', 5.99, 12513, 1),
		   ('Sushi', 12.99, 12515, 1);

INSERT INTO [Order] (TableNumber, ServerID, OrderedDate)
	VALUES (1, 41, GETDATE()),
		   (2, 41, '2017-01-17'),
		   (2, 42, '2019-12-22'),
		   (5, 45, '2018-04-19'),
		   (4, 41, '2020-02-27'),
		   (6, 44, '2001-05-01');

INSERT INTO [OrderItem] (OrderID, DiscountID, ProductID)
	VALUES (221521, 410, 21215),
		   (221521, 410, 21212),
		   (221523, 411, 21211),
		   (221524, 415, 21214),
		   (221526, 416, 21212),
		   (221526, 413, 21213);
