-- Seeing the All of the tables Data

--SELECT * FROM books

--SELECT * FROM loans

---SELECT * FROM patrons

-- Question 1 --

-- What books in our library were authored by J.K. Rowling before the year 2000?
SELECT title FROM books WHERE author = 'J.K. Rowling' AND first_published < 2000;