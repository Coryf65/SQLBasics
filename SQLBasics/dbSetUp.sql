--Setting up the different Databases

----------------------------- The Basic Series --------------------------

-- set up books table

CREATE TABLE [dbo].[books] (
    [Id]              INT  NOT NULL,
    [title]           VARCHAR(50) NULL,
    [author]          VARCHAR(50) NULL,
    [genre]           VARCHAR(50) NULL,
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
    [first_name] VARCHAR(50) NULL,
    [last_name]  VARCHAR(50) NULL,
    [address]    VARCHAR(50) NULL,
    [email]      VARCHAR(50) NULL,
    [library_id] VARCHAR(50) NULL,
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

----------------------------- The Advanced Series --------------------------

-- Setting up the Car Table

CREATE TABLE [dbo].[Car]
(
	[CarID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ModelID] INT NULL, 
    [VIN] VARCHAR(50) NULL, 
    [ModelYear] INT NULL, 
    [StickerPrice] MONEY NULL
);

-- insert the data 

SET IDENTITY_INSERT [dbo].[Car] ON
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (1, 1, N'1111111111111', 2014, CAST(25000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (2, 1, N'222222222222', 2015, CAST(26000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (3, 2, N'333333333333333', 2015, CAST(18000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (4, 2, N'444444444	', 2016, CAST(189000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (5, 3, N'5555555555555', 2014, CAST(24600.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (6, 3, N'66666666666', 2015, CAST(27300.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (7, 4, N'777777777777', 2016, CAST(28000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (8, 4, N'88888888888888', 2014, CAST(32000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (9, 5, N'9999999999999', 2015, CAST(16500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (10, 5, N'123123123123', 2015, CAST(16950.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (11, 6, N'234234234234', 2016, CAST(29900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (12, 6, N'345345345345', 2015, CAST(34000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (13, 7, N'456456456456', 2016, CAST(35500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (14, 7, N'567567567567', 2016, CAST(37900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (15, 8, N'678678678678', 2014, CAST(399900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (16, 8, N'333444555666', 2016, CAST(42500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (17, 9, N'5676756464546660', 2016, CAST(27500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (18, 9, N'888999777555', 2015, CAST(26900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (19, 10, N'987654321', 2014, CAST(18900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (20, 10, N'7777777666666650', 2016, CAST(22000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (21, 11, N'99999888887777', 2016, CAST(32500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (22, 11, N'66677776667777', 2015, CAST(27500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (23, 12, N'22222111111145500', 2014, CAST(24500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (24, 12, N'45455554455555', 2015, CAST(27900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (25, 13, N'6666666555533330', 2016, CAST(25000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (26, 13, N'7777770000000000', 2016, CAST(26500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (27, 14, N'90909090909', 2016, CAST(19000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (28, 14, N'3147765432', 2015, CAST(18500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (29, 15, N'6666666673333330	', 2016, CAST(3200.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (30, 15, N'2223334445552110', 2014, CAST(28000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (31, 16, N'445544334455', 2016, CAST(41000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (32, 16, N'332211334455', 2014, CAST(39500.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (33, 2, N'778866445566', 2016, CAST(21000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (34, 7, N'999888777666555', 2016, CAST(36900.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (35, 9, N'444443333322222', 2014, CAST(29000.0000 AS Money))
INSERT INTO [dbo].[Car] ([CarID], [ModelID], [VIN], [ModelYear], [StickerPrice]) VALUES (36, 11, N'5432154321', 2015, CAST(38500.0000 AS Money))
SET IDENTITY_INSERT [dbo].[Car] OFF


-- setting up Customer table

CREATE TABLE [dbo].[Customer]
(
	[CustomerID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Gender] VARCHAR(1) NULL, 
    [SSN] VARCHAR(11) NULL
);


-- insert the data

SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (1, N'Vincent', N'Schwartz', N'M', N'888-99-7777')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (2, N'Shirley', N'Adams', N'F', N'111-99-1111')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (3, N'Tasha ', N'Bell', N'F', N'444-33-7234')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (4, N'Adam', N'Turley', N'M', N'666-11-6455')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (5, N'Duane', N'McGee', N'M', N'654-77-2222')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (6, N'Marshawn', N'Jones', N'M', N'887-00-5544')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (7, N'Debbie', N'Miller', N'F', N'778-99-3322')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (8, N'Sai', N'Jajala', N'M', N'223-99-4477')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (9, N'Phoong', N'Ming', N'F', N'990-99-4477')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (10, N'Albert', N'Matheny', N'M', N'545-44-5555')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (11, N'Nicole', N'Dunn', N'F', N'776-33-3377')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (12, N'Jasper', N'Olmer', N'M', N'232-11-7788')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (13, N'Eddie', N'Sandberg', N'M', N'443-11-8877')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (14, N'Sarah', N'Golman', N'F', N'994-99-4444')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (15, N'Lebron', N'McMichaels', N'M', N'767-66-7777')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (16, N'Amanada', N'Peart', N'F', N'321-21-4321')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (17, N'Mohammed', N'Wasem', N'N', N'575-55-5577')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (18, N'Arif', N'Hadad', N'M', N'456-99-4567')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (19, N'George', N'Schubert', N'M', N'779-99-9777')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (20, N'Chris', N'Mortensen', N'M', N'888-99-8899')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (21, N'Julia', N'Molina', N'F', N'880-01-0008')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (22, N'Fred', N'Collier', N'M', N'809-99-5665')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (23, N'Gail', N'Dickens', N'F', N'498-09-9876')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (24, N'Hiliary', N'Simpson', N'F', N'987-98-7987')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (27, N'Andrew', N'Lee', N'M', N'908-43-3434')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (28, N'Naomi', N'Naser', N'F', N'888-55-2211')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (29, N'Ben', N'Crosby', N'M', N'866-65-0909')
INSERT INTO [dbo].[Customer] ([CustomerID], [FirstName], [LastName], [Gender], [SSN]) VALUES (30, N'Reggie', N'Smith', N'M', N'665-45-5454')
SET IDENTITY_INSERT [dbo].[Customer] OFF


-- create the ForeignMake Table

CREATE TABLE [dbo].[ForeignMake]
(
	[ForeignMakeID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [MakeName] VARCHAR(50) NULL
);


-- insert the data

SET IDENTITY_INSERT [dbo].[ForeignMake] ON
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (1, N'BMW')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (2, N'Volkswagen')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (3, N'Audi')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (4, N'Honda')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (5, N'Hyundai')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (6, N'Acura')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (7, N'Subaru')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (8, N'Kia')
INSERT INTO [dbo].[ForeignMake] ([ForeignMakeID], [MakeName]) VALUES (9, N'Toyota')
SET IDENTITY_INSERT [dbo].[ForeignMake] OFF


-- set up Location Table

CREATE TABLE [dbo].[Location]
(
	[LocationID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [LocationName] VARCHAR(50) NULL, 
    [StreetAddress] VARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [State] VARCHAR(2) NULL, 
    [Zipcode] VARCHAR(5) NULL
);


-- insert the data 

INSERT INTO [dbo].[Location] ([LocationID], [LocationName], [StreetAddress], [City], [State], [Zipcode]) VALUES (1, N'Auto Sellers - St. Louis', N'9090 Dealer St.', N'Saint Louis	', N'MO', N'63110')
INSERT INTO [dbo].[Location] ([LocationID], [LocationName], [StreetAddress], [City], [State], [Zipcode]) VALUES (2, N'Auto Sellers - Columbia', N'3322 Main St.', N'Columbia', N'MO', N'65203')


-- create the Make Table

CREATE TABLE [dbo].[Make]
(
	[MakeID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [MakeName] VARCHAR(50) NULL
);


-- insert the data

SET IDENTITY_INSERT [dbo].[Make] ON
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (1, N'Ford')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (2, N'Chevy')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (3, N'Jeep')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (4, N'Dodge')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (5, N'Honda')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (6, N'Kia')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (7, N'Toyota')
INSERT INTO [dbo].[Make] ([MakeID], [MakeName]) VALUES (8, N'BMW')
SET IDENTITY_INSERT [dbo].[Make] OFF


-- create the Model Table

CREATE TABLE [dbo].[Model]
(
	[ModelID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [MakeID] INT NULL, 
    [ModelName] VARCHAR(75) NULL
);


-- insert the data

SET IDENTITY_INSERT [dbo].[Model] ON
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (1, 1, N'Escape')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (2, 1, N'Focus')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (3, 1, N'Fusion')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (4, 2, N'Impala')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (5, 2, N'Cruze')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (6, 2, N'Colorado')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (7, 3, N'Cherokee')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (8, 3, N'Grand Cherokee')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (9, 4, N'Challenger')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (10, 5, N'Accord')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (11, 5, N'CRV')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (12, 6, N'Soul')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (13, 6, N'Rio')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (14, 7, N'Camry')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (15, 7, N'Sienna')
INSERT INTO [dbo].[Model] ([ModelID], [MakeID], [ModelName]) VALUES (16, 5, N'Element')
SET IDENTITY_INSERT [dbo].[Model] OFF


-- Create the Sale Table

CREATE TABLE [dbo].[Sale]
(
	[SaleID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CarID] INT NULL, 
    [CustomerID] INT NULL, 
    [LocationID] INT NULL, 
    [SalesRepID] INT NULL, 
    [SaleAmount] REAL NULL, 
    [SaleDate] DATE NULL
);


-- insert the data

SET IDENTITY_INSERT [dbo].[Sale] ON
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (1, 3, 1, 2, 6, 17500, N'2015-05-01')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (2, 2, 2, 1, 1, 25000, N'2015-06-01')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (3, 1, 3, 1, 2, 25000, N'2015-06-01')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (4, 6, 5, 1, 1, 27300, N'2015-06-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (5, 5, 4, 2, 4, 24000, N'2015-06-28')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (6, 4, 6, 2, 4, 18900, N'2015-07-03')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (7, 9, 7, 1, 3, 16250, N'2015-07-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (8, 8, 9, 2, 5, 30999, N'2015-07-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (9, 7, 8, 2, 4, 28000, N'2015-07-29')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (10, 13, 10, 1, 1, 35000, N'2015-08-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (11, 12, 11, 1, 1, 33750, N'2015-08-06')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (12, 11, 12, 1, 2, 29900, N'2015-08-06')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (13, 10, 13, 1, 3, 16750, N'2015-08-15')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (14, 18, 15, 1, 2, 26900, N'2015-08-20')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (15, 17, 14, 2, 6, 27300, N'2015-08-29')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (16, 16, 16, 2, 6, 42250, N'2015-09-02')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (17, 15, 17, 2, 5, 39900, N'2015-09-17')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (18, 14, 18, 1, 2, 37750, N'2015-09-25')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (19, 21, 19, 2, 4, 32500, N'2015-09-29')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (20, 20, 21, 1, 1, 21500, N'2015-10-10')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (21, 19, 20, 2, 5, 18800, N'2015-10-10')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (22, 25, 22, 2, 4, 25000, N'2015-10-10')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (23, 24, 23, 1, 1, 27800, N'2015-10-20')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (24, 23, 25, 1, 2, 24500, N'2015-10-20')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (25, 22, 24, 1, 3, 27400, N'2015-10-20')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (26, 29, 26, 1, 2, 32000, N'2015-11-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (27, 28, 27, 1, 3, 18400, N'2015-11-05')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (28, 27, 28, 2, 5, 19000, N'2015-11-15')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (29, 26, 1, 2, 6, 26350, N'2015-11-15')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (30, 32, 18, 1, 1, 40850, N'2015-11-15')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (31, 31, 18, 1, 1, 40850, N'2015-11-15')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (32, 30, 1, 2, 6, 28000, N'2015-11-23')
INSERT INTO [dbo].[Sale] ([SaleID], [CarID], [CustomerID], [LocationID], [SalesRepID], [SaleAmount], [SaleDate]) VALUES (33, 29, 17, 2, NULL, 31500, N'2015-12-20')
SET IDENTITY_INSERT [dbo].[Sale] OFF


-- Sales Rep Table

CREATE TABLE [dbo].[SalesRep] (
    [SalesRepID]    INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]     VARCHAR (75) NULL,
    [LastName]      VARCHAR (75) NULL,
    [SSN]           VARCHAR (11) NULL,
    [PhoneNumber]   VARCHAR(12)          NULL,
    [StreetAddress] VARCHAR (50) NULL,
    [City]          VARCHAR (50) NULL,
    [State]         VARCHAR (2)  NULL,
    [ZipCode]       INT          NULL,
    PRIMARY KEY CLUSTERED ([SalesRepID] ASC)
);


-- insert the data

SET IDENTITY_INSERT [dbo].[SalesRep] ON
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (1, N'Mike', N'Jones', N'555-44-3333', N'314-555-9999', N'1233 ThisStreet', N'Saint Louis', N'MO', 63119)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (2, N'Indria', N'Gupta', N'444-55-6666', N'314-555-7777', N'543 MyStreet', N'Saint Louis', N'MO', 63126)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (3, N'Rebecca', N'Williams', N'666-22-3333', N'636-555-7777', N'543 MyStreet', N'Saint Louis', N'MO', 63114)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (6, N'Jordan', N'Jackson', N'999-33-1111', N'573-555-6666', N'9876 Anywhere', N'Columbia', N'MO', 65203)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (7, N'Luis', N'Santiago', N'333-44-5555', N'573-555-5555', N'8769 StreetY', N'Columbia', N'MO', 65203)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (8, N'Vincent', N'Schwartz', N'888-99-7777', N'573-555-4444', N'7690 StreetZ	', N'Columbia', N'MO', 65203)
INSERT INTO [dbo].[SalesRep] ([SalesRepID], [FirstName], [LastName], [SSN], [PhoneNumber], [StreetAddress], [City], [State], [ZipCode]) VALUES (9, N'Shelley', N'Washington', N'111-00-9999', N'555-000-4444', N'5050 Park St.', N'St. Louis', N'MO', 63141)
SET IDENTITY_INSERT [dbo].[SalesRep] OFF
