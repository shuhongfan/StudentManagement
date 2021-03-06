USE [master]
GO
/****** Object:  Database [StuMangement]    Script Date: 2022/5/12 14:50:25 ******/
CREATE DATABASE [StuMangement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StuMangement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StuMangement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StuMangement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StuMangement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StuMangement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StuMangement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StuMangement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StuMangement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StuMangement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StuMangement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StuMangement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StuMangement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StuMangement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StuMangement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StuMangement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StuMangement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StuMangement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StuMangement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StuMangement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StuMangement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StuMangement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StuMangement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StuMangement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StuMangement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StuMangement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StuMangement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StuMangement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StuMangement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StuMangement] SET RECOVERY FULL 
GO
ALTER DATABASE [StuMangement] SET  MULTI_USER 
GO
ALTER DATABASE [StuMangement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StuMangement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StuMangement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StuMangement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StuMangement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StuMangement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StuMangement] SET QUERY_STORE = OFF
GO
USE [StuMangement]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2022/5/12 14:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_user] [varchar](50) NOT NULL,
	[admin_password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classinfo]    Script Date: 2022/5/12 14:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classinfo](
	[classid] [varchar](50) NOT NULL,
	[classname] [varchar](50) NOT NULL,
	[classmajor] [varchar](50) NOT NULL,
	[classcount] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classinfo] PRIMARY KEY CLUSTERED 
(
	[classid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gradeinfo]    Script Date: 2022/5/12 14:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gradeinfo](
	[gradeid] [varchar](50) NOT NULL,
	[gradestuname] [varchar](50) NOT NULL,
	[gradecourse] [varchar](50) NOT NULL,
	[gradenumber] [varchar](50) NOT NULL,
	[gradeothers] [varchar](50) NULL,
 CONSTRAINT [PK_gradeinfo] PRIMARY KEY CLUSTERED 
(
	[gradeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stuinfo]    Script Date: 2022/5/12 14:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stuinfo](
	[stuid] [varchar](50) NOT NULL,
	[stuname] [varchar](50) NOT NULL,
	[stugender] [varchar](50) NOT NULL,
	[stuclass] [varchar](50) NOT NULL,
	[stutelephone] [varchar](50) NOT NULL,
	[stuemail] [varchar](50) NOT NULL,
	[stuQQ] [varchar](50) NOT NULL,
 CONSTRAINT [PK_stuinfo] PRIMARY KEY CLUSTERED 
(
	[stuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([admin_user], [admin_password]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1001', N'计科1811', N'软件工程', N'50')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1002', N'计科1802', N'信息管理与信息系统', N'35')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1003', N'计科1803', N'信息管理与信息系统', N'35')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1004', N'软工1801', N'工商管理', N'38')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1005', N'软工1802', N'工商管理', N'36')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1006', N'软工1801', N'财务管理', N'35')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'1007', N'软工1802', N'财务管理', N'37')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'2345', N'网络2345', N'计算机', N'53')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'3232', N'软工5021', N'软件工程', N'56')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'3568', N'软工7895', N'软件测试', N'98')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'4532', N'前端4562', N'软件工程', N'89')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'5021', N'计科5021', N'计算机科学与技术', N'60')
INSERT [dbo].[classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (N'5365', N'后端7894', N'软件工程', N'78')
GO
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'1001', N'张山', N'数据库原理', N'77', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'1002', N'李四', N'高等数学', N'88', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'1003', N'李四', N'操作系统', N'78', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'1235', N'李四', N'软件工程', N'59', N'考试作弊')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'1358', N'李健康', N'java', N'89', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'2342', N'张祥', N'摄影', N'89', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'2348', N'李思', N'计算机网络', N'45', N'未交作业')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'5642', N'张明', N'汉语言文学', N'45', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'5789', N'詹三', N'计算机应用', N'78', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'6593', N'李思', N'软件工程', N'89', N'无')
INSERT [dbo].[gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (N'7863', N'李斯', N'计算机基础', N'85', N'无')
GO
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'019878662632', N'jerry', N'男', N'计科', N'46589685896', N'sdfrsferw@qfd.jp', N'435436547')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'021321554523', N'tom', N'男', N'计科', N'15632696286', N'494949@Ee.cn', N'546654889')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'0213215554321', N'ss', N'男', N'计科5321', N'13433326559', N'shus@live.com', N'13433326559')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'021321555501', N'张三', N'女', N'计科1801', N'15671221316', N'15671221316@qq.com', N'1515953003')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'021321555502', N'王五', N'男', N'信管1802', N'15572949538', N'15671221316@163.com', N'871648889')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'021321555503', N'李四', N'女', N'软件工程521', N'15356269463', N'24536@qq.com', N'82545')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'021321555508', N'李思', N'男', N'软件', N'15569845686', N'553855@qqq.com', N'456456')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'145789263556', N'mike', N'女', N'软工', N'46846846563', N'fdsfs@fe.com', N'4556468')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'1812315555177', N'Jack3', N'男', N'计科6321', N'13456889888', N'fwwwan@ww.com', N'3544334')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'266388269866', N'tom1', N'男', N'计科', N'45698824866', N'fdsfds@qdfe.nrt', N'55686658')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'324546546544', N'hayy', N'男', N'软工', N'46874684686', N'41564@er.com', N'465846')
INSERT [dbo].[stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (N'345354657686', N'smith', N'男', N'计科', N'46886453456', N'fsdfg@fgr.com', N'565656569')
GO
USE [master]
GO
ALTER DATABASE [StuMangement] SET  READ_WRITE 
GO
