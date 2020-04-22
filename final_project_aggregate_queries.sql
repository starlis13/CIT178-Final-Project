/*
	Steven Starlin
	3/7/2020
	Final Project Summaries
*/

/* Get Most Expensive Item */
/*
SELECT * 
FROM Product
WHERE 
	BasePrice = (
		SELECT MAX(BasePrice) AS Price
		FROM Product
	)
*/
	
/* Get Order Total per Table */
/*
SELECT MAX(o.TableNumber) AS [Table], SUM(p.BasePrice) AS OrderTotal
FROM OrderItem oi
	JOIN Product p
		ON p.ID = oi.ProductID
	JOIN [Order] o
		ON o.ID = oi.OrderID
GROUP BY o.TableNumber, oi.OrderID
ORDER BY o.TableNumber;
*/

/* Get total orders per staff member */
/*
SELECT (e.FirstName + ' ' + e.LastName) [Server], COUNT(*) 'Number of Orders'
FROM [Order] o
	JOIN Employee e
		ON e.ID = o.ServerID
GROUP BY o.ServerID, e.FirstName, e.LastName
ORDER BY 'Number of Orders' DESC;
*/

/* Get Lowest Paid Employee */
/*
SELECT *
FROM Employee e
	JOIN Job j
	ON j.ID = e.JobTitleID
WHERE
	BasePay =(
		SELECT MIN(BasePay) 
		FROM Job j
			JOIN Employee e
			ON j.ID =  e.JobTitleID
		WHERE BasePay > 0
	)
*/