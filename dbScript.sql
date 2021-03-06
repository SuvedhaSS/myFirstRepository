USE [master]
GO
/****** Object:  Database [ContactDB]    Script Date: 09-05-2021 18:59:46 ******/
CREATE DATABASE [ContactDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContactDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ContactDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ContactDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ContactDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ContactDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContactDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContactDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContactDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContactDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContactDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContactDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContactDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContactDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContactDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContactDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContactDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContactDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContactDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContactDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContactDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContactDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContactDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContactDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContactDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContactDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContactDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContactDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContactDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContactDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ContactDB] SET  MULTI_USER 
GO
ALTER DATABASE [ContactDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContactDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContactDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContactDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ContactDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ContactDB', N'ON'
GO
ALTER DATABASE [ContactDB] SET QUERY_STORE = OFF
GO
USE [ContactDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ContactDB]
GO
/****** Object:  Table [dbo].[tblContacts]    Script Date: 09-05-2021 18:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailId] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_tblContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblContacts] ON 

INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (17, N'Suvedha', N'ttt', N'elizabeth.vincent1128@gmail.com', N'9611113707', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (18, N'Suvedha', N'Rane22', N'miss.13.3.2010@gmail.com', N'6655555555', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (19, N'Suvedha', N'Raneiiiii', N'elizabeth.vincent1128@gmail.com', N'7876767675', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (20, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'7777777777', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (21, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (22, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (23, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9999888878', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (24, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (25, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (26, N'Suvedha', N'Rane666', N'miss.13.3.2010@gmail.com', N'6655555555', 1, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (27, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (28, N'Suvedha', N'Rane', N'miss.13.3.2010@gmail.com', N'6655555555', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (29, N'Suvedha', N'Rane', N'elizabeth.vincent1128@gmail.com', N'9611113707', 0, 1)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (30, N'suvedha', N'Rane', N'ssssssss@gmail.com', N'8999599126', 1, NULL)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (31, N'divya', N'phule', N'divya.phule@gmail.com', N'9867575680', 0, NULL)
INSERT [dbo].[tblContacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [Status], [IsDeleted]) VALUES (32, N'kalpana', N'palav', N'kalpana.palav@gmail.com', N'4567646868', 1, 1)
SET IDENTITY_INSERT [dbo].[tblContacts] OFF
GO
USE [master]
GO
ALTER DATABASE [ContactDB] SET  READ_WRITE 
GO
