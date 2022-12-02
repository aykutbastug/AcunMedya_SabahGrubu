USE [master]
GO
/****** Object:  Database [Northwind]    Script Date: 2.12.2022 13:29:14 ******/
CREATE DATABASE [Northwind]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Northwind', FILENAME = N'C:\temp\northwnd.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Northwind_log', FILENAME = N'C:\temp\northwnd.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Northwind] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Northwind].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Northwind] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Northwind] SET ARITHABORT OFF 
GO
ALTER DATABASE [Northwind] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Northwind] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Northwind] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Northwind] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Northwind] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Northwind] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Northwind] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Northwind] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Northwind] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Northwind] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Northwind] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Northwind] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Northwind] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Northwind] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Northwind] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Northwind] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Northwind] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Northwind] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Northwind] SET  MULTI_USER 
GO
ALTER DATABASE [Northwind] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Northwind] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Northwind] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Northwind] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Northwind] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Northwind] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Northwind', N'ON'
GO
ALTER DATABASE [Northwind] SET QUERY_STORE = OFF
GO
USE [Northwind]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[StokDurumRaporu]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[StokDurumRaporu]
AS
SELECT TOP (100) PERCENT P.ProductID AS [Ürün Id], P.ProductName AS [Ürün Adı], C.CategoryName AS [Kategori Adı], P.UnitsInStock AS [Stok Miktarı]
FROM   dbo.Products as P

INNER JOIN dbo.Categories as C ON P.CategoryID = C.CategoryID

where P.ProductName like 'Si%'
ORDER BY P.ProductName DESC
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[MusteriTasimaUcretleri]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MusteriTasimaUcretleri]
AS
SELECT dbo.Customers.CompanyName AS [Müşteri Adı], dbo.Customers.CustomerID AS [Müşteri Id], dbo.Orders.OrderID AS [Sipariş No], dbo.Orders.OrderDate AS [Sipariş Tarihi], dbo.Orders.Freight AS [Taşıma Ücreti]
FROM   dbo.Orders INNER JOIN
             dbo.Customers ON dbo.Orders.CustomerID = dbo.Customers.CustomerID
GO
/****** Object:  View [dbo].[MusteriTasimaUcretleri2]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[MusteriTasimaUcretleri2]
as
select C.CompanyName as [Müşteri Adı], C.CustomerID AS [Müşteri Id], O.OrderID as [Sipariş No], O.OrderDate as [Sipariş Tarihi], O.Freight as [Taşıma Ücreti] 

from dbo.Orders as O
inner join dbo.Customers as C on C.CustomerID=O.CustomerID
GO
/****** Object:  View [dbo].[ViewCustomerList]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewCustomerList]
AS
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax
FROM   dbo.Customers
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Customer and Suppliers by City]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Customer and Suppliers by City] AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
GO
/****** Object:  View [dbo].[Alphabetical list of products]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Alphabetical list of products] AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
GO
/****** Object:  View [dbo].[Current Product List]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Current Product List] AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
GO
/****** Object:  View [dbo].[Orders Qry]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Orders Qry] AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GO
/****** Object:  View [dbo].[Products Above Average Price]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Products Above Average Price] AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
GO
/****** Object:  View [dbo].[Products by Category]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Products by Category] AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
GO
/****** Object:  View [dbo].[Quarterly Orders]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Quarterly Orders] AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[ReportsTo] [int] NULL,
	[PhotoPath] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Invoices]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Invoices] AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia
GO
/****** Object:  View [dbo].[Order Details Extended]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Order Details Extended] AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Order Subtotals]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[Order Subtotals] AS
SELECT [OrderDetails].OrderID, Sum(CONVERT(money,([OrderDetails].UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM [OrderDetails]
GROUP BY [OrderDetails].OrderID
GO
/****** Object:  View [dbo].[Product Sales for 1997]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Product Sales for 1997] AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
GO
/****** Object:  View [dbo].[Category Sales for 1997]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Category Sales for 1997] AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
GO
/****** Object:  View [dbo].[Sales by Category]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Sales by Category] AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
GO
/****** Object:  View [dbo].[Sales Totals by Amount]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Sales Totals by Amount] AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
GO
/****** Object:  View [dbo].[Summary of Sales by Quarter]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Summary of Sales by Quarter] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
/****** Object:  View [dbo].[Summary of Sales by Year]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Summary of Sales by Year] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
/****** Object:  View [dbo].[View_1]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.Products.ProductID, dbo.Products.ProductName, dbo.Shippers.ShipperID, dbo.Shippers.CompanyName, dbo.Categories.CategoryName, dbo.Categories.CategoryID
FROM   dbo.Products INNER JOIN
             dbo.Categories ON dbo.Products.CategoryID = dbo.Categories.CategoryID CROSS JOIN
             dbo.Shippers
GO
/****** Object:  Table [dbo].[CustomerCustomerDemo]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerTypeID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDemographics]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDemographics](
	[CustomerTypeID] [nchar](10) NOT NULL,
	[CustomerDesc] [ntext] NULL,
 CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeID] [int] NOT NULL,
	[TerritoryID] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED 
(
	[EmployeeID] ASC,
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_Customers]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Customers](
	[Process] [varchar](50) NULL,
	[ProcessDate] [datetime] NULL,
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyUsers]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MyUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionID] [int] NOT NULL,
	[RegionDescription] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Territories]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test Tablosu]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test Tablosu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testo]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Desc] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Testo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CategoryName]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [City]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CompanyName]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PostalCode]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers]
(
	[PostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Region]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers]
(
	[Region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [LastName]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Employees]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PostalCode]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Employees]
(
	[PostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [OrderID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [OrdersOrder_Details]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [OrdersOrder_Details] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ProductID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ProductsOrder_Details]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ProductsOrder_Details] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CustomerID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CustomersOrders]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [EmployeeID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [EmployeesOrders]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [OrderDate]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ShippedDate]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders]
(
	[ShippedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [ShippersOrders]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ShippersOrders] ON [dbo].[Orders]
(
	[ShipVia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShipPostalCode]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders]
(
	[ShipPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CategoriesProducts]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [CategoryID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ProductName]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Products]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SupplierID]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [SupplierID] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SuppliersProducts]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [SuppliersProducts] ON [dbo].[Products]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CompanyName]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PostalCode]    Script Date: 2.12.2022 13:29:14 ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers]
(
	[PostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)) FOR [UnitsOnOrder]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)) FOR [ReorderLevel]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ReportsTo])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Employees]
GO
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territories] ([TerritoryID])
GO
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Territories]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([ShipVia])
REFERENCES [dbo].[Shippers] ([ShipperID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Territories]  WITH CHECK ADD  CONSTRAINT [FK_Territories_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
ALTER TABLE [dbo].[Territories] CHECK CONSTRAINT [FK_Territories_Region]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [CK_Birthdate] CHECK  (([BirthDate]<getdate()))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CK_Birthdate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
GO
/****** Object:  StoredProcedure [dbo].[AddCategory]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddCategory]
	@CategoryName nvarchar(15),
	@Description ntext
AS
	INSERT INTO Categories(CategoryName, Description) 
	VALUES (@CategoryName, @Description)
GO
/****** Object:  StoredProcedure [dbo].[CustOrderHist]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CustOrderHist] @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersDetail]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustOrdersDetail] @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersOrders]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustOrdersOrders] @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
GO
/****** Object:  StoredProcedure [dbo].[Employee Sales by Country]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Employee Sales by Country] 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
/****** Object:  StoredProcedure [dbo].[KritikStokMiktarKontrolu]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Ürün Id paramatre olacak alacak
--ilgili ürünü bulup stok miktarını kontrol edecek
--20 nin altında ise 'Stok kritik seviyede' mesajı dönecek
--20 ve üzerinde ise 'Stok miktarı yeterli' mesajı döneccek

create proc [dbo].[KritikStokMiktarKontrolu]
	@productId int
as
begin

	declare @stokMiktari int
	select @stokMiktari=UnitsInStock from dbo.Products where ProductID=@productId

	if  (@stokMiktari < 20)
	begin
		select 'Stok kritik seviyede. Stok Miktarı=' + CONVERT(varchar, @stokMiktari)
	end
	else begin
		select 'Stok miktarı yeterli. Stok Miktarı=' + CONVERT(varchar, @stokMiktari)
	end

end
GO
/****** Object:  StoredProcedure [dbo].[KritikStokRaporu]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KritikStokRaporu]
	@KritikStokSeviyesi int
as
begin

	select 
	P.ProductName as [Ürün Adı],
	P.UnitsInStock as [Stok Miktarı],
	C.CategoryName as [Kategori Adı],
	S.CompanyName as [Tedarikçi],
	S.Phone as [Telefon]

	from dbo.Products as P 
	inner join dbo.Categories as C on C.CategoryID=P.CategoryID
	inner join dbo.Suppliers as S on S.SupplierID=P.SupplierID
	where P.UnitsInStock<@KritikStokSeviyesi

end
GO
/****** Object:  StoredProcedure [dbo].[PersonelOlustur]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PersonelOlustur] 
	@Adi nvarchar(10),
	@Soyadi nvarchar(20),
	@Title nvarchar(30),
	@City nvarchar(15)
AS
BEGIN
	declare @sonuc varchar(100)

	if ((select count(*) from dbo.Employees where FirstName=@Adi and LastName=@Soyadi) > 0)
	begin
		set @sonuc = @Adi + ' ' + @Soyadi + ' isimli personel sistemde zaten kayıtlı..'
	end
	else begin
		insert into dbo.Employees (LastName, FirstName, Title, City) values (@Soyadi, @Adi, @Title, @City)
		set @sonuc = @Adi + ' ' + @Soyadi + ' isimli personel kayıt edildi..'
	end


	select @sonuc as [Sonuç]

END
GO
/****** Object:  StoredProcedure [dbo].[Sales by Year]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Sales by Year] 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
/****** Object:  StoredProcedure [dbo].[SalesByCategory]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
GO
/****** Object:  StoredProcedure [dbo].[SiparisOlustur]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SiparisOlustur]
	@OrderID int,
	@ProductID int, 
	@UnitPrice money, 
	@Quantity smallint, 
	@Discount real
as
begin

	declare @stokYeterliMi smallint
	exec @stokYeterliMi= dbo.StokYeterliMi @ProductID, @Quantity

	if (@stokYeterliMi = 1)
	begin
		
		if ((select COUNT(*) from dbo.OrderDetails where OrderID=@OrderID and ProductID=@ProductID) > 0)
		begin
			update dbo.OrderDetails set Quantity=Quantity+@Quantity where OrderID=@OrderID and ProductID=@ProductID
			select 'Sipariş güncellendi'
		end
		else begin
			insert into [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) values (@OrderID, @ProductID, @UnitPrice, @Quantity, @Discount)
			select 'Sipariş oluşturuldu'
		end
	end
	else begin
		select 'Stok miktarı yeterli değil..'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerInsert]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CustomerInsert]
	@CustomerID nchar(5),
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30),
	@ContactTitle nvarchar(30),
	@Address nvarchar(60),
	@City nvarchar(15),
	@Region nvarchar(15),
	@PostalCode nvarchar(10),
	@Country nvarchar(15),
	@Phone nvarchar(24),
	@Fax nvarchar(24)
as
begin

	UPDATE [dbo].[Customers]
	   SET 
		   [CompanyName] = @CompanyName
		  ,[ContactName] = @ContactName
		  ,[ContactTitle] = @ContactTitle
		  ,[Address] = @Address
		  ,[City] = @City
		  ,[Region] = @Region
		  ,[PostalCode] = @PostalCode
		  ,[Country] = @Country
		  ,[Phone] = @Phone
		  ,[Fax] = @Fax
	 WHERE [CustomerID] = @CustomerID


 end
GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerSearch]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CustomerSearch]
	@metin varchar(50)
AS
BEGIN
	SELECT CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax
FROM   dbo.Customers where CompanyName like '%'+@metin+'%' or Phone like '%'+@metin+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_IndexAnalysis]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/********************************************************************************************* 
Index Analysis Script - SQL Server 2008
(C) 2013, Jason Strate

Feedback:
    mailto:jasonstrate@gmail.com 
    http://www.jasonstrate.com

License: 
   This query is free to download and use for personal, educational, and internal 
   corporate purposes, provided that this header is preserved. Redistribution or sale 
   of this query, in whole or in part, is prohibited without the author's express 
   written consent. 

More details:
	https://github.com/StrateSQL/sqlserver_indexanalysis

*********************************************************************************************/ 
CREATE PROCEDURE [dbo].[sp_IndexAnalysis]
(
 @TableName NVARCHAR(256) = NULL ,
 @IncludeMemoryDetails BIT = 1 ,
 @IncludeMissingIndexes BIT = 1 ,
 @IncludeMissingFKIndexes BIT = 1 ,
 @ConsolidatePartitionStats BIT = 1 ,
 @Output VARCHAR(20) = 'DUMP' ,
 @PageCompressionThreshold INT = 1000 ,
 @RowCompressionThreshold DECIMAL(4, 2) = 1 ,
 @CheckCompression BIT = 1 ,
 @ReadOnlyDatabase BIT = 0 ,
 @MaxMissingIndexCount TINYINT = 5 ,
 @MinLookupThreshold INT = 1000 ,
 @MinScanThreshold INT = 100 ,
 @Scan2SeekRatio INT = 1000 ,
 @ProcessingMessages BIT = 0
 )
    WITH RECOMPILE
