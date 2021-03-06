
CREATE TABLE [dbo].[insertmovie](
	[A_ID] [int] IDENTITY(1,1) NOT NULL,
	[mwID] [int] NULL,
	[mtID] [int] NULL,
	[moviename] [varchar](20) NULL,
	[mimage] [varchar](100) NULL,
	[mrate] [int] NULL,
	[mdes] [varchar](100) NULL,
 CONSTRAINT [PK_insertmovie] PRIMARY KEY CLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_movie]    Script Date: 3/9/2016 12:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_movie](
	[mID] [int] IDENTITY(1,1) NOT NULL,
	[mName] [varchar](20) NULL,
	[mtID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_movietype]    Script Date: 3/9/2016 12:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_movietype](
	[mtID] [int] IDENTITY(1,1) NOT NULL,
	[mtName] [varchar](20) NULL,
	[mwID] [int] NULL,
 CONSTRAINT [PK_TB_movietype] PRIMARY KEY CLUSTERED 
(
	[mtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_moviewood]    Script Date: 3/9/2016 12:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_moviewood](
	[mwID] [int] IDENTITY(1,1) NOT NULL,
	[mwName] [varchar](20) NULL,
 CONSTRAINT [PK_TB_moviewood] PRIMARY KEY CLUSTERED 
(
	[mwID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_registeruser]    Script Date: 3/9/2016 12:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_registeruser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](30) NULL,
	[uemail] [varchar](30) NULL,
	[upass] [int] NULL,
 CONSTRAINT [PK_Tb_registeruser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[insertmovie] ON 

INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (3, 1, 1, N'Dabbang', N'~/photos/boy.jpg', 20, N'good one')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (4, 1, 2, N'Golmal', N'~/photos/golmal.jpg', 100, N'full on comedy')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (5, 1, 3, N'Mann', N'~/photos/mann.jpg', 120, N'romantic + emotional')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (6, 2, 4, N'Avenger', N'~/photos/avenger.jpg', 90, N'good one')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (7, 2, 5, N'Hangover', N'~/photos/hangover.jpg', 150, N'full on comedy')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (8, 2, 6, N'Titanic', N'~/photos/titanic.jpg', 80, N'good one')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (9, 3, 7, N'Yevadu', N'~/photos/yevadu.jpg', 100, N'good one')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (10, 3, 8, N'Gabbar Singh', N'~/photos/gabbarsingh.jpg', 100, N'good one')
INSERT [dbo].[insertmovie] ([A_ID], [mwID], [mtID], [moviename], [mimage], [mrate], [mdes]) VALUES (11, 3, 9, N'Chitram', N'~/photos/chitram.jpg', 120, N'good one')
SET IDENTITY_INSERT [dbo].[insertmovie] OFF
SET IDENTITY_INSERT [dbo].[TB_movie] ON 

INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (1, N'Singham', 1)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (2, N'Golmal', 2)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (3, N'Mann', 3)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (4, N'Fast & Furious', 4)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (5, N'Superbad', 5)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (6, N'Titanic', 6)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (7, N'Ek or sikhar', 7)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (8, N'comedy king', 8)
INSERT [dbo].[TB_movie] ([mID], [mName], [mtID]) VALUES (9, N'Aakash', 9)
SET IDENTITY_INSERT [dbo].[TB_movie] OFF
SET IDENTITY_INSERT [dbo].[TB_movietype] ON 

INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (1, N'Action', 1)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (2, N'Comedy', 1)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (3, N'Romantic', 1)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (4, N'Action', 2)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (5, N'Comedy', 2)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (6, N'Romantic', 2)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (7, N'Action', 3)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (8, N'Comedy', 3)
INSERT [dbo].[TB_movietype] ([mtID], [mtName], [mwID]) VALUES (9, N'Romantic', 3)
SET IDENTITY_INSERT [dbo].[TB_movietype] OFF
SET IDENTITY_INSERT [dbo].[TB_moviewood] ON 

INSERT [dbo].[TB_moviewood] ([mwID], [mwName]) VALUES (1, N'Bollywood')
INSERT [dbo].[TB_moviewood] ([mwID], [mwName]) VALUES (2, N'Hollywood')
INSERT [dbo].[TB_moviewood] ([mwID], [mwName]) VALUES (3, N'Tollywood')
SET IDENTITY_INSERT [dbo].[TB_moviewood] OFF
SET IDENTITY_INSERT [dbo].[Tb_registeruser] ON 

INSERT [dbo].[Tb_registeruser] ([userID], [uname], [uemail], [upass]) VALUES (5, N'Rahul', N'rahul@gmail.com', 123)
INSERT [dbo].[Tb_registeruser] ([userID], [uname], [uemail], [upass]) VALUES (6, N'Sohel', N'sohel@gmail.com', 12345)
INSERT [dbo].[Tb_registeruser] ([userID], [uname], [uemail], [upass]) VALUES (7, N'Krunal', N'krunal@gmail.com', 123)
INSERT [dbo].[Tb_registeruser] ([userID], [uname], [uemail], [upass]) VALUES (8, N'pawan', N'Pawan@gmail.com', 123)
INSERT [dbo].[Tb_registeruser] ([userID], [uname], [uemail], [upass]) VALUES (9, N'sohil', N'sohil@gmail.com', 12345)
SET IDENTITY_INSERT [dbo].[Tb_registeruser] OFF
/****** Object:  StoredProcedure [dbo].[changepass]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[changepass]
@userID int,
@upass int,
@npass int
as
update Tb_registeruser set upass=@npass where userID=@userID and upass=@upass
GO
/****** Object:  StoredProcedure [dbo].[dltuser]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dltuser]
@userID int
as
delete from Tb_registeruser where userID=@userID
GO
/****** Object:  StoredProcedure [dbo].[frgrtpass]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[frgrtpass]
as
select * from Tb_registeruser
GO
/****** Object:  StoredProcedure [dbo].[getallmovie]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallmovie]
as
select * from insertmovie
GO
/****** Object:  StoredProcedure [dbo].[getmovie]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getmovie]
@mtID int
as
select * from TB_movie where @mtId=mtID
GO
/****** Object:  StoredProcedure [dbo].[getmovie2]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getmovie2]
@mtID int
as
select * from insertmovie where @mtId=mtID
GO
/****** Object:  StoredProcedure [dbo].[getmovietype]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getmovietype]
	@mwID int
	as
	select * from TB_movietype where @mwID=mwID
GO
/****** Object:  StoredProcedure [dbo].[getmoviewood]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getmoviewood]
as
select * from TB_moviewood
GO
/****** Object:  StoredProcedure [dbo].[getuser]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getuser]
as
select * from Tb_registeruser
GO
/****** Object:  StoredProcedure [dbo].[insertmovies]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertmovies]
@mwID int,
@mtID int,

@moviename varchar(30),
@mimage varchar(100),
@mrate int,
@mdes varchar(100)
as
insert into insertmovie values(@mwID,@mtID,@moviename,@mimage,@mrate,@mdes)
GO
/****** Object:  StoredProcedure [dbo].[registeruser]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[registeruser]
@uname varchar(20),
@uemail varchar(20),
@upass int
as
insert into Tb_registeruser values(@uname,@uemail,@upass)
GO
/****** Object:  StoredProcedure [dbo].[searchmovie]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchmovie]
@A_ID int,
@mwID int,
@mtID int
as
if(@mwID!=0 and @A_ID=0 and @mtID=0)
select * from insertmovie where mwID=@mwID

if(@mwID!=0 and @mtID!=0 and @A_ID!=0)
select * from insertmovie where A_ID=@A_ID

if(@mwID!=0 and @mtID!=0 and @A_ID=0)
select * from insertmovie where mtID=@mtID
GO
/****** Object:  StoredProcedure [dbo].[updtuser]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updtuser]
@userId int,
@uname varchar(20),
@uemail varchar(20)
as
update Tb_registeruser set uname=@uname ,uemail=@uemail where userID=@userID
GO
/****** Object:  StoredProcedure [dbo].[userlogin]    Script Date: 3/9/2016 12:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[userlogin]
@uemail varchar(30),
@upass int
as
select * from Tb_registeruser where uemail=@uemail and upass=@upass
GO