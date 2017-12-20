USE [Comp229TeamAssign]

/* Object: Table Comp229-TeamAssign.[dbo].[Shoes] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Shoes](
	[ShoesID] [int] IDENTITY (300000, 1) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

--Shoes
INSERT INTO Comp229TeamAssign.[dbo].Shoes (ShoesID, Brand, Category)
VALUES ('2000', 'BrandA', 'CategoryA')

INSERT INTO Comp229TeamAssign.[dbo].Shoes (ShoesID, Brand, Category)
VALUES ('3000', 'BrandB', 'CategoryB')
