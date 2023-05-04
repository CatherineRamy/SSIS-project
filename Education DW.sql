USE [Education]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](10) NOT NULL,
	[CourseName] [varchar](55) NULL,
	[CourseSemester] [int] NULL,
	[ProfessorID] [varchar](10) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [varchar](25) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnrollmentFactTable]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnrollmentFactTable](
	[StudentID] [int] NULL,
	[CourseID] [varchar](10) NULL,
	[Semester] [int] NULL,
	[EnrollmentStatus] [int] NULL,
	[Enrollment_SK] [int] NOT NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[Enrollment_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [nchar](10) NOT NULL,
	[StudentID] [int] NULL,
	[CourseID] [varchar](10) NULL,
	[Grade] [int] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradingGuideFactTable]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradingGuideFactTable](
	[Grade_SK] [int] NOT NULL,
	[GradeID] [nchar](10) NULL,
	[CoursePercentage] [int] NULL,
	[CGPA] [float] NULL,
	[Semester] [int] NULL,
 CONSTRAINT [PK_GradeFactTable] PRIMARY KEY CLUSTERED 
(
	[Grade_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 5/4/2023 5:32:25 PM ******/
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
/****** Object:  Table [dbo].[Rate]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[RateID] [int] NOT NULL,
	[CourseID] [varchar](10) NULL,
	[StudentID] [int] NULL,
	[CourseRate] [float] NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[RateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[StudentGender] [text] NULL,
	[StudentSemester] [int] NULL,
	[DepartmentID] [varchar](25) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyFactTable]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyFactTable](
	[Rate_SK] [int] NOT NULL,
	[RateID] [int] NULL,
	[RatingPercentage] [int] NULL,
	[Semester] [int] NULL,
 CONSTRAINT [PK_RateFactTable] PRIMARY KEY CLUSTERED 
(
	[Rate_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 5/4/2023 5:32:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Semester] [int] NOT NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[Semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Professor] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professor] ([ProfessorID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Professor]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Time] FOREIGN KEY([CourseSemester])
REFERENCES [dbo].[Time] ([Semester])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Time]
GO
ALTER TABLE [dbo].[EnrollmentFactTable]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[EnrollmentFactTable] CHECK CONSTRAINT [FK_Enrollment_Course]
GO
ALTER TABLE [dbo].[EnrollmentFactTable]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[EnrollmentFactTable] CHECK CONSTRAINT [FK_Enrollment_Student]
GO
ALTER TABLE [dbo].[EnrollmentFactTable]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Time] FOREIGN KEY([Semester])
REFERENCES [dbo].[Time] ([Semester])
GO
ALTER TABLE [dbo].[EnrollmentFactTable] CHECK CONSTRAINT [FK_Enrollment_Time]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Course]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[GradingGuideFactTable]  WITH CHECK ADD  CONSTRAINT [FK_GradeFactTable_Grade] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([GradeID])
GO
ALTER TABLE [dbo].[GradingGuideFactTable] CHECK CONSTRAINT [FK_GradeFactTable_Grade]
GO
ALTER TABLE [dbo].[GradingGuideFactTable]  WITH CHECK ADD  CONSTRAINT [FK_GradeFactTable_Time] FOREIGN KEY([Semester])
REFERENCES [dbo].[Time] ([Semester])
GO
ALTER TABLE [dbo].[GradingGuideFactTable] CHECK CONSTRAINT [FK_GradeFactTable_Time]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Course]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Student1] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Student1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[SurveyFactTable]  WITH CHECK ADD  CONSTRAINT [FK_RateFactTable_Rate] FOREIGN KEY([RateID])
REFERENCES [dbo].[Rate] ([RateID])
GO
ALTER TABLE [dbo].[SurveyFactTable] CHECK CONSTRAINT [FK_RateFactTable_Rate]
GO
ALTER TABLE [dbo].[SurveyFactTable]  WITH CHECK ADD  CONSTRAINT [FK_RateFactTable_Time] FOREIGN KEY([Semester])
REFERENCES [dbo].[Time] ([Semester])
GO
ALTER TABLE [dbo].[SurveyFactTable] CHECK CONSTRAINT [FK_RateFactTable_Time]
GO
