USE [master]
GO
/****** Object:  Database [RehberDB]    Script Date: 16.11.2019 15:17:13 ******/
CREATE DATABASE [RehberDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RehberDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RehberDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RehberDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\RehberDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RehberDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RehberDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RehberDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RehberDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RehberDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RehberDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RehberDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RehberDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RehberDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RehberDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RehberDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RehberDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RehberDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RehberDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RehberDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RehberDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RehberDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RehberDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RehberDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RehberDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RehberDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RehberDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RehberDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RehberDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RehberDB] SET RECOVERY FULL 
GO
ALTER DATABASE [RehberDB] SET  MULTI_USER 
GO
ALTER DATABASE [RehberDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RehberDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RehberDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RehberDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RehberDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RehberDB', N'ON'
GO
USE [RehberDB]
GO
/****** Object:  Table [dbo].[City]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [nvarchar](5) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Company] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[RegionID] [int] NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[CurrencyID] [int] NULL,
	[TransportID] [int] NULL,
	[UserID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[BankName] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[CustomerCode] [nvarchar](20) NULL,
	[AuthorizedPerson] [nvarchar](100) NULL,
	[WebSite] [nvarchar](150) NULL,
	[Phone2] [nvarchar](20) NULL,
	[ProductsGroup] [nvarchar](max) NULL,
	[Brands] [nvarchar](max) NULL,
	[Sector] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Dealers] [bit] NULL,
	[FaxNo] [nvarchar](20) NULL,
	[MobilePhone] [nvarchar](20) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegionName] [nvarchar](150) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransportName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Transport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.11.2019 15:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](8) NULL,
	[Role] [bit] NULL,
	[FirstNameLastName] [nvarchar](150) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [Role], [FirstNameLastName]) VALUES (1, N'admin', N'admin', 1, NULL)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Role], [FirstNameLastName]) VALUES (2, N'user', N'1234', 0, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_City]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Country]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Currency] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Currency]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Region]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Transport] FOREIGN KEY([TransportID])
REFERENCES [dbo].[Transport] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Transport]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Users]
GO
USE [master]
GO
ALTER DATABASE [RehberDB] SET  READ_WRITE 
GO
