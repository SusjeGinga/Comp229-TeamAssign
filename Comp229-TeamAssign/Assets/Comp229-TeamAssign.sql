USE [Comp229TeamAssign]

/* Object: Table Comp229TeamAssign.[dbo].[Shoes] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Shoes](
	[ShoeID] [int] IDENTITY (100, 1) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Quality] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Image] [varchar](200) NOT NULL,

 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table Comp229TeamAssign.[dbo].[Customers] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Customers](
	[CustomerID] [int] IDENTITY (100, 1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Phone] [int] NOT NULL,

 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table Comp229TeamAssign.[dbo].[Rental] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Rental](
	[RenID] [int] IDENTITY (1, 1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[Price] [int] NOT NULL,

 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[RenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

ALTER TABLE Comp229TeamAssign.[dbo].[Rental]
ADD CONSTRAINT FK_Rental_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)

ALTER TABLE Comp229TeamAssign.[dbo].[Rental]
ADD CONSTRAINT FK_Rental_ShoeID FOREIGN KEY (ShoeID) REFERENCES Shoes(ShoeID)

--Shoes
INSERT INTO Comp229TeamAssign.[dbo].Shoes (Brand, Model, Quality, Price, Image)
VALUES ('Salomon', 'Quest Pro Sport 100 CS Men Ski Boots 2017/18', 5, 39, 
'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcStxQqgGqzJzCmXk5iWZmj4lrsfwkcUMnYt9ZU313UfC997sxVNpBaTm3zuHpIH6UcZq-BkXaMI&usqp=CAY')

INSERT INTO Comp229TeamAssign.[dbo].Shoes (Brand, Model, Quality, Price, Image)
VALUES ('Salomon', 'QST Access 70 Mens Ski Boots 2017/18', 3, 19, 
'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSJ1akiWk1Yyh1NF4ktbNX84CE6nS6_p_1yVj-WW1xYMKgh_oJY_aQDth12BHiYVA-xtVniOoeq&usqp=CAY')


INSERT INTO Comp229TeamAssign.[dbo].Shoes (Brand, Model, Quality, Price, Image)
VALUES ('DalBello', 'Avanti AX 105 Mens Ski Boots 2017/18', 7, 31, 
'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRAxivl2rAFN45glnsaKtMwYFHdAWpsF5rk_O5_KQ_B0b0r4WfLHXV6m-3nybEmSdN_0l0g_3I&usqp=CAY')

INSERT INTO Comp229TeamAssign.[dbo].Shoes (Brand, Model, Quality, Price, Image)
VALUES ('Rossignol', 'Track 90 Mens Black Ski Boots 2017/18', 2, 26,
'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTWHEeFQ1_t_ONRcj9k5i5oOu0BL3LEBW4BURvYvFVyunnhs6Q9Ob-YjyBRXOjul9LNEYHjK8s&usqp=CAY')

INSERT INTO Comp229TeamAssign.[dbo].Shoes (Brand, Model, Quality, Price, Image)
VALUES ('Lange', 'SX 90 Mens Ski Boots 2017/18', 5, 26,
'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQeuv3w6kS122O34IekMiO1ctSc7yBgmSNrzA5Khr6oty4WN2fegzOCjLBaiYGIhI5sZIib_SQ&usqp=CAY')



