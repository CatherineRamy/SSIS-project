USE [Faculty_DWH]
GO
/****** Object:  Database [Faculty_DWH]    Script Date: 5/8/2023 3:03:40 PM ******/

ALTER DATABASE [Faculty_DWH] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Faculty_DWH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Faculty_DWH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Faculty_DWH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Faculty_DWH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Faculty_DWH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Faculty_DWH] SET ARITHABORT OFF 
GO
ALTER DATABASE [Faculty_DWH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Faculty_DWH] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Faculty_DWH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Faculty_DWH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Faculty_DWH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Faculty_DWH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Faculty_DWH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Faculty_DWH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Faculty_DWH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Faculty_DWH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Faculty_DWH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Faculty_DWH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Faculty_DWH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Faculty_DWH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Faculty_DWH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Faculty_DWH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Faculty_DWH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Faculty_DWH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Faculty_DWH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Faculty_DWH] SET  MULTI_USER 
GO
ALTER DATABASE [Faculty_DWH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Faculty_DWH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Faculty_DWH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Faculty_DWH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Faculty_DWH]
GO
/****** Object:  Table [dbo].[Best_course_rate]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Best_course_rate](
	[ProfessorName] [varchar](50) NULL,
	[CourseName] [varchar](55) NULL,
	[CourseRate] [float] NULL,
	[pr_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_Grade]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DWH_Grade](
	[StudentID] [int] NULL,
	[Grade] [bigint] NULL,
	[StudentSemester] [int] NULL,
	[DepartmentID] [varchar](25) NULL,
	[Total_Grade] [bigint] NULL,
	[date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_Graduates]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DWH_Graduates](
	[StudentID] [int] NULL,
	[StudentSemester] [int] NULL,
	[DepartmentID] [varchar](25) NULL,
	[DepartmentName] [varchar](50) NULL,
	[date] [datetime] NULL,
	[Grade_Perc] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_Prof_rate]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DWH_Prof_rate](
	[CourseRate] [float] NULL,
	[CourseID] [varchar](10) NULL,
	[CourseName] [varchar](55) NULL,
	[ProfessorName] [varchar](50) NULL,
	[ProfessorID] [varchar](10) NULL,
	[pr_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_Top_Students]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DWH_Top_Students](
	[StudentID] [int] NULL,
	[StudentSemester] [int] NULL,
	[Grade] [bigint] NULL,
	[date] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top_Per_Department]    Script Date: 5/8/2023 3:03:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Top_Per_Department](
	[StudentID] [int] NULL,
	[DepartmentName] [varchar](50) NULL,
	[Grade_Perc] [bigint] NULL,
	[date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Faculty_DWH] SET  READ_WRITE 
GO
