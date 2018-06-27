--Setting up the different Databases

-- set up books table

CREATE TABLE [dbo].[books] (
    [Id]              INT  NOT NULL,
    [title]           TEXT NULL,
    [author]          TEXT NULL,
    [genre]           TEXT NULL,
    [first_published] INT  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

-- insert the data

INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (1, N'Harry Potter and the Philosopher''s Stone', N'J.K. Rowling', N'Fantasy', 1997)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (2, N'Harry Potter and the Chamber of Secrets', N'J.K. Rowling', N'Fantasy', 1998)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (3, N'Harry Potter and the Prisoner of Azkaban', N'J.K. Rowling', N'Fantasy', 1999)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (4, N'Harry Potter and the Goblet of Fire', N'J.K. Rowling', N'Fantasy', 2000)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (5, N'Harry Potter and the Order of the Phoenix', N'J.K. Rowling', N'Fantasy', 2003)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (6, N'Harry Potter and the Half-Blood Prince', N'J.K. Rowling', N'Fantasy', 2005)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (7, N'Harry Potter and the Deathly Hallows', N'J.K. Rowling', N'Fantasy', 2007)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (8, N'A Brief History of Time', N'Stephen Hawking', N'Non Fiction', 1988)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (9, N'The Universe in a Nutshell', N'Stephen Hawking', N'Non Fiction', 2001)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (10, N'Frankenstein', N'Mary Shelley', N'Horror', 1818)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (11, N'The Martian', N'Andy Weir', N'Science Fiction', 2014)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (12, N'Ready Player One', N'Ernest Cline', N'Science Fiction', 2011)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (13, N'Armada', N'Ernest Cline', N'Science Fiction', 2015)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (14, N'Pride and Prejudice', N'Jane Austen', N'Classic', 1813)
INSERT INTO [dbo].[books] ([Id], [title], [author], [genre], [first_published]) VALUES (15, N'Emma', N'Jane Austen', N'Classic', 1815)

--Set up loans table

CREATE TABLE [dbo].[loans] (
    [Id]          INT  IDENTITY (1, 1) NOT NULL,
    [book_id]     INT  NULL,
    [patron_id]   INT  NULL,
    [loaned_on]   DATE NULL,
    [return_by]   DATE NULL,
    [returned_on] DATE NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

-- insert the data

SET IDENTITY_INSERT [dbo].[loans] ON
INSERT INTO [dbo].[loans] ([Id], [book_id], [patron_id], [loaned_on], [return_by], [returned_on]) VALUES (1, 15, 2, N'2015-12-10', N'2015-12-17', NULL)
INSERT INTO [dbo].[loans] ([Id], [book_id], [patron_id], [loaned_on], [return_by], [returned_on]) VALUES (2, 4, 1, N'2015-12-11', N'2015-12-18', NULL)
INSERT INTO [dbo].[loans] ([Id], [book_id], [patron_id], [loaned_on], [return_by], [returned_on]) VALUES (3, 8, 1, N'2015-12-12', N'2015-12-19', NULL)
INSERT INTO [dbo].[loans] ([Id], [book_id], [patron_id], [loaned_on], [return_by], [returned_on]) VALUES (4, 9, 3, N'2015-12-13', N'2015-12-20', NULL)
INSERT INTO [dbo].[loans] ([Id], [book_id], [patron_id], [loaned_on], [return_by], [returned_on]) VALUES (5, 11, 4, N'2015-12-13', N'2015-12-20', N'2015-12-17')
SET IDENTITY_INSERT [dbo].[loans] OFF

-- set up patrons table

CREATE TABLE [dbo].[patrons] (
    [Id]         INT  IDENTITY (1, 1) NOT NULL,
    [first_name] TEXT NULL,
    [last_name]  TEXT NULL,
    [address]    TEXT NULL,
    [email]      TEXT NULL,
    [library_id] TEXT NULL,
    [zip_code]   INT  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

-- insert the data

SET IDENTITY_INSERT [dbo].[patrons] ON
INSERT INTO [dbo].[patrons] ([Id], [first_name], [last_name], [address], [email], [library_id], [zip_code]) VALUES (1, N'Andrew', N'Chalkley', N'1234 NE 20st St', N'andrew.chalkley@teamtreehouse.com', N'MCL1001', 90210)
INSERT INTO [dbo].[patrons] ([Id], [first_name], [last_name], [address], [email], [library_id], [zip_code]) VALUES (2, N'Dave', N'McFarland', N'5252 NW 2nd St', N'dave.mcfarland@teamtreehouse.com', N'MCL1010', 90210)
INSERT INTO [dbo].[patrons] ([Id], [first_name], [last_name], [address], [email], [library_id], [zip_code]) VALUES (3, N'Alena', N'Holligan', N'1404 SW 101st St', N'alena.holligan@teamtreehouse.com', N'MCL1100', 91210)
INSERT INTO [dbo].[patrons] ([Id], [first_name], [last_name], [address], [email], [library_id], [zip_code]) VALUES (4, N'Michael', N'Poley', N'7070 NE 10th Ave', N'michael.poley@teamtreehouse.com', N'MCL1011', 91310)
SET IDENTITY_INSERT [dbo].[patrons] OFF
