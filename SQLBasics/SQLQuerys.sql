-- Questions --

-- Both condition 1 AND condition 2 Must match

-- What books in our library were authored by J.K. Rowling before the year 2000?
SELECT title FROM books WHERE author = 'J.K. Rowling' AND first_published < 2000;

-- NOTES:
-- Either condition 1 OR condition 2 Must match

-- if we used OR in replace it can give us very different results
SELECT title FROM books WHERE author = 'J.K. Rowling' OR first_published < 2000

-- What books do we have in the library authored by "Ernest Cline" or "Andy Weir"?
SELECT title FROM books WHERE author = 'Ernest Cline' OR author = 'Andy Weir'  

-- What are all the loans that happened before December 13th 2015?
	
	SELECT * FROM loans WHERE loaned_on <  '2015-12-13'

-- Imagine today is December 18th 2015. Which books are due back soon?
	
	SELECT * FROM loans WHERE return_by > '2015-12-18'

-- Which users have the id of 1 or 3?
	
	SELECT first_name, email FROM patrons WHERE id = 1 OR id = 3

-- NOTES:
-- We can replace a search of OR's with an IN Keyword

-- SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2> OR <condition 3>;
	
	SELECT first_name, email FROM patrons WHERE library_id = "MCL1001" OR library_id = "MCL1100" OR library_id = "MCL1011"

-- simplified  version of the last query
	
	SELECT first_name, email FROM patrons WHERE library_id IN ("MCL1001", "MCL1100", "MCL1011")

-- OR look for something not inside the values
	
	SELECT first_name, email FROM patrons WHERE library_id NOT IN ("MCL1001", "MCL1100", "MCL1011")

-- NOTE:
-- Selecting a Range og values ...

--- What are the book in the library from the 19th century?
	
	SELECT title, author FROM books WHERE first_published >= 1800 AND first_published <= 1899

-- We can shorten this by using Keyword BETWEEN
	
	SELECT title, author FROM books WHERE first_published BETWEEN 1800 AND 1899

-- What are the loans from week commencing Sunday 13th December 2015?
	
	--SYNTAX
	--SELECT <columns> FROM <table> WHERE <column> BETWEEN <lesser value> AND <greater value>

	SELECT * FROM loans WHERE loaned_on BETWEEN "2015-12-13" AND "2015-12-19";