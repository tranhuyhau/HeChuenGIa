USE [master]
GO
/****** Object:  Database [ChuanDoanBenhPhoi]    Script Date: 2022-12-09 10:07:38 PM ******/
CREATE DATABASE [ChuanDoanBenhPhoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChuanDoanBenhPhoi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChuanDoanBenhPhoi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChuanDoanBenhPhoi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ChuanDoanBenhPhoi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChuanDoanBenhPhoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET RECOVERY FULL 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET  MULTI_USER 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChuanDoanBenhPhoi', N'ON'
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET QUERY_STORE = OFF
GO
USE [ChuanDoanBenhPhoi]
GO
/****** Object:  User [NgonNguKichBan]    Script Date: 2022-12-09 10:07:38 PM ******/
CREATE USER [NgonNguKichBan] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Ket_Luan]    Script Date: 2022-12-09 10:07:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ket_Luan](
	[Ma_Ket_Luan] [varchar](50) NOT NULL,
	[Ten_Ket_Luan] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ket_Luan] PRIMARY KEY CLUSTERED 
(
	[Ma_Ket_Luan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luat]    Script Date: 2022-12-09 10:07:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luat](
	[Ma_Tap_Luat] [varchar](50) NOT NULL,
	[Cac_Trieu_Chung] [nvarchar](255) NULL,
	[Ket_Luan] [nvarchar](255) NULL,
 CONSTRAINT [PK_Luat] PRIMARY KEY CLUSTERED 
(
	[Ma_Tap_Luat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trieu_chung]    Script Date: 2022-12-09 10:07:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trieu_chung](
	[Ma_Trieu_Chung] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Trieu_Chung] [nvarchar](255) NULL,
	[Checkbox] [char](10) NULL,
 CONSTRAINT [PK_Trieu_chung] PRIMARY KEY CLUSTERED 
(
	[Ma_Trieu_Chung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL1', N'Việm phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL10', N'Bệnh bụi phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL11', N'Tăng huyết áp động mạch phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL12', N'Bệnh sơ nang')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL13', N'Hội chứng suy hô hấp')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL14', N'Bệnh u hạt')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL15', N'Bệnh lao phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL2', N'Viêm phế quản')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL3', N'Ung thư phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL4', N'Ung thư phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL5', N'Khí phế thủng')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL6', N'Viêm phế mạc')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL7', N'Thuyên tắc phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL8', N'Phù phổi')
INSERT [dbo].[Ket_Luan] ([Ma_Ket_Luan], [Ten_Ket_Luan]) VALUES (N'KL9', N'Sơ hoá phổi')
GO
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L1', N'1,2,3,4,5', N'KL1')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L10', N'2,5,3,20', N'KL10')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L11', N'5,10,1,3,22', N'KL11')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L12', N'6,23,24', N'KL12')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L13', N'1,5,25,26', N'KL13')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L14', N'2,3,6', N'KL14')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L15', N'5,25,6,22', N'KL15')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L2', N'1,2,3,5,6,7', N'KL2')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L3', N'5,8,9,10,2,8', N'KL3')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L4', N'2,5,3,11,12,13', N'KL4')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L5', N'2,3,15,1,25', N'KL5')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L6', N'2,1,5,15', N'KL6')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L7', N'5,15,14,16,17', N'KL7')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L8', N'5,2,18', N'KL8')
INSERT [dbo].[Luat] ([Ma_Tap_Luat], [Cac_Trieu_Chung], [Ket_Luan]) VALUES (N'L9', N'6,7,3,13,19', N'KL9')
GO
SET IDENTITY_INSERT [dbo].[Trieu_chung] ON 

INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (1, N'Sốt, mệt mỏi', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (2, N'Ho khạc đờm', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (3, N'Đau ngực khi ho, thở', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (4, N'Buồn nôn, nôn mửa, tiêu chảy', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (5, N'Khó thở', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (6, N'Kho dai dẳng', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (7, N'Thở khò khè', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (8, N'Thiếu năng lượng', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (9, N'Nhiễm trùng đường hô hấp thường xuyên', N'true      ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (10, N'Sưng phù ở mắt cá chân, bàn chân hoặc chân', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (11, N'Khàn tiếng', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (12, N'Hạnh cổ', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (13, N'Sút cân', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (14, N'Choáng ván', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (15, N'Ho ra máu', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (16, N'Huyết áp thấp', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (17, N'Mất ý thức', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (18, N'Vã mồ hôi, tiếng thở rít', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (19, N'Đau nhức các bắp thịt và khớp', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (20, N'Bị viêm tắc nghẽn tiểu phế quản tận', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (21, N'Chứng xanh tím', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (22, N'Viêm phổi hồi quy', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (23, N'Nghe phổi có nhiều tiếng rên lép bép ở vùng đáy', N'false     ')
INSERT [dbo].[Trieu_chung] ([Ma_Trieu_Chung], [Ten_Trieu_Chung], [Checkbox]) VALUES (24, N'Luôn trong trạng thái buồn ngủ', N'false     ')
SET IDENTITY_INSERT [dbo].[Trieu_chung] OFF
GO
USE [master]
GO
ALTER DATABASE [ChuanDoanBenhPhoi] SET  READ_WRITE 
GO