AS
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT ON;
 
    DECLARE @ERROR_MESSAGE NVARCHAR(2048) ,
        @ERROR_SEVERITY INT ,
        @ERROR_STATE INT ,
        @PROCESSING_START DATETIME;
 
    DECLARE @SQL NVARCHAR(MAX) ,
        @DB_ID INT ,
        @ObjectID INT ,
        @DatabaseName NVARCHAR(MAX);
 
    BEGIN TRY
--================================================================================================
-- Remove temporary tables	
--================================================================================================
        IF OBJECT_ID('tempdb..#MemoryBuffer') IS NOT NULL
            DROP TABLE [#MemoryBuffer];

        IF OBJECT_ID('tempdb..#TableMeta') IS NOT NULL
            DROP TABLE [#TableMeta];

        IF OBJECT_ID('tempdb..#IndexMeta') IS NOT NULL
            DROP TABLE [#IndexMeta];

        IF OBJECT_ID('tempdb..#IndexStatistics') IS NOT NULL
            DROP TABLE [#IndexStatistics];

        IF OBJECT_ID('tempdb..#ForeignKeys') IS NOT NULL
            DROP TABLE [#ForeignKeys];
				
        IF @Output NOT IN ('DUMP', 'DETAILED', 'DUPLICATE', 'OVERLAPPING', 'REALIGN')
            RAISERROR('The value "%s" provided for the @Output parameter is not valid',16,1,@Output);
 
        SELECT  @DB_ID = DB_ID() ,
                @ObjectID = OBJECT_ID(QUOTENAME(DB_NAME(DB_ID())) + '.' + COALESCE(QUOTENAME(PARSENAME(@TableName, 2)), '') + '.'
                                      + QUOTENAME(PARSENAME(@TableName, 1))) ,
                @DatabaseName = QUOTENAME(DB_NAME(DB_ID()));

        IF @TableName IS NOT NULL
            AND @ObjectID IS NULL
            RAISERROR('The object "%s" could not be found.  Execution cancelled.',16,1,@TableName);

-- Obtain memory buffer information on database objects
        CREATE TABLE [#MemoryBuffer]
        (
         [database_id] INT ,
         [object_id] INT ,
         [index_id] INT ,
         [partition_number] INT ,
         [buffered_page_count] INT ,
         [buffered_mb] DECIMAL(12, 2)
        );

        IF @IncludeMemoryDetails = 1
        BEGIN
            SET @PROCESSING_START = GETDATE();
            SET @SQL = 'WITH AllocationUnits
		AS (
			SELECT p.object_id
				,p.index_id
				,CASE WHEN @ConsolidatePartitionStats = 0 THEN p.partition_number ELSE -1 END AS partition_number
				,au.allocation_unit_id
			FROM ' + @DatabaseName + '.sys.allocation_units AS au
				INNER JOIN ' + @DatabaseName + '.sys.partitions AS p ON au.container_id = p.hobt_id AND (au.type = 1 OR au.type = 3)
			UNION ALL
			SELECT p.object_id
				,p.index_id
				,CASE WHEN @ConsolidatePartitionStats = 0 THEN p.partition_number ELSE -1 END AS partition_number 
				,au.allocation_unit_id
			FROM ' + @DatabaseName + '.sys.allocation_units AS au
				INNER JOIN ' + @DatabaseName + '.sys.partitions AS p ON au.container_id = p.partition_id AND au.type = 2
		)
		SELECT DB_ID()
			,au.object_id
			,au.index_id
			,au.partition_number
			,COUNT(*) AS buffered_page_count
			,CONVERT(DECIMAL(12,2), CAST(COUNT(*) as bigint)*CAST(8 as float)/1024) as buffer_mb
		FROM ' + @DatabaseName + '.sys.dm_os_buffer_descriptors AS bd 
			INNER JOIN AllocationUnits au ON bd.allocation_unit_id = au.allocation_unit_id
		WHERE bd.database_id = db_id()
		GROUP BY au.object_id, au.index_id, au.partition_number		
		';
		
            BEGIN TRY
                IF @ConsolidatePartitionStats = 1
                BEGIN
                    RAISERROR('Strate''s Warning: Buffered memory totals are an aggregate for all partitions on the table. This behaviour is controlled by the @ConsolidatePartitionStats parameter',10,1) WITH NOWAIT;
                    PRINT '';
                END;
                
                INSERT  INTO [#MemoryBuffer]
                        EXEC [sys].[sp_executesql] @SQL, N'@ConsolidatePartitionStats BIT', @ConsolidatePartitionStats = @ConsolidatePartitionStats;

                IF @ProcessingMessages = 1
                    PRINT 'Processing #MemoryBuffer... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
            END TRY
            BEGIN CATCH
                SELECT  @ERROR_MESSAGE = 'Populate #MemoryBuffer (Line ' + CAST(ERROR_LINE() AS NVARCHAR(25)) + '): ' + ERROR_MESSAGE() ,
                        @ERROR_SEVERITY = ERROR_SEVERITY() ,
                        @ERROR_STATE = ERROR_STATE();
     
                RAISERROR(@ERROR_MESSAGE, @ERROR_SEVERITY, @ERROR_STATE);
            END CATCH;
        END;

-- Obtain index meta data information
        BEGIN
            SET @PROCESSING_START = GETDATE();

            CREATE TABLE [#TableMeta]
            (
             [database_id] SMALLINT ,
             [schema_id] INT ,
             [schema_name] NVARCHAR(128) ,
             [object_id] INT ,
             [table_name] NVARCHAR(128) ,
             [object_name] NVARCHAR(260) ,
             [table_column_count] SMALLINT ,
             [table_row_count] BIGINT ,
             [has_unique] BIT
            );

            SET @SQL = N'SELECT
			DB_ID()
			, s.schema_id
			, s.name
			, t.object_id
			, t.name
			, QUOTENAME(s.name)+''.''+QUOTENAME(t.name)
			, c2.table_column_count
			, ps2.row_count
			, CASE WHEN i2.is_unique > 0 THEN 1 ELSE 0 END
		FROM ' + @DatabaseName + '.sys.tables t
			INNER JOIN ' + @DatabaseName + '.sys.schemas s ON t.schema_id = s.schema_id
			CROSS APPLY (SELECT SUM(row_count) AS row_count FROM ' + @DatabaseName
                + '.sys.dm_db_partition_stats ps WHERE t.object_id = ps.object_id AND ps.index_id IN (0,1)) ps2
			CROSS APPLY (SELECT COUNT(*) AS table_column_count FROM ' + @DatabaseName + '.sys.columns c1 WHERE t.object_id = c1.object_id) c2
			CROSS APPLY (SELECT COUNT(*) AS is_unique FROM ' + @DatabaseName + '.sys.indexes i1 WHERE t.object_id = i1.object_id AND is_unique = 1) i2';
 
            IF @ObjectID IS NOT NULL
                SET @SQL = @SQL + CHAR(13) + 'WHERE t.object_id = @ObjectID ';

            BEGIN TRY
                INSERT  INTO [#TableMeta]
                        EXEC [sys].[sp_executesql] @SQL, N'@DB_ID INT, @ObjectID INT', @DB_ID = @DB_ID, @ObjectID = @ObjectID;

                IF @ProcessingMessages = 1
                    PRINT 'Processing #TableMeta... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
            END TRY
            BEGIN CATCH
                SELECT  @ERROR_MESSAGE = 'Populate #TableMeta (Line ' + CAST(ERROR_LINE() AS NVARCHAR(25)) + '): ' + ERROR_MESSAGE() ,
                        @ERROR_SEVERITY = ERROR_SEVERITY() ,
                        @ERROR_STATE = ERROR_STATE();
     
                RAISERROR(@ERROR_MESSAGE, @ERROR_SEVERITY, @ERROR_STATE);
            END CATCH; 
        END;

        BEGIN
            SET @PROCESSING_START = GETDATE();

            CREATE TABLE [#IndexMeta]
            (
             [database_id] SMALLINT ,
             [object_id] INT ,
             [filegroup_name] NVARCHAR(128) ,
             [compression_type] NVARCHAR(128) ,
             [index_id] INT ,
             [index_name] NVARCHAR(128) ,
             [partition_count] SMALLINT ,
             [partition_number] INT ,
             [is_primary_key] BIT ,
             [is_unique] BIT ,
             [is_disabled] BIT ,
             [type_desc] NVARCHAR(128) ,
             [fill_factor] TINYINT ,
             [is_padded] BIT ,
             [reserved_page_count] BIGINT ,
             [used_page_count] BIGINT ,
             [size_in_mb] DECIMAL(12, 2) ,
             [index_row_count] BIGINT ,
             [filter_definition] NVARCHAR(MAX) ,
             [indexed_columns] NVARCHAR(MAX) ,
             [indexed_column_count] SMALLINT ,
             [included_columns] NVARCHAR(MAX) ,
             [included_column_count] SMALLINT ,
             [key_columns] NVARCHAR(MAX) ,
             [data_columns] NVARCHAR(MAX) ,
             [indexed_columns_ids] NVARCHAR(1024) ,
             [included_column_ids] NVARCHAR(1024) ,
             [distinct_indexed_columns_ids] NVARCHAR(1024)
            );

 
            SET @SQL = N'SELECT
			database_id = DB_ID()
			, object_id = t.object_id
			, filegroup = ds.name
			, x.data_compression_desc
			, i.index_id
			, index_name = COALESCE(i.name, ''N/A'')
            , x.partition_count
			, x.partition_number
			, i.is_primary_key
			, i.is_unique
			, i.is_disabled
			, type_desc = CASE WHEN i.is_unique = 1 THEN ''UNIQUE '' ELSE '''' END + i.type_desc
			, i.fill_factor
			, i.is_padded
			, x.reserved_page_count
            , x.used_page_count
			, size_in_mb = CAST(reserved_page_count * CAST(8 as float) / 1024 as DECIMAL(12,2)) 
			, row_count
			, i.filter_definition
			, indexed_columns = STUFF((
					SELECT '', '' + QUOTENAME(c.name)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 0
					ORDER BY key_ordinal ASC
					FOR XML PATH('''')), 1, 2, '''')
			, indexed_column_count = (
					SELECT COUNT(*)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 0)
			, included_columns = STUFF((
					SELECT '', '' + QUOTENAME(c.name)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 1
					ORDER BY key_ordinal ASC
					FOR XML PATH('''')), 1, 2, '''') 
			, included_column_count = (
					SELECT COUNT(*)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 1)
			, key_columns = STUFF((
					SELECT '', '' + QUOTENAME(c.name)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 0
					ORDER BY key_ordinal ASC
					FOR XML PATH(''''))
					+ COALESCE((SELECT '', '' + QUOTENAME(c.name)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
						LEFT OUTER JOIN ' + @DatabaseName + '.sys.index_columns ic_key ON c.object_id = ic_key.object_id 
							AND c.column_id = ic_key.column_id 
							AND i.index_id = ic_key.index_id
							AND ic_key.is_included_column = 0
					WHERE i.object_id = ic.object_id
					AND ic.index_id = 1
					AND ic.is_included_column = 0
					AND ic_key.index_id IS NULL
					ORDER BY ic.key_ordinal ASC
					FOR XML PATH('''')),''''), 1, 2, '''')
			, data_columns = CASE WHEN i.index_id IN (0,1) THEN ''ALL-COLUMNS'' ELSE STUFF((
					SELECT '', '' + QUOTENAME(c.name)
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
						LEFT OUTER JOIN ' + @DatabaseName
                + '.sys.index_columns ic_key ON c.object_id = ic_key.object_id AND c.column_id = ic_key.column_id AND ic_key.index_id = 1
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND ic.is_included_column = 1
					AND ic_key.index_id IS NULL
					ORDER BY ic.key_ordinal ASC
					FOR XML PATH('''')), 1, 2, '''') END
			, indexed_column_ids = (SELECT QUOTENAME(CAST(ic.column_id AS VARCHAR(10)) 
						+ CASE WHEN ic.is_descending_key = 0 THEN ''+'' ELSE ''-'' END,''('')
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND is_included_column = 0
					ORDER BY key_ordinal ASC
					FOR XML PATH(''''))
					+ ''|'' + COALESCE((SELECT QUOTENAME(CAST(ic.column_id AS VARCHAR(10)) 
						+ CASE WHEN ic.is_descending_key = 0 THEN ''+'' ELSE ''-'' END, ''('')
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
						LEFT OUTER JOIN ' + @DatabaseName + '.sys.index_columns ic_key ON c.object_id = ic_key.object_id 
							AND c.column_id = ic_key.column_id 
							AND i.index_id = ic_key.index_id
							AND ic_key.is_included_column = 0
					WHERE i.object_id = ic.object_id
					AND ic.index_id = 1
					AND ic.is_included_column = 0
					AND ic_key.index_id IS NULL
					ORDER BY ic.key_ordinal ASC
					FOR XML PATH('''')),'''')
				+ CASE WHEN i.is_unique = 1 THEN ''U'' ELSE '''' END
			, included_column_ids = CASE WHEN i.index_id IN (0,1) THEN ''ALL-COLUMNS'' ELSE
					COALESCE((SELECT QUOTENAME(ic.column_id,''('')
					FROM ' + @DatabaseName + '.sys.index_columns ic
						INNER JOIN ' + @DatabaseName + '.sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
						LEFT OUTER JOIN ' + @DatabaseName
                + '.sys.index_columns ic_key ON c.object_id = ic_key.object_id AND c.column_id = ic_key.column_id AND ic_key.index_id = 1
					WHERE i.object_id = ic.object_id
					AND i.index_id = ic.index_id
					AND ic.is_included_column = 1
					AND ic_key.index_id IS NULL
					ORDER BY ic.key_ordinal ASC
					FOR XML PATH('''')), SPACE(0)) END
			, distinct_indexed_columns_ids = (SELECT QUOTENAME(ic.column_id)
                    FROM ' + @DatabaseName + '.sys.index_columns ic
                    INNER JOIN ' + @DatabaseName + '.sys.columns c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
                    WHERE ic.object_id = i.object_id 
                    AND (ic.index_id = i.index_id OR ic.index_id = 1)
                    AND is_included_column = 0
                    GROUP BY ic.column_id
                    ORDER BY ic.column_id
                    FOR XML PATH(''''))
		FROM ' + @DatabaseName + '.sys.tables t
			INNER JOIN ' + @DatabaseName + '.sys.schemas s ON t.schema_id = s.schema_id
			INNER JOIN ' + @DatabaseName + '.sys.indexes i ON t.object_id = i.object_id
			INNER JOIN ' + @DatabaseName + '.sys.data_spaces ds ON i.data_space_id = ds.data_space_id
            CROSS APPLY (SELECT p.object_id ,
                    p.index_id ,
                    CASE WHEN @ConsolidatePartitionStats = 0 THEN p.partition_number ELSE -1 END AS partition_number,
                    COUNT(*) AS partition_count,
                    SUM(ps.row_count) AS row_count,       
                    CASE 1.*SUM(p.data_compression)/NULLIF(COUNT(*),0)
                        WHEN 0 THEN ''NONE''
                        WHEN 1 THEN ''ROW''
                        WHEN 2 THEN ''PAGE''
                        ELSE ''MIXED'' END AS data_compression_desc,   
                    SUM(ps.in_row_data_page_count) AS in_row_data_page_count,
                    SUM(ps.in_row_used_page_count) AS in_row_used_page_count ,
                    SUM(ps.in_row_reserved_page_count) AS in_row_reserved_page_count,
                    SUM(ps.lob_used_page_count) AS lob_used_page_count,
                    SUM(ps.lob_reserved_page_count) AS lob_reserved_page_count,
                    SUM(ps.row_overflow_used_page_count) AS row_overflow_used_page_count,
                    SUM(ps.row_overflow_reserved_page_count) AS row_overflow_reserved_page_count,
                    SUM(ps.used_page_count) AS used_page_count ,
                    SUM(ps.reserved_page_count) AS reserved_page_count
                FROM ' + @DatabaseName + '.sys.partitions p 
                    INNER JOIN ' + @DatabaseName
                + '.sys.dm_db_partition_stats ps ON ps.object_id = p.object_id AND ps.index_id = p.index_id AND ps.partition_id = p.partition_id
                WHERE i.object_id = p.object_id AND i.index_id = p.index_id
                GROUP BY p.object_id, p.index_id, CASE WHEN @ConsolidatePartitionStats = 0 THEN p.partition_number ELSE -1 END) x
                ';
 
            IF @ObjectID IS NOT NULL
                SET @SQL = @SQL + CHAR(13) + 'WHERE t.object_id = @ObjectID ';
 
            BEGIN TRY
                IF @ConsolidatePartitionStats = 1
                BEGIN
                    RAISERROR('Strate''s Warning: Page count totals are a summary of all partitions. This behaviour is controlled by the @ConsolidatePartitionStats parameter',10,1) WITH NOWAIT;
                    PRINT '';
                END;

                INSERT  INTO [#IndexMeta]
                        EXEC [sys].[sp_executesql] @SQL, N'@DB_ID INT, @ObjectID INT, @ConsolidatePartitionStats INT', @DB_ID = @DB_ID, @ObjectID = @ObjectID,
                            @ConsolidatePartitionStats = @ConsolidatePartitionStats;

                IF @ProcessingMessages = 1
                    PRINT 'Processing #IndexMeta... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
            END TRY
            BEGIN CATCH
                SELECT  @ERROR_MESSAGE = 'Populate #IndexMeta (Line ' + CAST(ERROR_LINE() AS NVARCHAR(25)) + '): ' + ERROR_MESSAGE() ,
                        @ERROR_SEVERITY = ERROR_SEVERITY() ,
                        @ERROR_STATE = ERROR_STATE();
     
                RAISERROR(@ERROR_MESSAGE, @ERROR_SEVERITY, @ERROR_STATE);
            END CATCH;
        END;

        BEGIN
            SET @PROCESSING_START = GETDATE();

            IF @ConsolidatePartitionStats = 1
            BEGIN
                RAISERROR('Strate''s Warning: Index operational stats (locking, blocking, latching, etc.) are summarized from all partitions. This behaviour is controlled by the @ConsolidatePartitionStats parameter',10,1) WITH NOWAIT;
                PRINT '';
            END;
            ELSE
            BEGIN
                RAISERROR('Strate''s Warning: Index usage stats are summarized at the index level, per partition data is not available.',10,1) WITH NOWAIT;
                PRINT '';
            END;

            SELECT  IDENTITY( INT,1,1 ) AS [row_id] ,
                    CAST('' AS VARCHAR(10)) AS [index_action] ,
                    CAST('' AS VARCHAR(50)) AS [index_pros] ,
                    CAST('' AS VARCHAR(50)) AS [index_cons] ,
                    [tm].[database_id] ,
                    [im].[filegroup_name] ,
                    [im].[compression_type] ,
                    [tm].[schema_name] ,
                    [im].[object_id] ,
                    [tm].[table_name] ,
                    [tm].[object_name] ,
                    [im].[index_id] ,
                    [im].[index_name] ,
                    [im].[is_primary_key] ,
                    [im].[is_unique] ,
                    [im].[is_disabled] ,
                    [tm].[has_unique] ,
                    [im].[type_desc] ,
                    [im].[partition_count] ,
                    [im].[partition_number] ,
                    [im].[fill_factor] ,
                    [im].[is_padded] ,
                    [im].[reserved_page_count] ,
                    [im].[used_page_count] ,
                    [im].[index_row_count] / NULLIF([im].[used_page_count], 0) AS [average_rows_per_page] ,
                    [im].[size_in_mb] ,
                    COALESCE([mb].[buffered_page_count], 0) AS [buffered_page_count] ,
                    COALESCE([mb].[buffered_mb], 0) AS [buffered_mb] ,
                    CAST(0 AS INT) AS [table_buffered_mb] ,
                    COALESCE(CAST(100. * [mb].[buffered_page_count] / NULLIF([im].[reserved_page_count], 0) AS DECIMAL(12, 2)), 0) AS [buffered_percent] ,
                    [tm].[table_row_count] ,
                    [im].[index_row_count] ,
                    ROW_NUMBER() OVER (PARTITION BY [im].[object_id] ORDER BY [im].[is_primary_key] DESC, [ius].[user_seeks] + [ius].[user_scans]
                                       + [ius].[user_lookups] DESC) AS [index_rank] ,
                    CAST(0 AS INT) AS [full_index_rank] ,
                    [ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups] AS [user_total] ,
                    COALESCE(CAST(100 * ([ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups])
                             / (NULLIF(SUM([ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups]) OVER (PARTITION BY [im].[object_id]), 0) * 1.) AS DECIMAL(6,
                                                                                                                                                2)), 0) AS [user_total_pct] ,
                    CAST(0 AS DECIMAL(6, 2)) AS [estimated_user_total_pct] ,
                    CAST(0 AS FLOAT) AS [missing_index_impact] -- Dick Baker 201303 (INT range not big enough and is f.p. anyway)
                    ,
                    [ius].[user_seeks] ,
                    [ius].[user_scans] ,
                    [ius].[user_lookups] ,
                    [ius].[user_updates] ,
                    (1. * ([ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups])) / NULLIF([ius].[user_updates], 0) AS [read_to_update_ratio] ,
                    ([ios].[leaf_insert_count] + [ios].[leaf_delete_count] + [ios].[leaf_update_count] + [ios].[leaf_ghost_count]) / NULLIF([ius].[user_updates],
                                                                                                                                            0) AS [average_rows_per_update] ,
                    CASE WHEN [ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups] >= [ius].[user_updates]
                         THEN CEILING(1. * ([ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups]) / COALESCE(NULLIF([ius].[user_seeks], 0), 1))
                         ELSE 0
                    END AS [read_to_update] ,
                    CASE WHEN [ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups] <= [ius].[user_updates]
                         THEN CEILING(1. * ([ius].[user_updates]) / COALESCE(NULLIF([ius].[user_seeks] + [ius].[user_scans] + [ius].[user_lookups], 0), 1))
                         ELSE 0
                    END AS [update_to_read] ,
                    [ios].[row_lock_count] ,
                    [ios].[row_lock_wait_count] ,
                    [ios].[row_lock_wait_in_ms] ,
                    CAST(100.0 * [ios].[row_lock_wait_count] / NULLIF([ios].[row_lock_count], 0) AS DECIMAL(12, 2)) AS [row_block_pct] ,
                    CAST(1. * [ios].[row_lock_wait_in_ms] / NULLIF([ios].[row_lock_wait_count], 0) AS DECIMAL(12, 2)) AS [avg_row_lock_waits_ms] ,
                    [ios].[page_latch_wait_count] ,
                    CAST(1. * [ios].[page_latch_wait_in_ms] / NULLIF([ios].[page_io_latch_wait_count], 0) AS DECIMAL(12, 2)) AS [avg_page_latch_wait_ms] ,
                    [ios].[page_io_latch_wait_count] ,
                    CAST(1. * [ios].[page_io_latch_wait_in_ms] / NULLIF([ios].[page_io_latch_wait_count], 0) AS DECIMAL(12, 2)) AS [avg_page_io_latch_wait_ms] ,
                    [ios].[tree_page_latch_wait_count] AS [tree_page_latch_wait_count] ,
                    CAST(1. * [ios].[tree_page_latch_wait_in_ms] / NULLIF([ios].[tree_page_io_latch_wait_count], 0) AS DECIMAL(12, 2)) AS [avg_tree_page_latch_wait_ms] ,
                    [ios].[tree_page_io_latch_wait_count] ,
                    CAST(1. * [ios].[tree_page_io_latch_wait_in_ms] / NULLIF([ios].[tree_page_io_latch_wait_count], 0) AS DECIMAL(12, 2)) AS [avg_tree_page_io_latch_wait_ms] ,
                    [ios].[range_scan_count] + [ios].[singleton_lookup_count] AS [read_operations] ,
                    [ios].[leaf_insert_count] + [ios].[leaf_update_count] + [ios].[leaf_delete_count] + [ios].[leaf_ghost_count] AS [leaf_writes] ,
                    [ios].[leaf_allocation_count] AS [leaf_page_allocations] ,
                    [ios].[leaf_page_merge_count] AS [leaf_page_merges] ,
                    [ios].[nonleaf_insert_count] + [ios].[nonleaf_update_count] + [ios].[nonleaf_delete_count] AS [nonleaf_writes] ,
                    [ios].[nonleaf_allocation_count] AS [nonleaf_page_allocations] ,
                    [ios].[nonleaf_page_merge_count] AS [nonleaf_page_merges] ,
                    [ios].[page_compression_attempt_count] ,
                    [ios].[page_compression_success_count] ,
                    CAST(100. * [ios].[page_compression_success_count] / NULLIF([ios].[page_compression_attempt_count], 0) AS DECIMAL(6, 2)) AS [page_compression_success_rate] ,
                    [tm].[table_column_count] ,
                    [im].[indexed_columns] ,
                    [im].[indexed_column_count] ,
                    [im].[included_columns] ,
                    [im].[included_column_count] ,
                    [im].[filter_definition] ,
                    [im].[key_columns] ,
                    [im].[data_columns] ,
                    [im].[indexed_columns_ids] ,
                    [im].[included_column_ids] ,
                    [im].[distinct_indexed_columns_ids] ,
                    CAST('' AS VARCHAR(MAX)) AS [duplicate_indexes] ,
                    CAST('' AS SMALLINT) AS [first_dup_index_id] ,
                    CAST('' AS VARCHAR(MAX)) AS [overlapping_indexes] ,
                    CAST('' AS VARCHAR(MAX)) AS [sibling_indexes] ,
                    CAST('' AS VARCHAR(MAX)) AS [related_foreign_keys] ,
                    CAST('' AS XML) AS [related_foreign_keys_xml]
            INTO    [#IndexStatistics]
            FROM    [#TableMeta] [tm]
            INNER JOIN [#IndexMeta] [im] ON [im].[database_id] = [tm].[database_id]
                                            AND [im].[object_id] = [tm].[object_id]
            LEFT OUTER JOIN [sys].[dm_db_index_usage_stats] [ius] ON [im].[object_id] = [ius].[object_id]
                                                                     AND [im].[index_id] = [ius].[index_id]
                                                                     AND [im].[database_id] = [ius].[database_id]
            LEFT OUTER JOIN [#MemoryBuffer] [mb] ON [im].[object_id] = [mb].[object_id]
                                                    AND [im].[index_id] = [mb].[index_id]
                                                    AND [im].[partition_number] = [mb].[partition_number]
            LEFT OUTER JOIN (SELECT [database_id] ,
                                    [object_id] ,
                                    [index_id] ,
                                    CASE WHEN @ConsolidatePartitionStats = 0 THEN [partition_number]
                                         ELSE -1
                                    END AS [partition_number] ,
                                    SUM([leaf_insert_count]) AS [leaf_insert_count] ,
                                    SUM([leaf_delete_count]) AS [leaf_delete_count] ,
                                    SUM([leaf_update_count]) AS [leaf_update_count] ,
                                    SUM([leaf_ghost_count]) AS [leaf_ghost_count] ,
                                    SUM([nonleaf_insert_count]) AS [nonleaf_insert_count] ,
                                    SUM([nonleaf_delete_count]) AS [nonleaf_delete_count] ,
                                    SUM([nonleaf_update_count]) AS [nonleaf_update_count] ,
                                    SUM([leaf_allocation_count]) AS [leaf_allocation_count] ,
                                    SUM([nonleaf_allocation_count]) AS [nonleaf_allocation_count] ,
                                    SUM([leaf_page_merge_count]) AS [leaf_page_merge_count] ,
                                    SUM([nonleaf_page_merge_count]) AS [nonleaf_page_merge_count] ,
                                    SUM([range_scan_count]) AS [range_scan_count] ,
                                    SUM([singleton_lookup_count]) AS [singleton_lookup_count] ,
                                    SUM([forwarded_fetch_count]) AS [forwarded_fetch_count] ,
                                    SUM([lob_fetch_in_pages]) AS [lob_fetch_in_pages] ,
                                    SUM([lob_fetch_in_bytes]) AS [lob_fetch_in_bytes] ,
                                    SUM([lob_orphan_create_count]) AS [lob_orphan_create_count] ,
                                    SUM([lob_orphan_insert_count]) AS [lob_orphan_insert_count] ,
                                    SUM([row_overflow_fetch_in_pages]) AS [row_overflow_fetch_in_pages] ,
                                    SUM([row_overflow_fetch_in_bytes]) AS [row_overflow_fetch_in_bytes] ,
                                    SUM([column_value_push_off_row_count]) AS [column_value_push_off_row_count] ,
                                    SUM([column_value_pull_in_row_count]) AS [column_value_pull_in_row_count] ,
                                    SUM([row_lock_count]) AS [row_lock_count] ,
                                    SUM([row_lock_wait_count]) AS [row_lock_wait_count] ,
                                    SUM([row_lock_wait_in_ms]) AS [row_lock_wait_in_ms] ,
                                    SUM([page_lock_count]) AS [page_lock_count] ,
                                    SUM([page_lock_wait_count]) AS [page_lock_wait_count] ,
                                    SUM([page_lock_wait_in_ms]) AS [page_lock_wait_in_ms] ,
                                    SUM([index_lock_promotion_attempt_count]) AS [index_lock_promotion_attempt_count] ,
                                    SUM([index_lock_promotion_count]) AS [index_lock_promotion_count] ,
                                    SUM([page_latch_wait_count]) AS [page_latch_wait_count] ,
                                    SUM([page_latch_wait_in_ms]) AS [page_latch_wait_in_ms] ,
                                    SUM([page_io_latch_wait_count]) AS [page_io_latch_wait_count] ,
                                    SUM([page_io_latch_wait_in_ms]) AS [page_io_latch_wait_in_ms] ,
                                    SUM([tree_page_latch_wait_count]) AS [tree_page_latch_wait_count] ,
                                    SUM([tree_page_latch_wait_in_ms]) AS [tree_page_latch_wait_in_ms] ,
                                    SUM([tree_page_io_latch_wait_count]) AS [tree_page_io_latch_wait_count] ,
                                    SUM([tree_page_io_latch_wait_in_ms]) AS [tree_page_io_latch_wait_in_ms] ,
                                    SUM([page_compression_attempt_count]) AS [page_compression_attempt_count] ,
                                    SUM([page_compression_success_count]) AS [page_compression_success_count]
                             FROM   [sys].[dm_db_index_operational_stats](DB_ID(), NULL, NULL, NULL)
                             GROUP BY [database_id] ,
                                    [object_id] ,
                                    [index_id] ,
                                    CASE WHEN @ConsolidatePartitionStats = 0 THEN [partition_number]
                                         ELSE -1
                                    END
                            ) [ios] ON [im].[object_id] = [ios].[object_id]
                                       AND [im].[index_id] = [ios].[index_id]
                                       AND [im].[partition_number] = [ios].[partition_number];

            IF @ProcessingMessages = 1
                PRINT 'Processing #IndexStatistics... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
        END;

    -- Collect missing index information.
        IF @IncludeMissingIndexes = 1
        BEGIN
            SET @PROCESSING_START = GETDATE();

            INSERT  INTO [#IndexStatistics]
                    ([index_action] ,
                     [index_pros] ,
                     [index_cons] ,
                     [database_id] ,
                     [has_unique] ,
                     [is_primary_key] ,
                     [is_disabled] ,
                     [user_total_pct] ,
                     [table_column_count] ,
                     [filegroup_name] ,
                     [schema_name] ,
                     [object_id] ,
                     [table_name] ,
                     [object_name] ,
                     [index_name] ,
                     [type_desc] ,
                     [missing_index_impact] ,
                     [index_rank] ,
                     [user_total] ,
                     [user_seeks] ,
                     [user_scans] ,
                     [user_lookups] ,
                     [indexed_columns] ,
                     [included_columns] ,
                     [compression_type] ,
                     [indexed_column_count] ,
                     [included_column_count]
                    )
            SELECT  '' AS [index_action] ,
                    '' AS [index_pros] ,
                    '' AS [index_cons] ,
                    [tm].[database_id] ,
                    [tm].[has_unique] ,
                    0 [is_primary_key] ,
                    0 [is_disabled] ,
                    0 [user_total_pct] ,
                    [tm].[table_column_count] ,
                    '--TBD--' AS [filegroup_name] ,
                    [tm].[schema_name] ,
                    [mid].[object_id] ,
                    [tm].[table_name] ,
                    [tm].[object_name] ,
                    '--MISSING INDEX--' AS [index_name] ,
                    '--NONCLUSTERED--' AS [type_desc] ,
                    ([migs].[user_seeks] + [migs].[user_scans]) * [migs].[avg_user_impact] AS [impact] ,
                    0 AS [index_rank] ,
                    [migs].[user_seeks] + [migs].[user_scans] AS [user_total] ,
                    [migs].[user_seeks] ,
                    [migs].[user_scans] ,
                    0 AS [user_lookups] ,
                    COALESCE([mid].[equality_columns] + CASE WHEN [mid].[inequality_columns] IS NOT NULL THEN ', '
                                                             ELSE SPACE(0)
                                                        END, SPACE(0)) + COALESCE([mid].[inequality_columns], SPACE(0)) AS [indexed_columns] ,
                    [mid].[included_columns] ,
                    '--TBD--' ,
                    [mic].[indexed_column_count] ,
                    [mic].[included_column_count]
            FROM    [#TableMeta] [tm]
            INNER JOIN [sys].[dm_db_missing_index_details] [mid] ON [mid].[database_id] = [tm].[database_id]
                                                                    AND [mid].[object_id] = [tm].[object_id]
            INNER JOIN [sys].[dm_db_missing_index_groups] [mig] ON [mid].[index_handle] = [mig].[index_handle]
            INNER JOIN [sys].[dm_db_missing_index_group_stats] [migs] ON [mig].[index_group_handle] = [migs].[group_handle]
            CROSS APPLY (SELECT SUM(CASE WHEN [column_usage] != 'INCLUDE' THEN 1
                                         ELSE 0
                                    END) AS [indexed_column_count] ,
                                SUM(CASE WHEN [column_usage] = 'INCLUDE' THEN 1
                                         ELSE 0
                                    END) AS [included_column_count]
                         FROM   [sys].[dm_db_missing_index_columns]([mid].[index_handle])
                        ) [mic];
            IF @ProcessingMessages = 1
                PRINT 'Add missing indexes to #IndexStatistics... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
        END;
	
	-- Collect foreign key information.
        BEGIN
            SET @PROCESSING_START = GETDATE();

            CREATE TABLE [#ForeignKeys]
            (
             [foreign_key_name] NVARCHAR(256) ,
             [object_id] INT ,
             [fk_columns] NVARCHAR(MAX) ,
             [fk_columns_ids] NVARCHAR(1024) ,
             [related_object_id] INT ,
             [distinct_column_ids] NVARCHAR(1024) ,
             [indexed_column_count] INT
            );
         
            SET @SQL = N'SELECT fk.name + ''|CHILD'' AS foreign_key_name
			,fkc.parent_object_id AS object_id
			,STUFF((SELECT '', '' + QUOTENAME(c.name)
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
					INNER JOIN ' + @DatabaseName + '.sys.columns c ON ifkc.parent_object_id = c.object_id AND ifkc.parent_column_id = c.column_id
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.constraint_column_id
				FOR XML PATH('''')), 1, 2, '''') AS fk_columns
			,(SELECT QUOTENAME(CAST(ifkc.parent_column_id AS VARCHAR(10))+''+'',''('')
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.constraint_column_id
				FOR XML PATH('''')) AS fk_columns_compare
			,fkc.referenced_object_id AS related_object_id 

			,(SELECT QUOTENAME(CAST(ifkc.parent_column_id AS VARCHAR(10)))
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.parent_column_id
				FOR XML PATH('''')) AS distinct_column_ids
			,(SELECT COUNT(*)
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id) AS indexed_column_count

		FROM #TableMeta tm
			INNER JOIN ' + @DatabaseName + '.sys.foreign_keys fk ON tm.object_id = fk.parent_object_id
			INNER JOIN ' + @DatabaseName + '.sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
		WHERE fkc.constraint_column_id = 1
		AND (@ObjectID IS NULL OR (fk.parent_object_id = @ObjectID OR fk.referenced_object_id = @ObjectID))
		UNION ALL
		SELECT fk.name + ''|PARENT'' as foreign_key_name
			,fkc.referenced_object_id AS object_id
			,STUFF((SELECT '', '' + QUOTENAME(c.name)
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
					INNER JOIN ' + @DatabaseName + '.sys.columns c ON ifkc.referenced_object_id = c.object_id AND ifkc.referenced_column_id = c.column_id
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.constraint_column_id
				FOR XML PATH('''')), 1, 2, '''') AS fk_columns
			,(SELECT QUOTENAME(CAST(ifkc.referenced_column_id AS VARCHAR(10))+''+'',''('')
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.constraint_column_id
				FOR XML PATH('''')) AS fk_columns_compare
			,fkc.parent_object_id AS related_object_id
			,(SELECT QUOTENAME(CAST(ifkc.referenced_column_id AS VARCHAR(10)))
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id
				ORDER BY ifkc.parent_column_id
				FOR XML PATH('''')) AS fk_columns_compare
			,(SELECT COUNT(*)
				FROM ' + @DatabaseName + '.sys.foreign_key_columns ifkc
				WHERE fk.object_id = ifkc.constraint_object_id) AS indexed_column_count
		FROM #TableMeta tm
			INNER JOIN ' + @DatabaseName + '.sys.foreign_keys fk ON tm.object_id = fk.referenced_object_id
			INNER JOIN ' + @DatabaseName + '.sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
		WHERE fkc.constraint_column_id = 1
		AND (@ObjectID IS NULL OR (fk.parent_object_id = @ObjectID OR fk.referenced_object_id = @ObjectID))
		';

            BEGIN TRY
                INSERT  INTO [#ForeignKeys]
                        ([foreign_key_name] ,
                         [object_id] ,
                         [fk_columns] ,
                         [fk_columns_ids] ,
                         [related_object_id] ,
                         [distinct_column_ids] ,
                         [indexed_column_count]
                        )
                        EXEC [sys].[sp_executesql] @SQL, N'@DB_ID INT, @ObjectID INT', @DB_ID = @DB_ID, @ObjectID = @ObjectID;
            END TRY
            BEGIN CATCH
                SELECT  @ERROR_MESSAGE = 'Populate #ForeignKeys (Line ' + CAST(ERROR_LINE() AS NVARCHAR(25)) + '): ' + ERROR_MESSAGE() ,
                        @ERROR_SEVERITY = ERROR_SEVERITY() ,
                        @ERROR_STATE = ERROR_STATE();
     
                RAISERROR(@ERROR_MESSAGE, @ERROR_SEVERITY, @ERROR_STATE);
            END CATCH; 
 		
            IF @ProcessingMessages = 1
                PRINT 'Processing #ForeignKeys... ' + CONVERT(VARCHAR, DATEDIFF(MILLISECOND, @PROCESSING_START, GETDATE())) + ' ms';
        END;

    -- Determine duplicate, overlapping, and foreign key index information
        UPDATE  [i]
        SET     [i].[duplicate_indexes] = STUFF((SELECT ', ' + [iibl].[index_name] AS [data()]
                                                 FROM   [#IndexStatistics] [iibl]
                                                 WHERE  [i].[object_id] = [iibl].[object_id]
                                                        AND [i].[is_primary_key] = [iibl].[is_primary_key]
                                                        AND [i].[is_unique] = [iibl].[is_unique]
                                                        AND ISNULL([i].[filter_definition], '') = ISNULL([iibl].[filter_definition], '')
                                                        AND [i].[index_id] <> [iibl].[index_id]
                                                        AND REPLACE([i].[indexed_columns_ids], '|', '') = REPLACE([iibl].[indexed_columns_ids], '|', '')
                                                        AND [i].[included_column_ids] = [iibl].[included_column_ids]
                                                FOR
                                                 XML PATH('')
                                                ), 1, 2, '') ,
                [i].[first_dup_index_id] = (SELECT  MIN([iibl].[index_id])
                                            FROM    [#IndexStatistics] [iibl]
                                            WHERE   [i].[object_id] = [iibl].[object_id]
                                                    AND [i].[is_primary_key] = [iibl].[is_primary_key]
                                                    AND [i].[is_unique] = [iibl].[is_unique]
                                                    AND ISNULL([i].[filter_definition], '') = ISNULL([iibl].[filter_definition], '')
                                                    AND [i].[index_id] > [iibl].[index_id]
                                                    AND REPLACE([i].[indexed_columns_ids], '|', '') = REPLACE([iibl].[indexed_columns_ids], '|', '')
                                                    AND [i].[included_column_ids] = [iibl].[included_column_ids]
                                           ) ,
                [i].[overlapping_indexes] = STUFF((SELECT   ', ' + [iibl].[index_name] AS [data()]
                                                   FROM     [#IndexStatistics] [iibl]
                                                   WHERE    [i].[object_id] = [iibl].[object_id]
                                                            AND ISNULL([i].[filter_definition], '') = ISNULL([iibl].[filter_definition], '')
                                                            AND [i].[index_id] <> [iibl].[index_id]
                                                            AND LEFT([iibl].[indexed_columns_ids], CHARINDEX('|', [iibl].[indexed_columns_ids], 1) - 1) LIKE LEFT([i].[indexed_columns_ids],
                                                                                                                                                CHARINDEX('|',
                                                                                                                                                [i].[indexed_columns_ids],
                                                                                                                                                1) - 1) + '%'
                                                  FOR
                                                   XML PATH('')
                                                  ), 1, 2, '') ,
                [i].[sibling_indexes] = STUFF((SELECT   ', ' + [iibl].[index_name] AS [data()]
                                               FROM     [#IndexStatistics] [iibl]
                                               WHERE    [i].[object_id] = [iibl].[object_id]
                                                        AND [i].[index_id] <> [iibl].[index_id]
                                                        AND [i].[distinct_indexed_columns_ids] = [iibl].[distinct_indexed_columns_ids]
                                              FOR
                                               XML PATH('')
                                              ), 1, 2, '') ,
                [i].[related_foreign_keys] = STUFF((SELECT  ', ' + [ifk].[foreign_key_name] AS [data()]
                                                    FROM    [#ForeignKeys] [ifk]
                                                    WHERE   [ifk].[object_id] = [i].[object_id]
                                                            AND [i].[indexed_columns_ids] LIKE [ifk].[fk_columns_ids] + '%'
                                                   FOR
                                                    XML PATH('')
                                                   ), 1, 2, '') ,
                [i].[related_foreign_keys_xml] = CAST((SELECT   [fk].[foreign_key_name]
                                                       FROM     [#ForeignKeys] [fk]
                                                       WHERE    [fk].[object_id] = [i].[object_id]
                                                                AND [i].[indexed_columns_ids] LIKE [fk].[fk_columns_ids] + '%'
                                                      FOR
                                                       XML AUTO
                                                      ) AS XML)
        FROM    [#IndexStatistics] [i];

        IF @IncludeMissingFKIndexes = 1
        BEGIN
            INSERT  INTO [#IndexStatistics]
                    ([database_id] ,
                     [filegroup_name] ,
                     [schema_name] ,
                     [object_id] ,
                     [table_name] ,
                     [object_name] ,
                     [index_name] ,
                     [type_desc] ,
                     [has_unique] ,
                     [is_primary_key] ,
                     [is_disabled] ,
                     [user_total_pct] ,
                     [table_column_count] ,
                     [index_rank] ,
                     [indexed_columns] ,
                     [indexed_column_count] ,
                     [indexed_columns_ids] ,
                     [distinct_indexed_columns_ids] ,
                     [included_column_count] ,
                     [key_columns] ,
                     [related_foreign_keys] ,
                     [compression_type]
                    )
            SELECT  [tm].[database_id] ,
                    '--TBD--' AS [filegroup_name] ,
                    OBJECT_SCHEMA_NAME([fk].[object_id]) AS [schema_name] ,
                    [fk].[object_id] ,
                    OBJECT_NAME([fk].[object_id]) AS [table_name] ,
                    [tm].[object_name] ,
                    '--MISSING FOREIGN KEY INDEX--' AS [index_name] ,
                    'NONCLUSTERED' AS [type_desc] ,
                    [tm].[has_unique] ,
                    0 AS [is_primary_key] ,
                    0 AS [is_disabled] ,
                    0 AS [user_total_pct] ,
                    [tm].[table_column_count] ,
                    9999 AS [index_rank] ,
                    [fk].[fk_columns] ,
                    [fk].[indexed_column_count] ,
                    [fk].[fk_columns_ids] ,
                    [fk].[distinct_column_ids] ,
                    0 AS [included_column_count] ,
                    [fk].[fk_columns] ,
                    [fk].[foreign_key_name] ,
                    '--TBD--'
            FROM    [#TableMeta] AS [tm]
            INNER JOIN [#ForeignKeys] [fk] ON [fk].[object_id] = [tm].[object_id]
            LEFT OUTER JOIN [#IndexStatistics] [i] ON [fk].[object_id] = [i].[object_id]
                                                      AND [i].[indexed_columns_ids] LIKE [fk].[fk_columns_ids] + '%'
            WHERE   [i].[index_name] IS NULL;
        END;

--================================================================================================
-- Calculate estimated user total for each index.
--================================================================================================
        WITH    [StatAggregation1]
                  AS (SELECT    [row_id] ,
                                [object_id] ,
                                [user_seeks] ,
                                [user_scans] ,
                                [user_lookups] ,
                                [user_total_pct] ,
                                CONVERT(INT, SUM(CASE WHEN [index_id] IS NULL THEN [user_seeks]
                                                 END) OVER (PARTITION BY [object_id]) * 1. * [user_scans]
                                / NULLIF(SUM(CASE WHEN [index_id] IS NOT NULL THEN [user_scans]
                                             END) OVER (PARTITION BY [object_id]), 0)) AS [weighted_scans] ,
                                SUM([buffered_mb]) OVER (PARTITION BY [schema_name], [table_name]) AS [table_buffered_mb]
                      FROM      [#IndexStatistics]
                     ),
                [StatAggregation2]
                  AS (SELECT    * ,
                                CONVERT(DECIMAL(6, 2), 100. * ([StatAggregation1].[user_seeks] + [StatAggregation1].[user_scans]
                                - [StatAggregation1].[weighted_scans] + [StatAggregation1].[user_lookups])
                                / SUM([StatAggregation1].[user_seeks] + [StatAggregation1].[user_scans] - [StatAggregation1].[weighted_scans]
                                      + [StatAggregation1].[user_lookups]) OVER (PARTITION BY [StatAggregation1].[object_id])) AS [estimated_user_total_pct]
                      FROM      [StatAggregation1]
                     ),
                [StatAggregation3]
                  AS (SELECT    * ,
                                ROW_NUMBER() OVER (PARTITION BY [StatAggregation2].[object_id] ORDER BY [StatAggregation2].[estimated_user_total_pct] DESC, [StatAggregation2].[user_total_pct] DESC) AS [full_index_rank]
                      FROM      [StatAggregation2]
                     )
            UPDATE  [ibl]
            SET     [ibl].[estimated_user_total_pct] = COALESCE([a].[estimated_user_total_pct], 0) ,
                    [ibl].[table_buffered_mb] = [a].[table_buffered_mb] ,
                    [ibl].[full_index_rank] = [a].[full_index_rank]
            FROM    [#IndexStatistics] [ibl]
            INNER JOIN [StatAggregation3] [a] ON [ibl].[row_id] = [a].[row_id];

--================================================================================================
-- Update Pro/Con statuses
--================================================================================================    
        UPDATE  [#IndexStatistics]
        SET     [index_pros] = COALESCE(STUFF(CASE WHEN [index_name] = '--MISSING INDEX--'
                                                        AND [related_foreign_keys] IS NOT NULL THEN ', MIFK'
                                                   WHEN [related_foreign_keys] IS NOT NULL THEN ', FK'
                                                   ELSE ''
                                              END + CASE WHEN [is_unique] = 1 THEN ', UQ'
                                                         ELSE ''
                                                    END + CASE WHEN [full_index_rank] <= 5
                                                                    AND [index_name] = '--MISSING INDEX--' THEN ', TM5'
                                                               ELSE ''
                                                          END + COALESCE(', ' + CASE WHEN [read_to_update] BETWEEN 1 AND 9 THEN '$'
                                                                                     WHEN [read_to_update] BETWEEN 10 AND 99 THEN '$$'
                                                                                     WHEN [read_to_update] BETWEEN 100 AND 999 THEN '$$$'
                                                                                     WHEN [read_to_update] > 999 THEN '$$$+'
                                                                                END, ''), 1, 2, ''), '') ,
                [index_cons] = COALESCE(STUFF(CASE WHEN [index_id] = 0 THEN ', HP'
                                                   ELSE ''
                                              END + CASE WHEN [user_lookups] >= @MinLookupThreshold
                                                              AND [user_lookups] > [user_seeks] + [user_scans] THEN ', LKUP'
                                                         ELSE ''
                                                    END + CASE WHEN NULLIF([user_scans], 0) >= @MinScanThreshold
                                                                    AND [user_seeks] / NULLIF([user_scans], 0) < @Scan2SeekRatio THEN ', SCN'
                                                               ELSE ''
                                                          END + CASE WHEN [duplicate_indexes] IS NOT NULL THEN ', DUP'
                                                                     ELSE ''
                                                                END + CASE WHEN [overlapping_indexes] IS NOT NULL THEN ', OVLP'
                                                                           ELSE ''
                                                                      END + CASE WHEN [sibling_indexes] IS NOT NULL THEN ', SIB'
                                                                                 ELSE ''
                                                                            END + COALESCE(', ' + CASE WHEN [update_to_read] BETWEEN 1 AND 9 THEN '$'
                                                                                                       WHEN [update_to_read] BETWEEN 10 AND 99 THEN '$$'
                                                                                                       WHEN [update_to_read] BETWEEN 100 AND 999 THEN '$$$'
                                                                                                       WHEN [update_to_read] > 999 THEN '$$$+'
                                                                                                  END, '') + COALESCE(', '
                                                                                                                      + CASE WHEN [index_id] <= 1
                                                                                                                                  OR [indexed_column_count]
                                                                                                                                  + [included_column_count] < 4
                                                                                                                             THEN NULL
                                                                                                                             WHEN 100. * ([indexed_column_count]
                                                                                                                                  + [included_column_count])
                                                                                                                                  / [table_column_count] >= 90
                                                                                                                             THEN 'C90%'
                                                                                                                             WHEN 100. * ([indexed_column_count]
                                                                                                                                  + [included_column_count])
                                                                                                                                  / [table_column_count] >= 50
                                                                                                                             THEN 'C50%'
                                                                                                                             WHEN 100. * ([indexed_column_count]
                                                                                                                                  + [included_column_count])
                                                                                                                                  / [table_column_count] >= 25
                                                                                                                             THEN 'C25%'
                                                                                                                        END, '')
                                              + CASE WHEN [index_id] IS NOT NULL
                                                          AND [user_total_pct] < 1 THEN ', U1%'
                                                     ELSE ''
                                                END + CASE WHEN @CheckCompression = 1
                                                                AND [compression_type] = 'NONE' THEN ', NOCMP'
                                                           ELSE ''
                                                      END + CASE WHEN [is_disabled] = 1 THEN ', DSB'
                                                                 ELSE ''
                                                            END, 1, 2, ''), '');

--================================================================================================
-- Update Index Action information
--================================================================================================
        WITH    [IndexAction]
                  AS (SELECT    [row_id] ,
                                CASE WHEN [user_lookups] >= @MinLookupThreshold
                                          AND [user_lookups] > [user_seeks]
                                          AND [type_desc] IN ('CLUSTERED', 'HEAP', 'UNIQUE CLUSTERED') THEN 'REALIGN'
                                     WHEN [user_total_pct] < 5.
                                          AND [type_desc] IN ('CLUSTERED', 'HEAP', 'UNIQUE CLUSTERED')
                                          AND SUM([user_seeks] + [user_scans] + [user_lookups]) OVER (PARTITION BY [object_id]) > 0 THEN 'REALIGN'
                                     WHEN [is_disabled] = 1 THEN 'ENABLE'
                                     WHEN [duplicate_indexes] IS NOT NULL
                                          AND [first_dup_index_id] IS NOT NULL
                                          AND [index_id] IS NOT NULL THEN 'NEG-DUP'
                                     WHEN [type_desc] = '--MISSING FOREIGN KEY--' THEN 'CREATE'
                                     WHEN [type_desc] = 'XML' THEN '---'
                                     WHEN [is_unique] = 1 THEN '---'
                                     WHEN [related_foreign_keys] IS NOT NULL THEN '---'
                                     WHEN [type_desc] = '--NONCLUSTERED--'
                                          AND ROW_NUMBER() OVER (PARTITION BY [table_name] ORDER BY [user_total] DESC) <= @MaxMissingIndexCount
                                          AND [estimated_user_total_pct] > 1 THEN 'CREATE'
                                     WHEN [type_desc] = '--NONCLUSTERED--'
                                          AND [estimated_user_total_pct] > .1 THEN 'BLEND'
                                     WHEN ROW_NUMBER() OVER (PARTITION BY [table_name] ORDER BY [user_total] DESC, [index_rank]) > 10
                                          AND [index_id] IS NOT NULL THEN 'NEG-COUNT'
                                     WHEN [index_id] NOT IN (0, 1)
                                          AND [duplicate_indexes] IS NULL
                                          AND [user_total] = 0
                                          AND [index_id] IS NOT NULL THEN 'NEG-USAGE'
                                     ELSE '---'
                                END AS [index_action]
                      FROM      [#IndexStatistics]
                     )
            UPDATE  [ibl]
            SET     [ibl].[index_action] = [ia].[index_action]
            FROM    [#IndexStatistics] [ibl]
            INNER JOIN [IndexAction] [ia] ON [ibl].[row_id] = [ia].[row_id];
	
--================================================================================================
-- 	Output results from query
--================================================================================================
        IF @Output = 'DUMP'
        BEGIN
            SELECT  *
            FROM    [#IndexStatistics]
            ORDER BY [table_buffered_mb] DESC ,
                    [object_id] ,
                    COALESCE([user_total], -1) DESC ,
                    COALESCE([user_updates], -1) DESC ,
                    COALESCE([index_id], 999);
        END;
        ELSE
            IF @Output = 'DETAILED'
            BEGIN
                SELECT  [index_action] ,
                        [index_pros] ,
                        [index_cons] ,
                        [object_name] ,
                        [index_name] ,
                        [type_desc] ,
                        [indexed_columns] ,
                        [included_columns] ,
                        [filter_definition] ,
                        [is_primary_key] ,
                        [is_unique] ,
                        [is_disabled] ,
                        [has_unique] ,
                        [partition_number] ,
                        [fill_factor] ,
                        [is_padded] ,
                        [size_in_mb] ,
                        [buffered_mb] ,
                        [table_buffered_mb] ,
                        [buffered_percent] ,
                        [index_row_count] ,
                        [user_total_pct] ,
                        [estimated_user_total_pct] ,
                        [missing_index_impact] ,
                        [user_total] ,
                        [user_seeks] ,
                        [user_scans] ,
                        [user_lookups] ,
                        [user_updates] ,
                        [read_to_update_ratio] ,
                        [read_to_update] ,
                        [update_to_read] ,
                        [row_lock_count] ,
                        [row_lock_wait_count] ,
                        [row_lock_wait_in_ms] ,
                        [row_block_pct] ,
                        [avg_row_lock_waits_ms] ,
                        [page_latch_wait_count] ,
                        [avg_page_latch_wait_ms] ,
                        [page_io_latch_wait_count] ,
                        [avg_page_io_latch_wait_ms] ,
                        [tree_page_latch_wait_count] ,
                        [avg_tree_page_latch_wait_ms] ,
                        [tree_page_io_latch_wait_count] ,
                        [avg_tree_page_io_latch_wait_ms] ,
                        [read_operations] ,
                        [leaf_writes] ,
                        [leaf_page_allocations] ,
                        [leaf_page_merges] ,
                        [nonleaf_writes] ,
                        [nonleaf_page_allocations] ,
                        [nonleaf_page_merges] ,
                        [duplicate_indexes] ,
                        [overlapping_indexes] ,
                        [related_foreign_keys] ,
                        [related_foreign_keys_xml] ,
                        [key_columns] ,
                        [data_columns]
                FROM    [#IndexStatistics]
                WHERE   ([estimated_user_total_pct] > 0.01
                        AND [index_id] IS NULL
                        )
                        OR [related_foreign_keys] IS NOT NULL
                        OR [index_id] IS NOT NULL
                ORDER BY [table_buffered_mb] DESC ,
                        [object_id] ,
                        COALESCE([user_total], -1) DESC ,
                        COALESCE([user_updates], -1) DESC ,
                        COALESCE([index_id], 999);
            END;
            ELSE
                IF @Output = 'REALIGN'
                BEGIN
                    SELECT  [index_action] ,
                            [object_name] ,
                            [index_name] ,
                            [partition_number] ,
                            [type_desc] ,
                            [index_pros] ,
                            [index_cons] ,
                            [index_row_count] ,
                            [user_total] ,
                            [user_seeks] ,
                            [user_scans] ,
                            [user_lookups] ,
                            [user_updates] ,
                            [user_total_pct] ,
                            [size_in_mb] ,
                            [buffered_mb] ,
                            [table_buffered_mb] ,
                            [buffered_percent] ,
                            [indexed_columns] ,
                            [included_columns] ,
                            [is_primary_key] ,
                            [is_unique] ,
                            [is_disabled] ,
                            [has_unique] ,
                            [read_to_update_ratio] ,
                            [read_to_update] ,
                            [update_to_read] ,
                            [row_lock_count] ,
                            [row_lock_wait_count] ,
                            [row_lock_wait_in_ms] ,
                            [row_block_pct] ,
                            [avg_row_lock_waits_ms] ,
                            [page_latch_wait_count] ,
                            [avg_page_latch_wait_ms] ,
                            [page_io_latch_wait_count] ,
                            [avg_page_io_latch_wait_ms] ,
                            [read_operations]
                    FROM    [#IndexStatistics]
                    WHERE   [object_id] IN (SELECT  [object_id]
                                            FROM    [#IndexStatistics]
                                            WHERE   [index_action] = 'REALIGN')
                    ORDER BY SUM([user_total]) OVER (PARTITION BY [object_id]) DESC ,
                            [object_id] ,
                            COALESCE([user_total], -1) DESC ,
                            COALESCE([user_updates], -1) DESC ,
                            COALESCE([index_id], 999);
                END;
                ELSE
                    IF @Output = 'DUPLICATE'
                    BEGIN
                        SELECT  DENSE_RANK() OVER (ORDER BY [key_columns], [data_columns]) AS [duplicate_group] ,
                                [index_action] ,
                                [index_pros] ,
                                [index_cons] ,
                                [object_name] ,
                                [index_name] ,
                                [type_desc] ,
                                [indexed_columns] ,
                                [included_columns] ,
                                [is_primary_key] ,
                                [is_unique] ,
                                [duplicate_indexes] ,
                                [size_in_mb] ,
                                [index_row_count] ,
                                [user_total_pct] ,
                                [user_total] ,
                                [user_seeks] ,
                                [user_scans] ,
                                [user_lookups] ,
                                [user_updates] ,
                                [read_operations]
                        FROM    [#IndexStatistics]
                        WHERE   [duplicate_indexes] IS NOT NULL
                        ORDER BY [table_buffered_mb] DESC ,
                                [object_id] ,
                                RANK() OVER (ORDER BY [key_columns], [data_columns]);
                    END;
                    ELSE
                        IF @Output = 'OVERLAPPING'
                        BEGIN
                            SELECT  [index_action] ,
                                    [index_pros] ,
                                    [index_cons] ,
                                    [object_name] ,
                                    [overlapping_indexes] ,
                                    [index_name] ,
                                    [type_desc] ,
                                    [indexed_columns] ,
                                    [included_columns] ,
                                    [is_primary_key] ,
                                    [is_unique] ,
                                    [size_in_mb] ,
                                    [index_row_count] ,
                                    [user_total_pct] ,
                                    [user_total] ,
                                    [user_seeks] ,
                                    [user_scans] ,
                                    [user_lookups] ,
                                    [user_updates] ,
                                    [read_operations]
                            FROM    [#IndexStatistics]
                            WHERE   [overlapping_indexes] IS NOT NULL
                            ORDER BY [table_buffered_mb] DESC ,
                                    [object_id] ,
                                    [user_total] DESC;
                        END;
    END TRY 
    BEGIN CATCH
        SELECT  @ERROR_MESSAGE = 'Procedure Error (Line ' + CAST(ERROR_LINE() AS NVARCHAR(25)) + '): ' + ERROR_MESSAGE() ,
                @ERROR_SEVERITY = ERROR_SEVERITY() ,
                @ERROR_STATE = ERROR_STATE();
     
        RAISERROR(@ERROR_MESSAGE, @ERROR_SEVERITY, @ERROR_STATE);
    END CATCH;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_MusteriLoglariniFiltrele]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MusteriLoglariniFiltrele]
	@CustomerId varchar(50),
	@sdate date,
	@fdate date
as
begin

	select [Process], [ProcessDate], [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] 
	from [dbo].[Log_Customers] 
	where CustomerID like '%'+@CustomerId+'%' and ProcessDate between @sdate and @fdate
	order by CustomerID, ProcessDate desc

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UrunEkle]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UrunEkle]
	@ProductName nvarchar(40),
	@SupplierID int,
	@CategoryID int,
	@QuantityPerUnit nvarchar(20),
	@UnitPrice money,
	@UnitsInStock smallint,
	@UnitsOnOrder smallint,
	@ReorderLevel smallint,
	@Discontinued bit
as
begin

	insert into dbo.Products 
		(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
		values
		(@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UrunListesi]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UrunListesi]
as
begin

	select  [ProductID], [ProductName], p.[SupplierID], s.CompanyName, p.[CategoryID], c.CategoryName, [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]

	from dbo.Products as p
	inner join dbo.Suppliers as s on s.SupplierID=p.SupplierID
	inner join dbo.Categories as c on c.CategoryID=p.CategoryID
	order by p.ProductName

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UrunuGuncelle]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UrunuGuncelle]
	@ProductId int,
	@ProductName nvarchar(40),
	@SupplierID int,
	@CategoryID int,
	@QuantityPerUnit nvarchar(20),
	@UnitPrice money,
	@UnitsInStock smallint,
	@UnitsOnOrder smallint,
	@ReorderLevel smallint,
	@Discontinued bit
as
begin

	update dbo.Products set ProductName=@ProductName, SupplierID=@SupplierID, CategoryID=@CategoryID, QuantityPerUnit=@QuantityPerUnit, UnitPrice=@UnitPrice, UnitsInStock=@UnitsInStock, UnitsOnOrder=@UnitsOnOrder, ReorderLevel=@ReorderLevel, Discontinued=@Discontinued
	where ProductID=@ProductId
		

end
GO
/****** Object:  StoredProcedure [dbo].[StokYeterliMi]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StokYeterliMi]
	@productId int,
	@miktar int
as
begin

	declare @stokMiktari int
	select @stokMiktari=UnitsInStock from dbo.Products where ProductID=@productId

	if (@miktar > @stokMiktari)
	begin
		return 0
	end
	else begin
		return 1
	end

end
GO
/****** Object:  StoredProcedure [dbo].[Ten Most Expensive Products]    Script Date: 2.12.2022 13:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Ten Most Expensive Products] AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Orders"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 424
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 28
               Left = 409
               Bottom = 225
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2230
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MusteriTasimaUcretleri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MusteriTasimaUcretleri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[26] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 403
               Right = 289
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 50
               Left = 438
               Bottom = 325
               Right = 662
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2010
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 2230
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StokDurumRaporu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StokDurumRaporu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shippers"
            Begin Extent = 
               Top = 9
               Left = 343
               Bottom = 179
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 9
               Left = 628
               Bottom = 206
               Right = 851
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1780
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Customers"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 285
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewCustomerList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewCustomerList'
GO
USE [master]
GO
ALTER DATABASE [Northwind] SET  READ_WRITE 
GO
