
/****** Object:  Table [dbo].[LeaveDetails]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[PersonName] [nvarchar](50) NULL,
	[IsStudent] [bit] NULL,
	[LeaveDate] [datetime] NULL,
	[LeaveReason] [nvarchar](100) NULL,
	[LeaveStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[SID] [varchar](20) NOT NULL,
	[NAME] [varchar](20) NOT NULL,
	[STD] [varchar](20) NOT NULL,
	[AGE] [int] NOT NULL,
	[ADDRESS] [char](30) NULL,
	[FNAME] [varchar](20) NOT NULL,
	[MNAME] [varchar](20) NOT NULL,
	[TNAME] [varchar](20) NOT NULL,
	[EMAIL] [varchar](20) NULL,
	[PHONE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEACHERS]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHERS](
	[TID] [varchar](20) NOT NULL,
	[NAME] [varchar](20) NOT NULL,
	[STD] [varchar](20) NOT NULL,
	[AGE] [int] NOT NULL,
	[ADDRESS] [char](30) NULL,
	[EMAIL] [varchar](20) NULL,
	[PHONE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable_1]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_1](
	[id] [bigint] NOT NULL,
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable_2]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_2](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable_3]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_3](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable_4]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_4](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTable_5]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable_5](
	[Standard] [varchar](20) NOT NULL,
	[Days] [varchar](20) NOT NULL,
	[Period_1] [varchar](20) NOT NULL,
	[Period_2] [varchar](20) NOT NULL,
	[Period_3] [varchar](20) NOT NULL,
	[Period_4] [varchar](20) NOT NULL,
	[Period_5] [varchar](20) NOT NULL,
	[Period_6] [varchar](20) NOT NULL,
	[Period_7] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[UserId] [int] NOT NULL,
	[UserName] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[UserName] ASC,
	[Password] ASC,
	[IsActive] ASC,
	[Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LeaveDetails] ON 

INSERT [dbo].[LeaveDetails] ([Id], [PersonId], [PersonName], [IsStudent], [LeaveDate], [LeaveReason], [LeaveStatus]) VALUES (24, 1245, N'adrit', 1, CAST(N'2020-01-14T00:00:00.000' AS DateTime), N'i am sick', 1)
INSERT [dbo].[LeaveDetails] ([Id], [PersonId], [PersonName], [IsStudent], [LeaveDate], [LeaveReason], [LeaveStatus]) VALUES (25, 1245, N'adrit', 1, CAST(N'2020-01-09T00:00:00.000' AS DateTime), N'tert', 1)
INSERT [dbo].[LeaveDetails] ([Id], [PersonId], [PersonName], [IsStudent], [LeaveDate], [LeaveReason], [LeaveStatus]) VALUES (26, 99, N'adu', 1, CAST(N'2020-02-29T00:00:00.000' AS DateTime), N'i cant come', 1)
INSERT [dbo].[LeaveDetails] ([Id], [PersonId], [PersonName], [IsStudent], [LeaveDate], [LeaveReason], [LeaveStatus]) VALUES (27, 323, N'ewee', 0, CAST(N'2020-04-10T00:00:00.000' AS DateTime), N'nku vayya', 1)
SET IDENTITY_INSERT [dbo].[LeaveDetails] OFF
INSERT [dbo].[STUDENTS] ([SID], [NAME], [STD], [AGE], [ADDRESS], [FNAME], [MNAME], [TNAME], [EMAIL], [PHONE]) VALUES (N'099', N'adu', N'7', 89, N'jjh                           ', N'hjh', N'hii', N'iij', N'saru.ktha@gmail.com', 789)
INSERT [dbo].[STUDENTS] ([SID], [NAME], [STD], [AGE], [ADDRESS], [FNAME], [MNAME], [TNAME], [EMAIL], [PHONE]) VALUES (N'1245', N'adrit', N'1', 4, N'tetq                          ', N'dd', N'ss', N'si', N'saru.ktha@gmail.com', 89396136)
INSERT [dbo].[STUDENTS] ([SID], [NAME], [STD], [AGE], [ADDRESS], [FNAME], [MNAME], [TNAME], [EMAIL], [PHONE]) VALUES (N'7895', N'adrith', N'7', 6, N'ddk                           ', N'dod', N'ldld', N'dkdo', N'saru.ktha@gmail.com', 2566)
INSERT [dbo].[STUDENTS] ([SID], [NAME], [STD], [AGE], [ADDRESS], [FNAME], [MNAME], [TNAME], [EMAIL], [PHONE]) VALUES (N'8989', N'adrithh', N'6', 99, N'jsj                           ', N'jdk', N'kkd', N'ksks', N'saru.ktha@gmail.com', 89898)
INSERT [dbo].[TEACHERS] ([TID], [NAME], [STD], [AGE], [ADDRESS], [EMAIL], [PHONE]) VALUES (N'1233', N'teacg', N'1,2', 12, N'fs                            ', N'teacher@gmail.com', 2)
INSERT [dbo].[TEACHERS] ([TID], [NAME], [STD], [AGE], [ADDRESS], [EMAIL], [PHONE]) VALUES (N'323', N'ewee', N'1,3', 23, N'ds                            ', N'te@gmail.com', 32323)
INSERT [dbo].[TimeTable_1] ([id], [Standard], [Days], [Period_1], [Period_2], [Period_3], [Period_4], [Period_5], [Period_6], [Period_7]) VALUES (1, N'1', N'Monday', N'Englsh', N'English', N'English', N'English', N'English', N'English', N'English')
INSERT [dbo].[TimeTable_1] ([id], [Standard], [Days], [Period_1], [Period_2], [Period_3], [Period_4], [Period_5], [Period_6], [Period_7]) VALUES (2, N'2', N'Maths', N'Maths', N'Maths', N'Maths', N'Maths', N'Maths', N'Maths', N'Maths')
INSERT [dbo].[UserProfiles] ([UserId], [UserName], [Password], [IsActive], [Role]) VALUES (0, N'saru.ktha@gmail.com                               ', N'studentPwd                                        ', 1, 3)
INSERT [dbo].[UserProfiles] ([UserId], [UserName], [Password], [IsActive], [Role]) VALUES (0, N'te@gmail.com                                      ', N'teacherPwd                                        ', 1, 2)
INSERT [dbo].[UserProfiles] ([UserId], [UserName], [Password], [IsActive], [Role]) VALUES (0, N'teacher@gmail.com                                 ', N'teacherPwd                                        ', 1, 2)
INSERT [dbo].[UserProfiles] ([UserId], [UserName], [Password], [IsActive], [Role]) VALUES (1, N'admin                                             ', N'admin                                             ', 1, 1)
/****** Object:  StoredProcedure [dbo].[sp_timetable1]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable1]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_1
end;

GO
/****** Object:  StoredProcedure [dbo].[sp_timetable2]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable2]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_2
end;

GO
/****** Object:  StoredProcedure [dbo].[sp_timetable3]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable3]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_3
end;

GO
/****** Object:  StoredProcedure [dbo].[sp_timetable4]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable4]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_4
end;

GO
/****** Object:  StoredProcedure [dbo].[sp_timetable5]    Script Date: 12-01-2020 20:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_timetable5]
As
Begin
select
Standard,
Days,
Period_1,
Period_2,
Period_3,
Period_4,
Period_5,
Period_6,
Period_7
from
dbo.TimeTable_5
end;

GO
USE [master]
GO
ALTER DATABASE [Student] SET  READ_WRITE 
GO
