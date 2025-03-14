USE [master]
GO
/****** Object:  Database [RestaurantManagementSystem]    Script Date: 11/23/2024 12:59:25 AM ******/
CREATE DATABASE [RestaurantManagementSystem]
GO
ALTER DATABASE [RestaurantManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RestaurantManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RestaurantManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RestaurantManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RestaurantManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RestaurantManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RestaurantManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [RestaurantManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RestaurantManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RestaurantManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RestaurantManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RestaurantManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RestaurantManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RestaurantManagementSystem] SET QUERY_STORE = ON
GO
ALTER DATABASE [RestaurantManagementSystem] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RestaurantManagementSystem]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/23/2024 12:59:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [Customer_pk] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 11/23/2024 12:59:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [Food_pk] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/23/2024 12:59:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TableID] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [Order_pk] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 11/23/2024 12:59:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] NOT NULL,
	[ReservationDate] [date] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[TableNumber] [int] NOT NULL,
	[NumberOfGuests] [int] NOT NULL,
	[Cancelled] [bit] NOT NULL,
 CONSTRAINT [Reservation_pk] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([CustomerID], [Name], [Phone], [Email]) VALUES (3, N'Lâm', N'0853453564', N'lam@gmail.com')
GO
INSERT [dbo].[Food] ([FoodID], [Name], [Price]) VALUES (2, N'Hehe', 10000.0000)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [CustomerID], [FoodID], [Quantity], [TableID], [Status]) VALUES (1, CAST(N'2023-11-23' AS Date), 3, 2, 10, N'10', N'ok r')
GO
INSERT [dbo].[Reservation] ([ReservationID], [ReservationDate], [CustomerID], [TableNumber], [NumberOfGuests], [Cancelled]) VALUES (1, CAST(N'2024-11-23' AS Date), 3, 12, 6, 1)
INSERT [dbo].[Reservation] ([ReservationID], [ReservationDate], [CustomerID], [TableNumber], [NumberOfGuests], [Cancelled]) VALUES (2, CAST(N'2024-11-23' AS Date), 3, 9, 9, 0)
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Order_Food] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([FoodID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Order_Food]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [Reservation_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [Reservation_Customer]
GO
USE [master]
GO
ALTER DATABASE [RestaurantManagementSystem] SET  READ_WRITE 
GO
