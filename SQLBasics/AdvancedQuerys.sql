-- Notes are in AdvancedQuerys_Notes.txt

-- SELECT <columns> FROM <table1> INNER JOIN <table2> ON <equality criteria> WHERE <search criteria> ...

-- What are all Chevy models?

	SELECT mk.MakeName, md.ModelName FROM make AS mk 
	
		INNER JOIN model AS md ON mk.MakeID = md.MakeID
		WHERE MakeName = 'Chevy';

-- SELECT <columns> FROM <table1>  LEFT OUTER JOIN <table2> ON <equality criteria> WHERE <search criteria> ...

-- How many models of each make are there?

SELECT mk.MakeName, COUNT(md.ModelName) AS NumberofModels FROM make AS mk 
  LEFT OUTER JOIN model AS md ON mk.MakeID = md.MakeID
  GROUP BY mk.MakeName; 


--In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
--For all cars in the database, show Model Name, VIN and Sticker Price in one result set.

SELECT ModelName, VIN, StickerPrice FROM Model AS md

  INNER JOIN Car AS c ON md.ModelID = c.ModelID


--In a car database there is a Make table with columns, MakeID and MakeName, a Model table with columns, ModelID, MakeID and 
--ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
--For all cars in the database, show Make Name, Model Name, VIN and Sticker Price from the Model and Car tables in one result set.

SELECT mk.MakeName, md.ModelName, c.VIN, c.StickerPrice FROM Model AS md

   INNER JOIN Car AS c ON md.ModelID = c.ModelID
   INNER JOIN Make AS mk ON md.MakeID = mk.MakeID

--In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. 
--The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
--Show the First and Last Name of each sales rep along with SaleAmount from both the SalesRep and Sale tables in one result set.

SELECT sp.FirstName, sp.LastName, s.SaleAmount FROM SalesRep AS sp

  INNER JOIN Sale AS s ON sp.SalesRepID = s.SalesRepID


--In a car database there is a Model table with columns, ModelID, MakeID and ModelName and 
--a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
--Show all Model names from the Model table along with VIN from the Car table. Make sure models that aren’t in the Car table still show in the results!


SELECT md.ModelName, c.VIN FROM Model AS md

  LEFT OUTER JOIN Car AS c ON md.ModelID = c.ModelID


--In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. 
--The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
--Show all SaleDate, SaleAmount, and SalesRep First and Last name from Sale and SalesRep. Make sure that all Sales appear in results even if there is no SalesRep associated to the sale.

SELECT s.SaleDate, s.SaleAmount, sr.FirstName, sr.LastName FROM Sale AS s

LEFT OUTER JOIN SalesRep AS sr ON s.SalesRepID = sr.SalesRepID


--SET Operations 

-- UNOIN 

	-- Example of Union (Returns a distinct list of results, gets rid of duplicates)
	-- The Number of columns must be the same for UNOINS !
	-- What are all of the domestic and Foriegn Makes?

	SELECT MakeName FROM Make
	UNION
	SELECT MakeName FROM ForeignMake;
	-- CAN Add a WHERE Clause like only Makes with letters that start before D

	SELECT MakeID, MakeName FROM Make
	WHERE MakeName < 'D'

	UNION

	SELECT ForeignMakeID, MakeName FROM ForeignMake
	WHERE MakeName < 'D'

	ORDER BY MakeName;

-- UNOIN ALL

	-- Example of Union ALL (Returns a list of results, Does NOT get rid of duplicates)

	SELECT MakeName FROM Make
	UNION ALL
	SELECT MakeName FROM ForeignMake
	
	ORDER BY MakeName;



-- INTERSECT

	-- Only Returns the Rows that Exist in Both tables!
	-- cannot match on ID's because they will not match

	SELECT MakeName FROM Make
	INTERSECT
	SELECT MakeName FROM ForeignMake
	ORDER BY MakeName;
	






-- EXCEPT


