USE [DBTEST]
GO
/****** Object:  Table [dbo].[AttributeMaster]    Script Date: 27-09-2021 03:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeMaster](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[AttributeName] [varchar](30) NULL,
	[Description] [varchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_AttributeMaster_1] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeValue](
	[AttributeValueID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductHierarchyID] [bigint] NULL,
	[AttributeID] [int] NOT NULL,
	[AttibuteValue] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_AttributeValue] PRIMARY KEY CLUSTERED 
(
	[AttributeValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[CustomerFirstName] [varchar](50) NOT NULL,
	[CustomerMiddleName] [varchar](50) NULL,
	[CustomerLastName] [varchar](50) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [int] NULL,
	[MobileNo] [varchar](20) NULL,
	[EmailId] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[DOB] [datetime] NULL,
	[Anniversary] [datetime] NULL,
	[SpouseName] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductArticleDetailMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductArticleDetailMaster](
	[ProductArticleDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductArticleId] [decimal](18, 0) NOT NULL,
	[AttributeValueID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [date] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [date] NULL,
 CONSTRAINT [PK_ProductArticleDetailMaster] PRIMARY KEY CLUSTERED 
(
	[ProductArticleDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductArticleMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductArticleMaster](
	[ProductArticleId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[ProductHierarchyId] [bigint] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[StdCost] [decimal](18, 2) NOT NULL,
	[PriceFrom] [decimal](18, 2) NOT NULL,
	[PriceTO] [decimal](18, 2) NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [smalldatetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ProductArticleMaster_1] PRIMARY KEY CLUSTERED 
(
	[ProductArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHierarchyMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHierarchyMaster](
	[ProductHierarchyId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[ShortName] [varchar](50) NULL,
	[ParentHierarchyId] [bigint] NULL,
	[ProductLevelId] [int] NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [smalldatetime] NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ProductHierarchyMaster] PRIMARY KEY CLUSTERED 
(
	[ProductHierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItemMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItemMaster](
	[ProductItemId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[ProductArticleId] [decimal](18, 0) NOT NULL,
	[ItemCode] [varchar](200) NULL,
	[StandardRate] [decimal](18, 2) NOT NULL,
	[SizeMasterID] [int] NULL,
	[SellingPriceWSP] [decimal](18, 2) NOT NULL,
	[SellingPriceRSP] [decimal](18, 2) NOT NULL,
	[SellingPriceMRP] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedDate] [date] NULL,
	[DeletedBy] [int] NULL,
 CONSTRAINT [PK_ProductItemMaster] PRIMARY KEY CLUSTERED 
(
	[ProductItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItemMaster_Audit]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItemMaster_Audit](
	[ProductItemAuditId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[ProductItemId] [decimal](18, 0) NOT NULL,
	[ItemCode] [varchar](200) NULL,
	[StandardRate] [decimal](18, 2) NOT NULL,
	[SizeMasterID] [int] NULL,
	[SellingPriceWSP] [decimal](18, 2) NOT NULL,
	[SellingPriceRSP] [decimal](18, 2) NOT NULL,
	[SellingPriceMRP] [decimal](18, 2) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_ProductItemMaster_Audit] PRIMARY KEY CLUSTERED 
(
	[ProductItemAuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLevelMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLevelMaster](
	[ProductLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProductLevelMaster] PRIMARY KEY CLUSTERED 
(
	[ProductLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizeMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizeMaster](
	[ProductSizeID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductHierarchyID] [bigint] NOT NULL,
	[SizeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductSizeMaster] PRIMARY KEY CLUSTERED 
(
	[ProductSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeMaster](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductTypeMaster] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderItemDetail]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderItemDetail](
	[PK_SalesOrderDetailsItemId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[FK_SalesOrderId] [decimal](18, 0) NOT NULL,
	[ProductItemId] [decimal](18, 0) NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CancelledQty] [decimal](18, 2) NOT NULL,
	[Remarks] [varchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CancelledBy] [int] NULL,
	[CancelledDate] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
 CONSTRAINT [PK_SalesOrderItemDetail] PRIMARY KEY CLUSTERED 
(
	[PK_SalesOrderDetailsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderMaster](
	[PK_SalesOrderId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](100) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[CustomerID] [decimal](18, 0) NULL,
	[Remarks] [varchar](max) NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CancelledBy] [int] NULL,
	[CancelledDate] [date] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
 CONSTRAINT [PK_SalesOrderMaster] PRIMARY KEY CLUSTERED 
(
	[PK_SalesOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeMaster]    Script Date: 27-09-2021 03:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeMaster](
	[SizeMasterID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[Size] [varchar](20) NOT NULL,
	[Measurement] [decimal](18, 2) NOT NULL,
	[Description] [varchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_SizeMaster] PRIMARY KEY CLUSTERED 
(
	[SizeMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMasterAdmin]    Script Date: 27-09-2021 03:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMasterAdmin](
	[StockMasterId] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[ProductItemId] [decimal](18, 0) NOT NULL,
	[DrQuantity] [numeric](18, 2) NOT NULL,
	[CrQuantity] [numeric](18, 2) NOT NULL,
	[OpeningDate] [datetime] NULL,
	[Narration] [varchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedBy] [int] NULL,
	[DeletedDate] [datetime] NULL,
	[Remark] [varchar](max) NULL,
 CONSTRAINT [PK_tblStockMasterAdmin] PRIMARY KEY CLUSTERED 
(
	[StockMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AttributeMaster] ON 
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, N'Color', N'Color', 1, CAST(N'2021-09-27T01:20:48.900' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, N'Brand', N'Brand', 1, CAST(N'2021-09-27T01:20:48.937' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, N'Design', N'Design', 1, CAST(N'2021-09-27T01:20:48.970' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, N'Pattern', N'Pattern', 1, CAST(N'2021-09-27T01:20:49.003' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, N'Fabric', N'Fabric', 1, CAST(N'2021-09-27T01:20:49.040' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeMaster] ([AttributeId], [AttributeName], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, N'Material Used', N'Material Used', 1, CAST(N'2021-09-27T01:20:49.073' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AttributeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] ON 
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, 8, 1, N'Red', 1, NULL, CAST(N'2021-09-27T01:34:26.620' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, 8, 1, N'Green', 1, NULL, CAST(N'2021-09-27T01:34:26.653' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, 8, 1, N'Blue', 1, NULL, CAST(N'2021-09-27T01:34:26.690' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, 8, 2, N'Nike', 1, NULL, CAST(N'2021-09-27T01:34:26.723' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, 8, 2, N'Zodiac', 1, NULL, CAST(N'2021-09-27T01:34:26.757' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, 8, 2, N'Levi''s', 1, NULL, CAST(N'2021-09-27T01:34:26.790' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (7, 8, 3, N'Slim Fit', 1, NULL, CAST(N'2021-09-27T01:34:26.840' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (8, 8, 3, N'Skinny Fit', 1, NULL, CAST(N'2021-09-27T01:34:26.877' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (9, 8, 4, N'Solid', 1, NULL, CAST(N'2021-09-27T01:34:26.910' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (10, 8, 4, N'Check', 1, NULL, CAST(N'2021-09-27T01:34:26.947' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (11, 8, 4, N'Plain', 1, NULL, CAST(N'2021-09-27T01:34:26.980' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (12, 9, 1, N'Black', 1, NULL, CAST(N'2021-09-27T01:34:27.013' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (13, 9, 1, N'Grey', 1, NULL, CAST(N'2021-09-27T01:34:27.050' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (14, 9, 1, N'Blue', 1, NULL, CAST(N'2021-09-27T01:34:27.083' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (15, 9, 1, N'White', 1, NULL, CAST(N'2021-09-27T01:34:27.120' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (16, 9, 2, N'Levi''s', 1, NULL, CAST(N'2021-09-27T01:34:27.153' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (17, 9, 2, N'Zodiac', 1, NULL, CAST(N'2021-09-27T01:34:27.187' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (18, 9, 2, N'Allen solly', 1, NULL, CAST(N'2021-09-27T01:34:27.223' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (19, 9, 3, N'Slim Fit', 1, NULL, CAST(N'2021-09-27T01:34:27.260' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (20, 9, 3, N'Skinny Fit', 1, NULL, CAST(N'2021-09-27T01:34:27.293' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (21, 9, 4, N'Check', 1, NULL, CAST(N'2021-09-27T01:34:27.327' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (22, 9, 4, N'Solid', 1, NULL, CAST(N'2021-09-27T01:34:27.363' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([AttributeValueID], [ProductHierarchyID], [AttributeID], [AttibuteValue], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (23, 9, 4, N'Plain', 1, NULL, CAST(N'2021-09-27T01:34:27.397' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductArticleDetailMaster] ON 
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, CAST(1 AS Decimal(18, 0)), 1, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, CAST(1 AS Decimal(18, 0)), 4, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, CAST(1 AS Decimal(18, 0)), 7, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, CAST(1 AS Decimal(18, 0)), 9, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, CAST(2 AS Decimal(18, 0)), 2, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, CAST(2 AS Decimal(18, 0)), 4, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, CAST(2 AS Decimal(18, 0)), 7, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, CAST(2 AS Decimal(18, 0)), 9, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (9, CAST(3 AS Decimal(18, 0)), 2, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (10, CAST(3 AS Decimal(18, 0)), 6, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (11, CAST(3 AS Decimal(18, 0)), 7, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleDetailMaster] ([ProductArticleDetailId], [ProductArticleId], [AttributeValueID], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (12, CAST(3 AS Decimal(18, 0)), 10, 1, 0, NULL, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductArticleDetailMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductArticleMaster] ON 
GO
INSERT [dbo].[ProductArticleMaster] ([ProductArticleId], [ProductHierarchyId], [Name], [StdCost], [PriceFrom], [PriceTO], [Remark], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (CAST(1 AS Decimal(18, 0)), 8, N'Men+Top+Tsh+Red+Nik+sli+Sol', CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), N'', 1, 0, NULL, CAST(N'2021-09-27T02:01:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleMaster] ([ProductArticleId], [ProductHierarchyId], [Name], [StdCost], [PriceFrom], [PriceTO], [Remark], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (CAST(2 AS Decimal(18, 0)), 8, N'Men+Top+Tsh+Blu+Nik+sli+Sol', CAST(1200.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), N'', 1, 0, NULL, CAST(N'2021-09-27T02:01:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductArticleMaster] ([ProductArticleId], [ProductHierarchyId], [Name], [StdCost], [PriceFrom], [PriceTO], [Remark], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (CAST(3 AS Decimal(18, 0)), 9, N'Men+Top+Tsh+Gre+Lev+Sli+Che', CAST(500.00 AS Decimal(18, 2)), CAST(550.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), N'', 1, 0, NULL, CAST(N'2021-09-27T02:01:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductArticleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductHierarchyMaster] ON 
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, N'Men', N'Men', NULL, 1, 0, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, N'Topwear', N'Topwear', 1, 2, 0, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, N'Bottomwear', N'Bottomwear', 1, 2, 1, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (4, N'Footwear', N'Footwear', 1, 2, 2, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (5, N'Ethnicwear', N'Ethnicwear', 1, 2, 3, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (6, N'Sports & Sports', N'Sports', 1, 2, 4, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (7, N'Winterwear', N'Winterwear', 1, 2, 5, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (8, N'T-Shirts', N'T-Shirts', 2, 3, 0, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (9, N'Casual Shirts', N'Casual Shirts', 2, 3, 1, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductHierarchyMaster] ([ProductHierarchyId], [Name], [ShortName], [ParentHierarchyId], [ProductLevelId], [SequenceNo], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (10, N'Formal Shirts', N'Formal Shirts', 2, 3, 2, NULL, CAST(N'2021-09-27T01:02:00' AS SmallDateTime), 1, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductHierarchyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductItemMaster] ON 
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item1', CAST(1000.00 AS Decimal(18, 2)), 1, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(2 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item2', CAST(1000.00 AS Decimal(18, 2)), 2, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(3 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item3', CAST(1000.00 AS Decimal(18, 2)), 3, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(4 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item4', CAST(1000.00 AS Decimal(18, 2)), 4, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(5 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item5', CAST(1000.00 AS Decimal(18, 2)), 5, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(6 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'Item6', CAST(1000.00 AS Decimal(18, 2)), 6, CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(7 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item7', CAST(1200.00 AS Decimal(18, 2)), 1, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(8 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item8', CAST(100.00 AS Decimal(18, 2)), 2, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(9 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item9', CAST(100.00 AS Decimal(18, 2)), 3, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(10 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item10', CAST(100.00 AS Decimal(18, 2)), 4, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(11 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item11', CAST(100.00 AS Decimal(18, 2)), 5, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(12 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), N'Item12', CAST(100.00 AS Decimal(18, 2)), 6, CAST(1200.00 AS Decimal(18, 2)), CAST(1400.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(13 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item13', CAST(100.00 AS Decimal(18, 2)), 1, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(14 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item14', CAST(100.00 AS Decimal(18, 2)), 2, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(15 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item15', CAST(100.00 AS Decimal(18, 2)), 3, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(19 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item16', CAST(33.00 AS Decimal(18, 2)), 4, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(21 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item17', CAST(100.00 AS Decimal(18, 2)), 5, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductItemMaster] ([ProductItemId], [ProductArticleId], [ItemCode], [StandardRate], [SizeMasterID], [SellingPriceWSP], [SellingPriceRSP], [SellingPriceMRP], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedDate], [DeletedBy]) VALUES (CAST(22 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'Item18', CAST(100.00 AS Decimal(18, 2)), 6, CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, CAST(N'2021-09-27' AS Date), NULL, NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductItemMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLevelMaster] ON 
GO
INSERT [dbo].[ProductLevelMaster] ([ProductLevelId], [Name], [IsActive]) VALUES (1, N'Section', 1)
GO
INSERT [dbo].[ProductLevelMaster] ([ProductLevelId], [Name], [IsActive]) VALUES (2, N'Division', 1)
GO
INSERT [dbo].[ProductLevelMaster] ([ProductLevelId], [Name], [IsActive]) VALUES (3, N'Department', 1)
GO
SET IDENTITY_INSERT [dbo].[ProductLevelMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSizeMaster] ON 
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, 8, 1, 0, NULL, CAST(N'2021-09-27T01:15:18.023' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, 8, 2, 0, NULL, CAST(N'2021-09-27T01:15:18.063' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, 8, 3, 0, NULL, CAST(N'2021-09-27T01:15:18.100' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, 8, 4, 0, NULL, CAST(N'2021-09-27T01:15:18.143' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, 8, 5, 0, NULL, CAST(N'2021-09-27T01:15:18.183' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, 8, 6, 0, NULL, CAST(N'2021-09-27T01:15:18.223' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (7, 9, 1, 0, NULL, CAST(N'2021-09-27T01:15:18.263' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (8, 9, 2, 0, NULL, CAST(N'2021-09-27T01:15:18.307' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (9, 9, 3, 0, NULL, CAST(N'2021-09-27T01:15:18.350' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (10, 9, 4, 0, NULL, CAST(N'2021-09-27T01:15:18.397' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (11, 9, 5, 0, NULL, CAST(N'2021-09-27T01:15:18.440' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (12, 9, 6, 0, NULL, CAST(N'2021-09-27T01:15:18.483' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (13, 10, 1, 0, NULL, CAST(N'2021-09-27T01:15:18.523' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (14, 10, 2, 0, NULL, CAST(N'2021-09-27T01:15:18.563' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (15, 10, 3, 0, NULL, CAST(N'2021-09-27T01:15:18.603' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (16, 10, 4, 0, NULL, CAST(N'2021-09-27T01:15:18.647' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (17, 10, 5, 0, NULL, CAST(N'2021-09-27T01:15:18.687' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[ProductSizeMaster] ([ProductSizeID], [ProductHierarchyID], [SizeID], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (18, 10, 6, 0, NULL, CAST(N'2021-09-27T01:15:18.730' AS DateTime), NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductSizeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeMaster] ON 
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (1, N'Dress Materials Suiting & Shirting', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (2, N'Electrical Accessories', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (3, N'Electronics Equipment', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (4, N'Footwear Toys', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (5, N'Home Textiles', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (6, N'Home needs Goods', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (7, N'Household Appliances', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (8, N'Household Plastics', 1, 0)
GO
INSERT [dbo].[ProductTypeMaster] ([ProductTypeID], [ProductType], [IsActive], [IsDeleted]) VALUES (9, N'Hardware', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[ProductTypeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[SizeMaster] ON 
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (1, 1, N'S', CAST(140.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.153' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (2, 1, N'M', CAST(150.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.190' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (3, 1, N'L', CAST(160.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.223' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (4, 1, N'XL', CAST(170.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.260' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (5, 1, N'XXL', CAST(180.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.297' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[SizeMaster] ([SizeMasterID], [ProductTypeId], [Size], [Measurement], [Description], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsDeleted], [DeletedBy], [DeletedDate]) VALUES (6, 1, N'XXXL', CAST(190.00 AS Decimal(18, 2)), N'', 1, CAST(N'2021-09-27T00:31:24.330' AS DateTime), NULL, NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SizeMaster] OFF
GO
ALTER TABLE [dbo].[AttributeMaster] ADD  CONSTRAINT [DF_AttributeMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AttributeMaster] ADD  CONSTRAINT [DF_AttributeMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AttributeMaster] ADD  CONSTRAINT [DF_AttributeMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  CONSTRAINT [DF_AttributeValue_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  CONSTRAINT [DF_AttributeValue_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  CONSTRAINT [DF_AttributeValue_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_IsDeleted]  DEFAULT ('0') FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster] ADD  CONSTRAINT [DF_ProductArticleDetailMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster] ADD  CONSTRAINT [DF_ProductArticleDetailMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster] ADD  CONSTRAINT [DF_ProductArticleDetailMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_StdCost]  DEFAULT ((0)) FOR [StdCost]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_PriceFrom]  DEFAULT ((0)) FOR [PriceFrom]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_PriceTO]  DEFAULT ((0)) FOR [PriceTO]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductArticleMaster] ADD  CONSTRAINT [DF_ProductArticleMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductHierarchyMaster] ADD  CONSTRAINT [DF_ProductHierarchyMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductHierarchyMaster] ADD  CONSTRAINT [DF_ProductHierarchyMaster_IsUpdated]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductHierarchyMaster] ADD  CONSTRAINT [DF_ProductHierarchyMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_SellingPriceWSP]  DEFAULT ((0)) FOR [SellingPriceWSP]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_SellingPriceRSP]  DEFAULT ((0)) FOR [SellingPriceRSP]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_SellingPriceMRP]  DEFAULT ((0)) FOR [SellingPriceMRP]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductItemMaster] ADD  CONSTRAINT [DF_ProductItemMaster_ISDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductItemMaster_Audit] ADD  CONSTRAINT [DF_ProductItemMaster_Audit_SellingPriceWSP]  DEFAULT ((0)) FOR [SellingPriceWSP]
GO
ALTER TABLE [dbo].[ProductItemMaster_Audit] ADD  CONSTRAINT [DF_ProductItemMaster_Audit_SellingPriceRSP]  DEFAULT ((0)) FOR [SellingPriceRSP]
GO
ALTER TABLE [dbo].[ProductItemMaster_Audit] ADD  CONSTRAINT [DF_ProductItemMaster_Audit_SellingPriceMRP]  DEFAULT ((0)) FOR [SellingPriceMRP]
GO
ALTER TABLE [dbo].[ProductLevelMaster] ADD  CONSTRAINT [DF_ProductLevelMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductSizeMaster] ADD  CONSTRAINT [DF_ProductSizeMaster_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductSizeMaster] ADD  CONSTRAINT [DF_ProductSizeMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductSizeMaster] ADD  CONSTRAINT [DF_ProductSizeMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductTypeMaster] ADD  CONSTRAINT [DF_ProductTypeMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductTypeMaster] ADD  CONSTRAINT [DF_ProductTypeMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] ADD  CONSTRAINT [DF_SalesOrderItemDetail_CancelledQty]  DEFAULT ((0)) FOR [CancelledQty]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] ADD  CONSTRAINT [DF_SalesOrderItemDetail_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] ADD  CONSTRAINT [DF_SalesOrderItemDetail_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] ADD  CONSTRAINT [DF_SalesOrderItemDetail_IsCancelled]  DEFAULT ((0)) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[SalesOrderMaster] ADD  CONSTRAINT [DF_SalesOrderMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesOrderMaster] ADD  CONSTRAINT [DF_SalesOrderMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SalesOrderMaster] ADD  CONSTRAINT [DF_SalesOrderMaster_IsCancelled]  DEFAULT ((0)) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[SizeMaster] ADD  CONSTRAINT [DF_SizeMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SizeMaster] ADD  CONSTRAINT [DF_SizeMaster_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SizeMaster] ADD  CONSTRAINT [DF_SizeMaster_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[StockMasterAdmin] ADD  CONSTRAINT [DF_StockMasterAdmin_DrQuantity]  DEFAULT ((0)) FOR [DrQuantity]
GO
ALTER TABLE [dbo].[StockMasterAdmin] ADD  CONSTRAINT [DF_StockMasterAdmin_CrQuantity]  DEFAULT ((0)) FOR [CrQuantity]
GO
ALTER TABLE [dbo].[StockMasterAdmin] ADD  CONSTRAINT [DF_StockMasterAdmin_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StockMasterAdmin] ADD  CONSTRAINT [[dbo]].[tblStockMasterAdmin]]IsDeletedDefault]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_AttributeValue_AttributeMaster] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[AttributeMaster] ([AttributeId])
GO
ALTER TABLE [dbo].[AttributeValue] CHECK CONSTRAINT [FK_AttributeValue_AttributeMaster]
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductArticleDetailMaster_AttributeValue] FOREIGN KEY([AttributeValueID])
REFERENCES [dbo].[AttributeValue] ([AttributeValueID])
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster] CHECK CONSTRAINT [FK_ProductArticleDetailMaster_AttributeValue]
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductArticleDetailMaster_ProductArticleMaster] FOREIGN KEY([ProductArticleId])
REFERENCES [dbo].[ProductArticleMaster] ([ProductArticleId])
GO
ALTER TABLE [dbo].[ProductArticleDetailMaster] CHECK CONSTRAINT [FK_ProductArticleDetailMaster_ProductArticleMaster]
GO
ALTER TABLE [dbo].[ProductArticleMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductArticleMaster_ProductHierarchyMaster] FOREIGN KEY([ProductHierarchyId])
REFERENCES [dbo].[ProductHierarchyMaster] ([ProductHierarchyId])
GO
ALTER TABLE [dbo].[ProductArticleMaster] CHECK CONSTRAINT [FK_ProductArticleMaster_ProductHierarchyMaster]
GO
ALTER TABLE [dbo].[ProductHierarchyMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductHierarchyMaster_ProductHierarchyMaster] FOREIGN KEY([ParentHierarchyId])
REFERENCES [dbo].[ProductHierarchyMaster] ([ProductHierarchyId])
GO
ALTER TABLE [dbo].[ProductHierarchyMaster] CHECK CONSTRAINT [FK_ProductHierarchyMaster_ProductHierarchyMaster]
GO
ALTER TABLE [dbo].[ProductHierarchyMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductHierarchyMaster_ProductLevelMaster] FOREIGN KEY([ProductLevelId])
REFERENCES [dbo].[ProductLevelMaster] ([ProductLevelId])
GO
ALTER TABLE [dbo].[ProductHierarchyMaster] CHECK CONSTRAINT [FK_ProductHierarchyMaster_ProductLevelMaster]
GO
ALTER TABLE [dbo].[ProductItemMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductItemMaster_ProductArticleMaster] FOREIGN KEY([ProductArticleId])
REFERENCES [dbo].[ProductArticleMaster] ([ProductArticleId])
GO
ALTER TABLE [dbo].[ProductItemMaster] CHECK CONSTRAINT [FK_ProductItemMaster_ProductArticleMaster]
GO
ALTER TABLE [dbo].[ProductItemMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductItemMaster_SizeMaster] FOREIGN KEY([SizeMasterID])
REFERENCES [dbo].[SizeMaster] ([SizeMasterID])
GO
ALTER TABLE [dbo].[ProductItemMaster] CHECK CONSTRAINT [FK_ProductItemMaster_SizeMaster]
GO
ALTER TABLE [dbo].[ProductItemMaster_Audit]  WITH CHECK ADD  CONSTRAINT [FK_ProductItemMaster_Audit_ProductItemMaster] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItemMaster] ([ProductItemId])
GO
ALTER TABLE [dbo].[ProductItemMaster_Audit] CHECK CONSTRAINT [FK_ProductItemMaster_Audit_ProductItemMaster]
GO
ALTER TABLE [dbo].[ProductSizeMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizeMaster_ProductHierarchyMaster] FOREIGN KEY([ProductHierarchyID])
REFERENCES [dbo].[ProductHierarchyMaster] ([ProductHierarchyId])
GO
ALTER TABLE [dbo].[ProductSizeMaster] CHECK CONSTRAINT [FK_ProductSizeMaster_ProductHierarchyMaster]
GO
ALTER TABLE [dbo].[ProductSizeMaster]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizeMaster_SizeMaster] FOREIGN KEY([SizeID])
REFERENCES [dbo].[SizeMaster] ([SizeMasterID])
GO
ALTER TABLE [dbo].[ProductSizeMaster] CHECK CONSTRAINT [FK_ProductSizeMaster_SizeMaster]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderItemDetail_ProductItemMaster] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItemMaster] ([ProductItemId])
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] CHECK CONSTRAINT [FK_SalesOrderItemDetail_ProductItemMaster]
GO
ALTER TABLE [dbo].[SalesOrderItemDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderItemDetail_SalesOrderMaster] FOREIGN KEY([FK_SalesOrderId])
REFERENCES [dbo].[SalesOrderMaster] ([PK_SalesOrderId])
GO
ALTER TABLE [dbo].[SalesOrderItemDetail] CHECK CONSTRAINT [FK_SalesOrderItemDetail_SalesOrderMaster]
GO
ALTER TABLE [dbo].[SalesOrderMaster]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderMaster_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[SalesOrderMaster] CHECK CONSTRAINT [FK_SalesOrderMaster_Customers]
GO
ALTER TABLE [dbo].[SizeMaster]  WITH CHECK ADD  CONSTRAINT [FK_SizeMaster_ProductTypeMaster] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypeMaster] ([ProductTypeID])
GO
ALTER TABLE [dbo].[SizeMaster] CHECK CONSTRAINT [FK_SizeMaster_ProductTypeMaster]
GO
ALTER TABLE [dbo].[StockMasterAdmin]  WITH CHECK ADD  CONSTRAINT [FK_StockMasterAdmin_ProductItemMaster] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItemMaster] ([ProductItemId])
GO
ALTER TABLE [dbo].[StockMasterAdmin] CHECK CONSTRAINT [FK_StockMasterAdmin_ProductItemMaster]
GO
