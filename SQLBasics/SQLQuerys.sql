-- Seeing the All of the tables Data

--SELECT * FROM books

--SELECT * FROM loans

---SELECT * FROM patrons

-- Question 1 --

-- What books in our library were authored by J.K. Rowling before the year 2000?
SELECT title FROM books WHERE author = 'J.K. Rowling' AND first_published < 2000;

-- if we used OR in replace it can give us very different results
SELECT title FROM books WHERE author = 'J.K. Rowling' OR first_published < 2000;

-- What books do we have in the library authored by "Ernest Cline" or "Andy Weir"?
SELECT title FROM books WHERE author = "Ernest Cline" OR author = "Andy Weir";    