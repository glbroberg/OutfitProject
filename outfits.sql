USE [master]
GO
/****** Object:  Database [Outfits]    Script Date: 5/16/2017 12:56:36 AM ******/
CREATE DATABASE [Outfits]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Outfits', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Outfits.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Outfits_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Outfits_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Outfits] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Outfits].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Outfits] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Outfits] SET ARITHABORT OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Outfits] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Outfits] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Outfits] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Outfits] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Outfits] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Outfits] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Outfits] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Outfits] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Outfits] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Outfits] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Outfits] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Outfits] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Outfits] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Outfits] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Outfits] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Outfits] SET  MULTI_USER 
GO
ALTER DATABASE [Outfits] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Outfits] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Outfits] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Outfits] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Outfits] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Outfits]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/16/2017 12:56:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](100) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
	[AccessoryColor] [nvarchar](50) NOT NULL,
	[AccessorySeason] [nvarchar](50) NOT NULL,
	[AccessoryOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/16/2017 12:56:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](100) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NOT NULL,
	[BottomOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/16/2017 12:56:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/16/2017 12:56:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](100) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NOT NULL,
	[ShoeOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/16/2017 12:56:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](100) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](50) NOT NULL,
	[TopOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (1, N'Dress Watch', N'https://s-media-cache-ak0.pinimg.com/736x/a1/90/28/a190289e0cd3623cb9d8ea6aa2ba6a41.jpg', N'Wrist-wear', N'Silver/Black', N'All', N'Formal')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Fitbit', N'http://brain-images.cdn.dixons.com/0/1/10151710/u_10151710.jpg', N'Wrist-wear', N'Black', N'All', N'Training')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'G''ed Up Necklace', N'http://thumbs2.ebaystatic.com/d/l225/m/mWTCs5r7pZPOvA03AvDGthQ.jpg', N'Necklace', N'Gold', N'All', N'Any')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Nike Running Shorts', N'https://s7d2.scene7.com/is/image/dkscdn/16NIKM9CHLLNGRSHRAPB_Anthracite_Anthracite_is/', N'Shorts', N'Grey', N'Summer', N'Training')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Blue Jeans', N'http://www.monki.com/Content/ProductContent/0255083002/0255083002_2_0.jpg', N'Long', N'Blue', N'All', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Grey Dress Pants', N'https://media.kohlsimg.com/is/image/kohls/1220591?wid=240&hei=240&op_sharpen=1', N'Long', N'Grey', N'All', N'Formal')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1, 2, 1, 3, 2)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, 3, 3, 4, 1)
INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (4, 1, 2, 1, 3)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Eastland Shermans', N'http://a2.zassets.com/images/z/3/3/6/9/7/8/3369783-p-LARGE_SEARCH.jpg', N'Boot', N'Brown', N'All', N'Casual')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Ted Baker Brown Dress Shoes', N'http://d2ob0iztsaxy5v.cloudfront.net/product/311689/3116897320_zm.jpg', N'Wingtip', N'Brown', N'All', N'Formal')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'On-road Running Shoes', N'http://www.weartested.org/wp-content/uploads/2013/03/SKORA-CORE-mens-grey.jpg', N'Athletic', N'Grey', N'All', N'Training')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (4, N'Black Dress Shoes', N'https://s-media-cache-ak0.pinimg.com/736x/64/1f/f2/641ff2d8642e3db68d7d7a070703eb2b.jpg', N'Dress', N'Black', N'All', N'Formal')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (5, N'Skora Running 2', N'https://tinyurl.com/m8dfnfv', N'Athletic', N'Black', N'All', N'Training')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (1, N'Grey Polo', N'http://www.ralphlauren.com/graphics/product_images/pPOLO2-25410833_lifestyle_t240.jpg', N'Short Sleeve', N'Grey', N'Summer', N'Business Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Under Armour Athletic Top', N'http://assets.academy.com/mgen/83/10720983.jpg?is=640,640', N'Athletic', N'Blue', N'All', N'Training')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Argile Sweater', N'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=92714808', N'Long Sleeve', N'Black', N'Winter', N'Formal')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Outfits] SET  READ_WRITE 
GO
