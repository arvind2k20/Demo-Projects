USE [MockTestDB]
GO
/****** Object:  Table [dbo].[tbl_answers]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](max) NOT NULL,
	[IsRight] [bit] NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_examtest_info]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_examtest_info](
	[ExamTestId] [int] IDENTITY(1,1) NOT NULL,
	[ExamTestUserName] [varchar](150) NOT NULL,
	[ExamTestSessionId] [uniqueidentifier] NOT NULL,
	[ExamTestStartDateTime] [datetime] NOT NULL,
	[ExamTestForSubjectCategory] [varchar](150) NOT NULL,
	[ExamTestCompleteStatus] [varchar](50) NOT NULL,
	[ExamTestEndTime] [datetime] NULL,
	[TotalTimeInMinutes] [float] NULL,
	[TotalNoOfQuestion] [int] NOT NULL,
	[TotalCorrectAnswer] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[Grade] [char](10) NOT NULL,
 CONSTRAINT [PK_tbl_examtest_info] PRIMARY KEY CLUSTERED 
(
	[ExamTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_examtest_info_detail]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_examtest_info_detail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QDisplayOrderId] [int] NOT NULL,
	[ExamTestId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[QuestionAttemptStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_examtest_info_detail_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_examtest_info_detail_answers]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_examtest_info_detail_answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnswerId] [int] NULL,
	[AnwerStatus] [bit] NOT NULL,
	[ExamInfoDetail_Id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_examtest_info_detail_answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_grade_master]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_grade_master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StratRange] [int] NULL,
	[EndRange] [int] NULL,
	[Grade] [char](10) NULL,
 CONSTRAINT [PK_tbl_grade_master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[Password] [varchar](150) NOT NULL,
	[tbl_registration_RegistrationId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_questions]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](max) NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[QuestionImage] [varchar](max) NULL,
	[ImagePosition] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_registration]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationId] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](250) NOT NULL,
	[LastName] [varchar](250) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[EmailId] [varchar](250) NOT NULL,
	[Mobile] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[RegistrationDate] [date] NOT NULL,
 CONSTRAINT [PK_tbl_registration] PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_role]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_role](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tbl_role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_subjectCategory]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_subjectCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCategory] [varchar](150) NOT NULL,
	[SubjectId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_subjectCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_subjectMaster]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_subjectMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tbl_subjectMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_user_in_roles]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user_in_roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tbl_user_in_roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_verification_info]    Script Date: 8/26/2016 3:39:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_verification_info](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationId] [uniqueidentifier] NOT NULL,
	[VerificationLink] [varchar](max) NOT NULL,
	[VerificationCode] [varchar](150) NULL,
	[LinkGenerateDate] [datetime] NULL,
	[VerificationDate] [datetime] NULL,
	[IsVerify] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_verification_info] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_examtest_info_detail] ADD  CONSTRAINT [DF_tbl_examtest_info_detail_QuestionAttemptStatus]  DEFAULT ('Unanswered') FOR [QuestionAttemptStatus]
GO
ALTER TABLE [dbo].[tbl_grade_master] ADD  CONSTRAINT [DF_tbl_grade_master_Grade]  DEFAULT ('D') FOR [Grade]
GO
ALTER TABLE [dbo].[tbl_registration] ADD  CONSTRAINT [DF_tbl_registration_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_answers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_answers_tbl_questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[tbl_questions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_answers] CHECK CONSTRAINT [FK_tbl_answers_tbl_questions]
GO
ALTER TABLE [dbo].[tbl_examtest_info]  WITH CHECK ADD  CONSTRAINT [FK_tbl_examtest_info_tbl_login] FOREIGN KEY([ExamTestUserName])
REFERENCES [dbo].[tbl_login] ([UserName])
GO
ALTER TABLE [dbo].[tbl_examtest_info] CHECK CONSTRAINT [FK_tbl_examtest_info_tbl_login]
GO
ALTER TABLE [dbo].[tbl_examtest_info_detail_answers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_examtest_info_detailtbl_examtest_info_detail_answers] FOREIGN KEY([ExamInfoDetail_Id])
REFERENCES [dbo].[tbl_examtest_info_detail] ([Id])
GO
ALTER TABLE [dbo].[tbl_examtest_info_detail_answers] CHECK CONSTRAINT [FK_tbl_examtest_info_detailtbl_examtest_info_detail_answers]
GO
ALTER TABLE [dbo].[tbl_login]  WITH CHECK ADD  CONSTRAINT [FK_tbl_logintbl_registration] FOREIGN KEY([tbl_registration_RegistrationId])
REFERENCES [dbo].[tbl_registration] ([RegistrationId])
GO
ALTER TABLE [dbo].[tbl_login] CHECK CONSTRAINT [FK_tbl_logintbl_registration]
GO
ALTER TABLE [dbo].[tbl_questions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_questions_tbl_subjectCategory] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[tbl_subjectCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_questions] CHECK CONSTRAINT [FK_tbl_questions_tbl_subjectCategory]
GO
ALTER TABLE [dbo].[tbl_subjectCategory]  WITH CHECK ADD  CONSTRAINT [FK_tbl_subjectCategory_tbl_subjectMaster] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[tbl_subjectMaster] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_subjectCategory] CHECK CONSTRAINT [FK_tbl_subjectCategory_tbl_subjectMaster]
GO
ALTER TABLE [dbo].[tbl_user_in_roles]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tbl_login] FOREIGN KEY([UserName])
REFERENCES [dbo].[tbl_login] ([UserName])
GO
ALTER TABLE [dbo].[tbl_user_in_roles] CHECK CONSTRAINT [FK_Table_1_tbl_login]
GO
ALTER TABLE [dbo].[tbl_user_in_roles]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tbl_role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_role] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_user_in_roles] CHECK CONSTRAINT [FK_Table_1_tbl_role]
GO
ALTER TABLE [dbo].[tbl_verification_info]  WITH CHECK ADD  CONSTRAINT [FK_tbl_verification_info_tbl_registration] FOREIGN KEY([RegistrationId])
REFERENCES [dbo].[tbl_registration] ([RegistrationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_verification_info] CHECK CONSTRAINT [FK_tbl_verification_info_tbl_registration]
GO
