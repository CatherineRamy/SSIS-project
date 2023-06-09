USE [FacultyDatabase]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](10) NULL,
	[CourseName] [varchar](55) NULL,
	[CourseSemester] [int] NULL,
	[ProfessorID] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [varchar](25) NULL,
	[DepartmentName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[ProfessorID] [varchar](10) NOT NULL,
	[ProfessorName] [varchar](50) NULL,
	[ProfessorEmail] [varchar](50) NULL,
 CONSTRAINT [PK_Professor] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[StudentID] [int] NULL,
	[CourseID] [varchar](10) NULL,
	[CourseRate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SGrade]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGrade](
	[StudentID] [int] NULL,
	[CourseID] [varchar](10) NULL,
	[Grade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/4/2023 5:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NULL,
	[StudentGender] [text] NULL,
	[StudentSemester] [int] NULL,
	[DepartmentID] [varchar](25) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
