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
