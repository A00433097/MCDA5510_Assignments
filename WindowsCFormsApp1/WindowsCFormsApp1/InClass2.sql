USE [InClass2]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/05/18 11:13:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/05/18 11:13:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](256) NULL,
	[LastName] [varchar](50) NULL,
	[AddressID] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailAddresses]    Script Date: 11/05/18 11:13:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailAddresses](
	[ID] [int] NULL,
	[CustomerID] [int] NULL,
	[email Address] [nvarchar](50) NULL
) ON [PRIMARY]
GO
