USE [master]
GO
/****** Object:  Database [ParserUCoin]    Script Date: 12/25/2022 11:21:22 PM ******/
CREATE DATABASE [ParserUCoin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParserUCoin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ParserUCoin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParserUCoin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ParserUCoin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ParserUCoin] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParserUCoin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParserUCoin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParserUCoin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParserUCoin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParserUCoin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParserUCoin] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParserUCoin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParserUCoin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParserUCoin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParserUCoin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParserUCoin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParserUCoin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParserUCoin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParserUCoin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParserUCoin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParserUCoin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ParserUCoin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParserUCoin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParserUCoin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParserUCoin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParserUCoin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParserUCoin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParserUCoin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParserUCoin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ParserUCoin] SET  MULTI_USER 
GO
ALTER DATABASE [ParserUCoin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParserUCoin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParserUCoin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParserUCoin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParserUCoin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ParserUCoin] SET QUERY_STORE = OFF
GO
USE [ParserUCoin]
GO
/****** Object:  Table [dbo].[DirtyCoin]    Script Date: 12/25/2022 11:21:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirtyCoin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[WWCNumber] [nvarchar](max) NULL,
	[Issuer] [nvarchar](max) NULL,
	[Denomination] [nvarchar](max) NULL,
	[Year] [nvarchar](max) NULL,
	[Period] [nvarchar](max) NULL,
	[TypeOfMinting] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Gurt] [nvarchar](max) NULL,
	[Shape] [nvarchar](max) NULL,
	[Relationship] [nvarchar](max) NULL,
	[Weight] [nvarchar](max) NULL,
	[Diameter] [nvarchar](max) NULL,
	[Thickness] [nvarchar](max) NULL,
	[ImgFrontUrl] [nvarchar](max) NULL,
	[ImgBackUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_DirtyCoin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ParserUCoin] SET  READ_WRITE 
GO
