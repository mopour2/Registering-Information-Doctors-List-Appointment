USE [master]
GO
/****** Object:  Database [db]    Script Date: 05/09/2015 11:33:30 ******/
CREATE DATABASE [db] ON  PRIMARY 
( NAME = N'db_Data', FILENAME = N'D:\work\vvoice\SYSDB\DbVoice2008\db_Data.MDF' , SIZE = 8128KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'db_Log', FILENAME = N'D:\work\vvoice\SYSDB\DbVoice2008\db_Log.LDF' , SIZE = 6912KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [db] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db] SET ARITHABORT OFF
GO
ALTER DATABASE [db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db] SET AUTO_SHRINK ON
GO
ALTER DATABASE [db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db] SET  DISABLE_BROKER
GO
ALTER DATABASE [db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db] SET  READ_WRITE
GO
ALTER DATABASE [db] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db] SET  MULTI_USER
GO
ALTER DATABASE [db] SET PAGE_VERIFY NONE
GO
ALTER DATABASE [db] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'db', N'ON'
GO
USE [db]
GO
/****** Object:  User [ST1\a]    Script Date: 05/09/2015 11:33:30 ******/
CREATE USER [ST1\a] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sa2]    Script Date: 05/09/2015 11:33:30 ******/
CREATE USER [sa2] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  FullTextCatalog [aa]    Script Date: 05/09/2015 11:33:30 ******/
CREATE FULLTEXT CATALOG [aa]WITH ACCENT_SENSITIVITY = OFF
AUTHORIZATION [dbo]
GO
/****** Object:  FullTextCatalog [a]    Script Date: 05/09/2015 11:33:30 ******/
CREATE FULLTEXT CATALOG [a]WITH ACCENT_SENSITIVITY = OFF
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[Mosh]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mosh](
	[NoMosh] [varchar](10) NOT NULL,
	[NameMosh] [varchar](50) NULL,
	[Nokhat] [varchar](20) NULL,
	[Tel1] [varchar](20) NULL,
	[Tel2] [varchar](20) NULL,
	[Adress] [varchar](100) NULL,
	[Pishe] [varchar](50) NULL,
	[FNAME] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
 CONSTRAINT [PK_Mosh] PRIMARY KEY CLUSTERED 
(
	[NoMosh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messrow]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Messrow](
	[Type_Erja] [varchar](1) NULL,
	[FileMess] [varchar](8) NULL,
	[SizFileMess] [varchar](14) NULL,
	[RamzMes] [varchar](3) NULL,
	[DateN_S_A_d] [varchar](10) NULL,
	[TimeN_S_A_d] [varchar](10) NULL,
	[New_Send_NoBox] [varchar](20) NULL,
	[GetNoBox] [varchar](20) NULL,
	[CodMozoe] [varchar](5) NULL,
	[Calltel] [varchar](20) NULL,
	[CodMosh] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [no_mess] ON [dbo].[Messrow] 
(
	[FileMess] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messbox]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Messbox](
	[Id] [int] NOT NULL,
	[NoMess] [int] NOT NULL,
	[NoBox] [varchar](20) NOT NULL,
	[Ramz] [int] NULL,
	[NoboxSend] [varchar](20) NULL,
	[TypeVisibel] [varchar](1) NULL,
	[TypeFile] [varchar](1) NULL,
	[TypeSend] [varchar](1) NULL,
	[TIMEREC] [varchar](10) NOT NULL,
	[DATEREC] [varchar](10) NOT NULL,
	[DateTimeRec] [float] NULL,
	[NoAnsMess] [int] NULL,
	[DateTimeRecAns] [float] NULL,
	[checkFildeAns] [varchar](1) NULL,
	[CodMozoe] [varchar](5) NULL,
	[Calltel] [varchar](20) NULL,
	[CodMosh] [varchar](20) NULL,
	[CountRingGetAns] [int] NULL,
	[EndDateRing] [varchar](12) NULL,
 CONSTRAINT [PK_Messbox] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [nomes] ON [dbo].[Messbox] 
(
	[NoMess] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [nomes2] ON [dbo].[Messbox] 
(
	[NoBox] ASC,
	[NoMess] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [nomes3] ON [dbo].[Messbox] 
(
	[DATEREC] ASC,
	[TIMEREC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logfile]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logfile](
	[Line] [varchar](3) NULL,
	[LastState] [int] NULL,
	[State] [int] NULL,
	[LogStr] [varchar](200) NULL,
	[V_Line] [varchar](10) NULL,
	[Date1] [varchar](10) NULL,
	[Time1] [varchar](12) NULL,
	[TypeLog] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[List_Ela]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[List_Ela](
	[Cod] [numeric](18, 0) NOT NULL,
	[MainCod] [numeric](18, 0) NULL,
	[TelNo] [varchar](20) NULL,
	[MesNumber] [varchar](20) NULL,
	[FlagDay] [varchar](1) NULL,
	[DateCreatRecord] [varchar](10) NULL,
	[DateStart] [varchar](10) NULL,
	[DateEnd] [varchar](10) NULL,
	[HourCall] [int] NULL,
	[MinCall] [int] NULL,
	[CodCompany] [int] NULL,
	[firstName] [varchar](20) NULL,
	[Lastname] [varchar](20) NULL,
	[Category] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[Grop] [varchar](10) NULL,
	[ModElamPrice] [varchar](1) NULL,
	[Price] [varchar](15) NULL,
	[FLock] [varchar](1) NULL,
	[Year1] [int] NULL,
	[Mont1] [int] NULL,
	[Day1] [int] NULL,
	[Hour1] [int] NULL,
	[Min1] [int] NULL,
	[FOk] [varchar](1) NULL,
	[CAns] [int] NULL,
	[CNoAns] [int] NULL,
	[CBusy] [int] NULL,
	[CPCMElse] [int] NULL,
	[CAnsNotKey] [int] NULL,
	[FErr] [varchar](1) NULL,
	[DateFileElam] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[List_CallBack]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[List_CallBack](
	[Cod] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CityTelNo] [varchar](20) NULL,
	[LocalTelNo] [varchar](20) NULL,
	[FlagDay] [varchar](1) NULL,
	[DateCreatRecord] [varchar](10) NULL,
	[TimeCreatRecord] [int] NULL,
	[TimeCreatRecordStr] [varchar](15) NULL,
	[DateStart] [varchar](10) NULL,
	[DateEnd] [varchar](10) NULL,
	[HourCall] [int] NULL,
	[MinCall] [int] NULL,
	[Grop] [varchar](10) NULL,
	[FLock] [varchar](20) NULL,
	[Year1] [int] NULL,
	[Mont1] [int] NULL,
	[Day1] [int] NULL,
	[Hour1] [int] NULL,
	[Min1] [int] NULL,
	[FOk] [varchar](20) NULL,
	[CAns] [int] NULL,
	[CNoAns] [int] NULL,
	[CBusy] [int] NULL,
	[CPCMElse] [int] NOT NULL,
	[CAnsNotKey] [int] NULL,
	[FErr] [varchar](1) NULL,
	[User1] [varchar](20) NULL,
 CONSTRAINT [PK_List_CallBack] PRIMARY KEY CLUSTERED 
(
	[Cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Line_St]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Line_St](
	[Line] [int] NOT NULL,
	[V_State] [int] NULL,
	[State_Mashin] [int] NULL,
	[No_Tree] [int] NULL,
 CONSTRAINT [PK_Line_St] PRIMARY KEY CLUSTERED 
(
	[Line] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoon]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khoon](
	[CodKhoon] [varchar](6) NULL,
	[Date1] [varchar](10) NULL,
	[Date2] [varchar](10) NULL,
	[Goroh] [varchar](5) NULL,
	[Vazeyat] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khat]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khat](
	[Nokhat] [varchar](20) NOT NULL,
	[NoBox] [varchar](20) NULL,
 CONSTRAINT [PK_khat] PRIMARY KEY CLUSTERED 
(
	[Nokhat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFORM4]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFORM4](
	[Serial] [float] NOT NULL,
	[RootSerial] [int] NULL,
	[FatherSerial] [int] NULL,
	[ChildNo] [int] NULL,
	[TypeNod] [varchar](1) NULL,
	[CountChild] [int] NULL,
	[FlagPlay] [varchar](1) NULL,
	[FlagDate] [varchar](1) NULL,
	[DatestDay] [float] NULL,
	[DatestMonth] [float] NULL,
	[DatestYear] [float] NULL,
	[DateEnDay] [float] NULL,
	[DateEnMonth] [float] NULL,
	[DateEnYear] [float] NULL,
	[LinkState1] [int] NULL,
	[MessagDes] [varchar](200) NULL,
	[MessagFile] [varchar](10) NULL,
	[Ch1] [int] NULL,
	[Ch2] [int] NULL,
	[Ch3] [int] NULL,
	[Ch4] [int] NULL,
	[Ch5] [int] NULL,
	[Ch6] [int] NULL,
	[Ch7] [int] NULL,
	[Ch8] [int] NULL,
	[Ch9] [int] NULL,
	[ch10] [int] NULL,
	[ch11] [int] NULL,
	[ch12] [int] NULL,
	[ch13] [int] NULL,
	[ch14] [int] NULL,
	[ch15] [int] NULL,
	[ch16] [int] NULL,
	[ch17] [int] NULL,
	[ch18] [int] NULL,
	[ch19] [int] NULL,
	[ch20] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFORM3]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFORM3](
	[Serial] [float] NOT NULL,
	[RootSerial] [int] NULL,
	[FatherSerial] [int] NULL,
	[ChildNo] [int] NULL,
	[TypeNod] [varchar](1) NULL,
	[CountChild] [int] NULL,
	[FlagPlay] [varchar](1) NULL,
	[FlagDate] [varchar](1) NULL,
	[DatestDay] [float] NULL,
	[DatestMonth] [float] NULL,
	[DatestYear] [float] NULL,
	[DateEnDay] [float] NULL,
	[DateEnMonth] [float] NULL,
	[DateEnYear] [float] NULL,
	[LinkState1] [int] NULL,
	[MessagDes] [varchar](200) NULL,
	[MessagFile] [varchar](10) NULL,
	[Ch1] [int] NULL,
	[Ch2] [int] NULL,
	[Ch3] [int] NULL,
	[Ch4] [int] NULL,
	[Ch5] [int] NULL,
	[Ch6] [int] NULL,
	[Ch7] [int] NULL,
	[Ch8] [int] NULL,
	[Ch9] [int] NULL,
	[ch10] [int] NULL,
	[ch11] [int] NULL,
	[ch12] [int] NULL,
	[ch13] [int] NULL,
	[ch14] [int] NULL,
	[ch15] [int] NULL,
	[ch16] [int] NULL,
	[ch17] [int] NULL,
	[ch18] [int] NULL,
	[ch19] [int] NULL,
	[ch20] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFORM2]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFORM2](
	[Serial] [float] NOT NULL,
	[RootSerial] [int] NULL,
	[FatherSerial] [int] NULL,
	[ChildNo] [int] NULL,
	[TypeNod] [varchar](1) NULL,
	[CountChild] [int] NULL,
	[FlagPlay] [varchar](1) NULL,
	[FlagDate] [varchar](1) NULL,
	[DatestDay] [float] NULL,
	[DatestMonth] [float] NULL,
	[DatestYear] [float] NULL,
	[DateEnDay] [float] NULL,
	[DateEnMonth] [float] NULL,
	[DateEnYear] [float] NULL,
	[LinkState1] [int] NULL,
	[MessagDes] [varchar](200) NULL,
	[MessagFile] [varchar](10) NULL,
	[Ch1] [int] NULL,
	[Ch2] [int] NULL,
	[Ch3] [int] NULL,
	[Ch4] [int] NULL,
	[Ch5] [int] NULL,
	[Ch6] [int] NULL,
	[Ch7] [int] NULL,
	[Ch8] [int] NULL,
	[Ch9] [int] NULL,
	[ch10] [int] NULL,
	[ch11] [int] NULL,
	[ch12] [int] NULL,
	[ch13] [int] NULL,
	[ch14] [int] NULL,
	[ch15] [int] NULL,
	[ch16] [int] NULL,
	[ch17] [int] NULL,
	[ch18] [int] NULL,
	[ch19] [int] NULL,
	[ch20] [int] NULL,
 CONSTRAINT [PK_INFORM2] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFORM]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INFORM](
	[Serial] [float] NOT NULL,
	[RootSerial] [int] NULL,
	[FatherSerial] [int] NULL,
	[ChildNo] [int] NULL,
	[TypeNod] [varchar](1) NULL,
	[CountChild] [int] NULL,
	[FlagPlay] [varchar](1) NULL,
	[FlagDate] [varchar](1) NULL,
	[DatestDay] [float] NULL,
	[DatestMonth] [float] NULL,
	[DatestYear] [float] NULL,
	[DateEnDay] [float] NULL,
	[DateEnMonth] [float] NULL,
	[DateEnYear] [float] NULL,
	[LinkState1] [int] NULL,
	[MessagDes] [varchar](200) NULL,
	[MessagFile] [varchar](10) NULL,
	[Ch1] [int] NULL,
	[Ch2] [int] NULL,
	[Ch3] [int] NULL,
	[Ch4] [int] NULL,
	[Ch5] [int] NULL,
	[Ch6] [int] NULL,
	[Ch7] [int] NULL,
	[Ch8] [int] NULL,
	[Ch9] [int] NULL,
	[ch10] [int] NULL,
	[ch11] [int] NULL,
	[ch12] [int] NULL,
	[ch13] [int] NULL,
	[ch14] [int] NULL,
	[ch15] [int] NULL,
	[ch16] [int] NULL,
	[ch17] [int] NULL,
	[ch18] [int] NULL,
	[ch19] [int] NULL,
	[ch20] [int] NULL,
 CONSTRAINT [PK_INFORM] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InfoBox]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InfoBox](
	[NoBox] [varchar](20) NOT NULL,
	[Ramz] [varchar](20) NULL,
	[LastNAme] [varchar](35) NULL,
	[FirstName] [varchar](35) NULL,
	[Flag_act_Tel] [int] NULL,
	[Flag_Rec_Only] [int] NULL,
	[FlagRecBipMes] [int] NULL,
	[FlagPlayNoMes] [int] NULL,
	[NoBoxGaneshin] [varchar](20) NULL,
	[FlagMenu] [varchar](20) NULL,
	[Tel1] [varchar](20) NULL,
	[Tel2] [varchar](20) NULL,
	[Adress] [varchar](100) NULL,
	[ModBoxForMenuAns] [varchar](1) NULL,
 CONSTRAINT [PK_InfoBox] PRIMARY KEY CLUSTERED 
(
	[NoBox] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hold]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hold](
	[Id] [int] NOT NULL,
	[NoOp] [int] NULL,
	[FalgActiv] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupBox]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupBox](
	[NoGroup] [varchar](10) NOT NULL,
	[NoBox] [varchar](20) NOT NULL,
 CONSTRAINT [PK_GroupBox] PRIMARY KEY CLUSTERED 
(
	[NoGroup] ASC,
	[NoBox] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GROUP]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GROUP](
	[NoGroup] [varchar](50) NOT NULL,
	[NameGroup] [varchar](50) NULL,
 CONSTRAINT [PK_GROUP] PRIMARY KEY CLUSTERED 
(
	[NoGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dabir]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dabir](
	[No_vared] [varchar](10) NOT NULL,
	[Cod_erja] [varchar](10) NULL,
	[Y_erja] [varchar](10) NULL,
	[M_erja] [varchar](10) NULL,
	[D_erja] [varchar](10) NULL,
	[No_sader] [varchar](10) NULL,
	[Y_sader] [varchar](10) NULL,
	[M_sader] [varchar](10) NULL,
	[D_sader] [varchar](10) NULL,
	[Cod_sader] [varchar](10) NULL,
 CONSTRAINT [PK_Dabir] PRIMARY KEY CLUSTERED 
(
	[No_vared] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contvoic]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contvoic](
	[Id] [int] NULL,
	[CountVoice] [int] NULL,
	[EndDateY] [int] NULL,
	[EndDateM] [int] NULL,
	[EndDateD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chanel]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chanel](
	[Chanel] [varchar](10) NULL,
	[PortAddres] [int] NULL,
	[Bit] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookTel]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookTel](
	[CodCallBack] [varchar](20) NULL,
	[User1] [varchar](20) NULL,
	[TelCity] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[Lname] [varchar](20) NULL,
	[FName] [varchar](20) NULL,
	[Adress] [varchar](20) NULL,
	[Desc1] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BILL49]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BILL49](
	[FISH_NO] [float] NULL,
	[TEL_NO] [varchar](9) NULL,
	[TELNO] [varchar](7) NOT NULL,
	[TELCD] [varchar](1) NULL,
	[MOVAZE] [float] NULL,
	[RADIF] [float] NULL,
	[NAME] [varchar](60) NULL,
	[ADDRESS] [varchar](150) NULL,
	[MOHLAT] [varchar](8) NULL,
	[AZTAR] [varchar](8) NULL,
	[TATAR] [varchar](8) NULL,
	[TARPOST] [varchar](8) NULL,
	[DORE] [varchar](9) NULL,
	[KAR_MAB] [float] NULL,
	[OVMIX] [float] NULL,
	[OVMIXTAX] [float] NULL,
	[ABONMAN] [float] NULL,
	[CITYG_MAB] [float] NULL,
	[LAST_BILL] [float] NULL,
	[BAR_CODE] [varchar](25) NULL,
	[BEDBES] [float] NULL,
	[BEDBESD] [varchar](15) NULL,
	[KSR] [float] NULL,
	[NEW_KONTOR] [float] NULL,
	[KONTOR] [float] NULL,
	[KAR] [float] NULL,
	[HAZ_MAB] [float] NULL,
	[JK] [varchar](50) NULL,
	[FFGH] [varchar](1) NULL,
	[SHA1] [float] NULL,
	[MAL5] [float] NULL,
	[MALAVA] [float] NULL,
	[MABPAY] [float] NULL,
	[PAYAM1] [varchar](100) NULL,
	[VIGH] [float] NULL,
	[PAYAM2] [varchar](100) NULL,
	[POST] [varchar](10) NULL,
	[TAVON] [float] NULL,
	[KONT0210] [float] NULL,
	[BED82] [float] NULL,
	[NOE] [varchar](2) NULL,
	[H1] [varchar](2) NULL,
	[H2] [varchar](2) NULL,
	[H3] [varchar](2) NULL,
	[H4] [varchar](2) NULL,
	[H5] [varchar](2) NULL,
	[H6] [varchar](2) NULL,
	[H7] [varchar](2) NULL,
	[H8] [varchar](2) NULL,
	[H9] [varchar](2) NULL,
	[H10] [varchar](2) NULL,
	[SHAHR] [varchar](20) NULL,
	[POS] [varchar](20) NULL,
	[KAF] [varchar](20) NULL,
	[IN_] [varchar](20) NULL,
	[IN_MAB] [varchar](20) NULL,
	[SGABZ] [varchar](20) NULL,
	[SPAR] [varchar](20) NULL,
	[GEST] [varchar](20) NULL,
	[GEST_MAB] [varchar](20) NULL,
 CONSTRAINT [PK_BILL49] PRIMARY KEY CLUSTERED 
(
	[TELNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bill_mali]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_mali](
	[tel_no] [int] NOT NULL,
	[tel_no_chk] [int] NULL,
	[act] [tinyint] NULL,
	[fname] [nvarchar](15) NULL,
	[lname] [nvarchar](20) NULL,
	[address] [nvarchar](55) NULL,
	[codpost] [nvarchar](10) NULL,
	[noe] [tinyint] NULL,
	[vaziat] [tinyint] NULL,
	[start_doreh] [nvarchar](8) NULL,
	[amal] [tinyint] NULL,
	[radif_tozi] [nvarchar](50) NULL,
	[movaze_code] [int] NULL,
	[last_kontor] [int] NULL,
	[kont0210] [int] NULL,
	[new_kontor] [int] NULL,
	[karkerd] [int] NULL,
	[mab_karkerd] [int] NULL,
	[mab_city] [int] NULL,
	[tavon] [int] NULL,
	[mab_over1] [int] NULL,
	[mab_over2] [int] NULL,
	[maliat] [int] NULL,
	[abonman] [int] NULL,
	[ejareh] [int] NULL,
	[avarez] [int] NULL,
	[mab_hazineh] [int] NULL,
	[bedehkar] [int] NULL,
	[bestankar] [int] NULL,
	[last_bill] [bigint] NULL,
	[MAL5] [int] NULL,
	[SHA1] [int] NULL,
	[vigh] [int] NULL,
	[in_mab] [int] NULL,
	[mab_pay] [bigint] NULL,
	[frst_mab_pay] [bigint] NULL,
	[bed] [bigint] NULL,
	[bes] [bigint] NULL,
	[CodeMarkaz] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bil_Sql]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bil_Sql](
	[Tel_No] [varchar](20) NOT NULL,
	[Mab_Pardakht] [varchar](50) NULL,
	[Bedehi_Gabl] [varchar](50) NULL,
	[CheckDig] [varchar](10) NULL,
	[Radif] [varchar](10) NULL,
	[movaze_Cod] [varchar](20) NULL,
	[Cod_post] [varchar](50) NULL,
	[Doreh] [varchar](50) NULL,
	[NOE] [varchar](2) NULL,
 CONSTRAINT [PK_Bil_Sql] PRIMARY KEY CLUSTERED 
(
	[Tel_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bakhsh]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bakhsh](
	[Id] [int] NOT NULL,
	[CodDavayer] [varchar](20) NULL,
	[NoFile] [int] NULL,
	[NoBakhsh] [varchar](20) NULL,
	[Year] [varchar](4) NULL,
	[Mont] [varchar](2) NULL,
	[Day] [varchar](2) NULL,
	[Date] [varchar](10) NULL,
 CONSTRAINT [PK_Bakhsh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Azmon]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Azmon](
	[CodSt] [varchar](20) NOT NULL,
	[CodDOre] [varchar](15) NOT NULL,
	[FlagActRecDore] [varchar](1) NULL,
	[Ramz] [varchar](20) NULL,
	[FName] [varchar](20) NULL,
	[LName] [varchar](20) NULL,
	[FatherName] [varchar](20) NULL,
	[NoBr] [varchar](20) NULL,
	[NomreD1] [real] NULL,
	[NomreD2] [real] NULL,
	[NomreD3] [real] NULL,
	[NomreD4] [real] NULL,
	[Resalt] [varchar](10) NULL,
	[Code_Gaboli] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Azmayesh]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Azmayesh](
	[Cod] [varchar](9) NULL,
	[Date1] [varchar](10) NULL,
	[Date2] [varchar](10) NULL,
	[Vazeyat] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Arsh_List_Ela]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Arsh_List_Ela](
	[Cod] [numeric](18, 0) NOT NULL,
	[MainCod] [numeric](18, 0) NULL,
	[TelNo] [varchar](20) NULL,
	[MesNumber] [varchar](20) NULL,
	[FlagDay] [varchar](1) NULL,
	[DateCreatRecord] [varchar](10) NULL,
	[DateStart] [varchar](10) NULL,
	[DateEnd] [varchar](10) NULL,
	[HourCall] [int] NULL,
	[MinCall] [int] NULL,
	[CodCompany] [int] NULL,
	[firstName] [varchar](20) NULL,
	[Lastname] [varchar](20) NULL,
	[Category] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[Grop] [varchar](10) NULL,
	[ModElamPrice] [varchar](1) NULL,
	[Price] [varchar](15) NULL,
	[FLock] [varchar](1) NULL,
	[Year1] [int] NULL,
	[Mont1] [int] NULL,
	[Day1] [int] NULL,
	[Hour1] [int] NULL,
	[Min1] [int] NULL,
	[FOk] [varchar](1) NULL,
	[CAns] [int] NULL,
	[CNoAns] [int] NULL,
	[CBusy] [int] NULL,
	[CPCMElse] [int] NULL,
	[CAnsNotKey] [int] NULL,
	[FErr] [varchar](1) NULL,
	[DateFileElam] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AmarMenu]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AmarMenu](
	[FlagAmar] [numeric](18, 0) NOT NULL,
	[Key_filename] [varchar](20) NOT NULL,
	[SAz] [varchar](20) NOT NULL,
	[date1] [varchar](12) NULL,
	[time1] [varchar](12) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AmarDesc]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AmarDesc](
	[flagAmar] [numeric](18, 0) NULL,
	[Key_filename] [varchar](20) NULL,
	[Saz] [varchar](20) NULL,
	[Desc1] [varchar](50) NULL,
 CONSTRAINT [IX_AmarDesc] UNIQUE NONCLUSTERED 
(
	[flagAmar] ASC,
	[Key_filename] ASC,
	[Saz] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Amar]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Amar](
	[DescAmar] [varchar](50) NULL,
	[Faravani] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZSetingTimeWork]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZSetingTimeWork](
	[Roz] [varchar](1) NULL,
	[DescRoz] [varchar](20) NULL,
	[t1h] [int] NULL,
	[t1m] [int] NULL,
	[t2h] [int] NULL,
	[t2m] [int] NULL,
	[t3h] [int] NULL,
	[t3m] [int] NULL,
	[t4h] [int] NULL,
	[t4m] [int] NULL,
	[FlagTatil] [varchar](1) NULL,
	[FlagActiveTime1_2] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZSetingPath]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZSetingPath](
	[CustomerName] [nvarchar](20) NULL,
	[SerialNo] [nvarchar](50) NULL,
	[DriveInstall] [nvarchar](200) NULL,
	[DriveTree] [nvarchar](200) NULL,
	[DriveSySDb] [nvarchar](200) NULL,
	[DriveMess] [nvarchar](200) NULL,
	[DriveAns] [nvarchar](200) NULL,
	[DriveDabir] [nvarchar](200) NULL,
	[DriveDabirLoad] [nvarchar](200) NULL,
	[DriveMoshName] [nvarchar](200) NULL,
	[Sazeman] [nvarchar](200) NULL,
	[Vsys_State] [nvarchar](2) NULL,
	[SysIdd] [nvarchar](1) NULL,
	[ElamGetKey] [nvarchar](1) NULL,
	[FlagDabir] [nvarchar](1) NULL,
	[SondPesar] [nvarchar](1) NULL,
	[GetDig_Pulse_Tone] [nvarchar](1) NULL,
	[MainMenuRep] [nvarchar](1) NULL,
	[TimeOutDig] [int] NULL,
	[DeletCopy] [nvarchar](1) NULL,
	[DialPulseTone] [nvarchar](1) NULL,
	[OpMod_state] [nvarchar](1) NULL,
	[DialAfterModSt] [nvarchar](1) NULL,
	[CountBus] [int] NULL,
	[NotAnsOpRec] [int] NULL,
	[OpOnly_serial] [nvarchar](1) NULL,
	[FlashMod] [nvarchar](1) NULL,
	[AnsDelay] [int] NULL,
	[OpNumber] [nvarchar](20) NULL,
	[PAsSup] [nvarchar](20) NULL,
	[Timerecuser] [int] NULL,
	[Timerecsup] [int] NULL,
	[FlagSend8000] [int] NULL,
	[CheckAns] [nvarchar](1) NULL,
	[K1] [nvarchar](20) NULL,
	[K2] [nvarchar](20) NULL,
	[K3] [nvarchar](20) NULL,
	[K4] [nvarchar](20) NULL,
	[K5] [nvarchar](20) NULL,
	[K6] [nvarchar](20) NULL,
	[K7] [nvarchar](20) NULL,
	[K8] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZSetingNobat]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZSetingNobat](
	[TypeNobatDayWeek] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZSetingAyam]    Script Date: 05/09/2015 11:33:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZSetingAyam](
	[DateAyam] [varchar](10) NULL,
	[DescAyam] [varchar](50) NULL,
	[VoiceAyam] [varchar](20) NULL,
	[FlagTatilAyam] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User1]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User1](
	[User1] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Level1] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TWeekBarnameBox]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TWeekBarnameBox](
	[CodTakhasos] [int] NOT NULL,
	[CodPezeshk] [int] NOT NULL,
	[TedarVizit] [int] NOT NULL,
	[TimeVizitBimar] [int] NOT NULL,
	[R_1] [bit] NULL,
	[R_2] [bit] NULL,
	[R_3] [bit] NULL,
	[R_4] [bit] NULL,
	[R_5] [bit] NULL,
	[R_6] [bit] NULL,
	[R_7] [bit] NULL,
	[R_8] [bit] NULL,
	[R_9] [bit] NULL,
	[R_10] [bit] NULL,
	[R_11] [bit] NULL,
	[R_12] [bit] NULL,
	[R_13] [bit] NULL,
	[R_14] [bit] NULL,
	[R_15] [bit] NULL,
	[R_16] [bit] NULL,
	[R_17] [bit] NULL,
	[R_18] [bit] NULL,
	[R_19] [bit] NULL,
	[R_20] [bit] NULL,
	[R_21] [bit] NULL,
	[R_22] [bit] NULL,
	[R_23] [bit] NULL,
	[R_24] [bit] NULL,
	[R_25] [bit] NULL,
	[R_26] [bit] NULL,
	[R_27] [bit] NULL,
	[R_28] [bit] NULL,
	[R_29] [bit] NULL,
	[R_30] [bit] NULL,
	[R_31] [bit] NULL,
	[R_32] [bit] NULL,
	[R_33] [bit] NULL,
	[R_34] [bit] NULL,
	[R_35] [bit] NULL,
	[R_36] [bit] NULL,
	[R_37] [bit] NULL,
	[R_38] [bit] NULL,
	[R_39] [bit] NULL,
	[R_40] [bit] NULL,
	[R_41] [bit] NULL,
	[R_42] [bit] NULL,
	[R_43] [bit] NULL,
	[R_44] [bit] NULL,
	[R_45] [bit] NULL,
	[R_46] [bit] NULL,
	[R_47] [bit] NULL,
	[R_48] [bit] NULL,
	[R_49] [bit] NULL,
	[R_50] [bit] NULL,
	[R_51] [bit] NULL,
	[R_52] [bit] NULL,
	[R_53] [bit] NULL,
	[R_54] [bit] NULL,
	[R_55] [bit] NULL,
	[R_56] [bit] NULL,
	[R_57] [bit] NULL,
	[R_58] [bit] NULL,
	[R_59] [bit] NULL,
	[R_60] [bit] NULL,
	[R_61] [bit] NULL,
	[R_62] [bit] NULL,
	[R_63] [bit] NULL,
	[R_64] [bit] NULL,
	[R_65] [bit] NULL,
	[R_66] [bit] NULL,
	[R_67] [bit] NULL,
	[R_68] [bit] NULL,
	[R_69] [bit] NULL,
	[R_70] [bit] NULL,
	[R_71] [bit] NULL,
	[R_72] [bit] NULL,
	[R_73] [bit] NULL,
	[R_74] [bit] NULL,
	[R_75] [bit] NULL,
	[R_76] [bit] NULL,
	[R_77] [bit] NULL,
	[R_78] [bit] NULL,
	[R_79] [bit] NULL,
	[R_80] [bit] NULL,
	[R_81] [bit] NULL,
	[R_82] [bit] NULL,
	[R_83] [bit] NULL,
	[R_84] [bit] NULL,
	[R_85] [bit] NULL,
	[R_86] [bit] NULL,
	[R_87] [bit] NULL,
	[R_88] [bit] NULL,
	[R_89] [bit] NULL,
	[R_90] [bit] NULL,
	[R_91] [bit] NULL,
	[R_92] [bit] NULL,
	[R_93] [bit] NULL,
	[R_94] [bit] NULL,
	[R_95] [bit] NULL,
	[R_96] [bit] NULL,
	[R_97] [bit] NULL,
	[R_98] [bit] NULL,
	[R_99] [bit] NULL,
	[R_100] [bit] NULL,
	[R_101] [bit] NULL,
	[R_102] [bit] NULL,
	[R_103] [bit] NULL,
	[R_104] [bit] NULL,
	[R_105] [bit] NULL,
	[R_106] [bit] NULL,
	[R_107] [bit] NULL,
	[R_108] [bit] NULL,
	[R_109] [bit] NULL,
	[R_110] [bit] NULL,
	[R_111] [bit] NULL,
	[R_112] [bit] NULL,
	[R_113] [bit] NULL,
	[R_114] [bit] NULL,
	[R_115] [bit] NULL,
	[R_116] [bit] NULL,
	[R_117] [bit] NULL,
	[R_118] [bit] NULL,
	[R_119] [bit] NULL,
	[R_120] [bit] NULL,
	[R_121] [bit] NULL,
	[R_122] [bit] NULL,
	[R_123] [bit] NULL,
	[R_124] [bit] NULL,
	[R_125] [bit] NULL,
	[R_126] [bit] NULL,
	[R_127] [bit] NULL,
	[R_128] [bit] NULL,
	[R_129] [bit] NULL,
	[R_130] [bit] NULL,
	[R_131] [bit] NULL,
	[R_132] [bit] NULL,
	[R_133] [bit] NULL,
	[R_134] [bit] NULL,
	[R_135] [bit] NULL,
	[R_136] [bit] NULL,
	[R_137] [bit] NULL,
	[R_138] [bit] NULL,
	[R_139] [bit] NULL,
	[R_140] [bit] NULL,
	[R_141] [bit] NULL,
	[R_142] [bit] NULL,
	[R_143] [bit] NULL,
	[R_144] [bit] NULL,
	[R_145] [bit] NULL,
	[R_146] [bit] NULL,
	[R_147] [bit] NULL,
	[R_148] [bit] NULL,
	[R_149] [bit] NULL,
	[R_150] [bit] NULL,
	[R_151] [bit] NULL,
	[R_152] [bit] NULL,
	[R_153] [bit] NULL,
	[R_154] [bit] NULL,
	[R_155] [bit] NULL,
	[R_156] [bit] NULL,
	[R_157] [bit] NULL,
	[R_158] [bit] NULL,
	[R_159] [bit] NULL,
	[R_160] [bit] NULL,
	[R_161] [bit] NULL,
	[R_162] [bit] NULL,
	[R_163] [bit] NULL,
	[R_164] [bit] NULL,
	[R_165] [bit] NULL,
	[R_166] [bit] NULL,
	[R_167] [bit] NULL,
	[R_168] [bit] NULL,
	[R_169] [bit] NULL,
	[R_170] [bit] NULL,
	[R_171] [bit] NULL,
	[R_172] [bit] NULL,
	[R_173] [bit] NULL,
	[R_174] [bit] NULL,
	[R_175] [bit] NULL,
	[R_176] [bit] NULL,
	[R_177] [bit] NULL,
	[R_178] [bit] NULL,
	[R_179] [bit] NULL,
	[R_180] [bit] NULL,
	[R_181] [bit] NULL,
	[R_182] [bit] NULL,
 CONSTRAINT [PK_TWeekBarnameBox_1] PRIMARY KEY CLUSTERED 
(
	[CodTakhasos] ASC,
	[CodPezeshk] ASC,
	[TedarVizit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TWeekBarname]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TWeekBarname](
	[CodTakhasos] [int] NOT NULL,
	[CodPezeshk] [int] NOT NULL,
	[Shift] [nvarchar](20) NOT NULL,
	[TimeStartH] [int] NOT NULL,
	[TimeStartM] [int] NOT NULL,
	[TedarVizit] [int] NOT NULL,
	[TimeVizitBimar] [int] NOT NULL,
	[Shanbe] [bit] NULL,
	[YekShanbe] [bit] NULL,
	[DoShanbe] [bit] NULL,
	[SeShanbe] [bit] NULL,
	[ChharShanbe] [bit] NULL,
	[PangShanbe] [bit] NULL,
	[Gomee] [bit] NULL,
 CONSTRAINT [PK_TWeekBarname] PRIMARY KEY CLUSTERED 
(
	[CodTakhasos] ASC,
	[CodPezeshk] ASC,
	[Shift] ASC,
	[TimeStartH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTakhasos]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTakhasos](
	[CodTakhasos] [int] NOT NULL,
	[Takhasos] [nvarchar](50) NULL,
 CONSTRAINT [PK_TTakhasos] PRIMARY KEY CLUSTERED 
(
	[CodTakhasos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSos]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSos](
	[Cod] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nobox] [varchar](20) NULL,
	[Desc1] [varchar](200) NULL,
	[Date1] [varchar](20) NULL,
	[Time1] [varchar](20) NULL,
	[Flagok] [varchar](20) NULL,
	[Date2] [varchar](20) NULL,
	[Time2] [varchar](20) NULL,
	[Desc2] [varchar](300) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tpezeshk]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tpezeshk](
	[CodPezeshk] [int] IDENTITY(1,1) NOT NULL,
	[NamePezeshk] [nvarchar](50) NULL,
	[Mobil] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tpezeshk] PRIMARY KEY CLUSTERED 
(
	[CodPezeshk] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TNazarFile]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TNazarFile](
	[id] [int] NOT NULL,
	[File_Name_Nazar] [varchar](20) NULL,
	[Date_Nazar] [varchar](15) NULL,
	[CountKey] [int] NULL,
 CONSTRAINT [PK_TNazarFile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TNazar]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TNazar](
	[id] [int] NULL,
	[Date_nazar] [varchar](15) NULL,
	[Tel_nazar] [varchar](20) NULL,
	[Key_Pres] [varchar](2) NULL,
	[Date_Key_pres] [varchar](15) NULL,
	[No_File_Nazar] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMovaze]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMovaze](
	[Movaze_cod] [varchar](10) NOT NULL,
	[M_Post] [varchar](4) NULL,
	[COd_PostMan] [varchar](10) NULL,
 CONSTRAINT [PK_TMovaze] PRIMARY KEY CLUSTERED 
(
	[Movaze_cod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMarkaz]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMarkaz](
	[cod_markaz] [varchar](4) NOT NULL,
	[Name_Markaz] [varchar](100) NULL,
 CONSTRAINT [PK_TMarkaz] PRIMARY KEY CLUSTERED 
(
	[cod_markaz] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[telOp]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[telOp](
	[Id] [int] NOT NULL,
	[NoOp] [int] NULL,
	[FalgActiv] [int] NULL,
	[Nait] [varchar](1) NULL,
 CONSTRAINT [PK_telOp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tel_Pass]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tel_Pass](
	[Tel_no] [varchar](20) NOT NULL,
	[Password] [varchar](50) NULL,
	[flagact] [varchar](1) NULL,
	[Noe] [varchar](2) NULL,
 CONSTRAINT [PK_Tel_Pass] PRIMARY KEY CLUSTERED 
(
	[Tel_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDateBarn]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TDateBarn](
	[CodDateBarn] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Date1] [nvarchar](20) NOT NULL,
	[RozNo] [nvarchar](1) NOT NULL,
	[WeekNumber] [int] NOT NULL,
	[CodTakhasos] [int] NOT NULL,
	[CodPezeshk] [int] NOT NULL,
	[RozHafte] [nvarchar](20) NOT NULL,
	[TimeStartH] [int] NOT NULL,
	[TimeStartM] [int] NOT NULL,
	[TimeVizitBimar] [int] NOT NULL,
	[TedadVizizt] [int] NOT NULL,
	[Shift] [nvarchar](20) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[Desc1] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBarnRezerv]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBarnRezerv](
	[CodDateBarn] [numeric](18, 0) NULL,
	[CodMeli] [nvarchar](20) NULL,
	[CodBime] [nvarchar](20) NULL,
	[Shomare] [int] NULL,
	[SaateHozor] [nvarchar](10) NULL,
	[State] [nvarchar](20) NULL,
	[Mobil] [nvarchar](20) NULL,
	[CallerId] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBarname]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBarname](
	[CodTakhasos] [int] NOT NULL,
	[CodPezeshk] [int] NOT NULL,
	[RozHafte] [nvarchar](20) NOT NULL,
	[Shift] [nvarchar](20) NOT NULL,
	[TimeStartH] [int] NOT NULL,
	[TimeStartM] [int] NOT NULL,
	[TedarVizit] [int] NOT NULL,
	[TimeVizitBimar] [int] NOT NULL,
 CONSTRAINT [PK_TBarname] PRIMARY KEY CLUSTERED 
(
	[CodTakhasos] ASC,
	[CodPezeshk] ASC,
	[RozHafte] ASC,
	[Shift] ASC,
	[TimeStartH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAmar_Mokh]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAmar_Mokh](
	[NoTel_Darkh] [varchar](20) NOT NULL,
	[Date1] [varchar](10) NULL,
	[NoTel_Tamas] [varchar](20) NULL,
	[Mablag] [varchar](20) NULL,
	[time1] [varchar](10) NULL,
	[Flag_Send] [varchar](1) NULL,
	[PishShomare] [varchar](3) NULL,
	[M_Post] [varchar](4) NULL,
	[MovazeCod] [varchar](20) NULL,
	[Radif] [varchar](10) NULL,
	[Cod_post] [varchar](50) NULL,
	[Doreh] [varchar](50) NULL,
	[NOE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_TAmar_Mokh] ON [dbo].[TAmar_Mokh] 
(
	[NoTel_Darkh] ASC,
	[Doreh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RING]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RING](
	[RingDate] [varchar](20) NULL,
	[RingTime] [varchar](20) NULL,
	[LineRing] [varchar](2) NULL,
	[TypeRing] [varchar](1) NULL,
	[RingTimeOut] [varchar](20) NULL,
	[tel_no] [varchar](20) NULL,
	[pish] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ring_date] ON [dbo].[RING] 
(
	[RingDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RDate_t]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RDate_t](
	[Year1] [int] NULL,
	[Mont1] [int] NULL,
	[Day1] [int] NULL,
	[Year2] [int] NULL,
	[Mont2] [int] NULL,
	[Day2] [int] NULL,
	[Hour1] [int] NULL,
	[Min1] [int] NULL,
	[Hour2] [int] NULL,
	[Min2] [int] NULL,
	[Hour3] [int] NULL,
	[Min3] [int] NULL,
	[Hour4] [int] NULL,
	[Min4] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pish_shom]    Script Date: 05/09/2015 11:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pish_shom](
	[pish] [varchar](3) NOT NULL,
	[cod_markaz] [varchar](4) NULL,
 CONSTRAINT [PK_Pish_shom] PRIMARY KEY CLUSTERED 
(
	[pish] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Messbox_NoMess]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Messbox] ADD  CONSTRAINT [DF_Messbox_NoMess]  DEFAULT (1) FOR [NoMess]
GO
/****** Object:  Default [DF_Messbox_NoBox]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Messbox] ADD  CONSTRAINT [DF_Messbox_NoBox]  DEFAULT (1) FOR [NoBox]
GO
/****** Object:  Default [DF_Messbox_TIMEREC]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Messbox] ADD  CONSTRAINT [DF_Messbox_TIMEREC]  DEFAULT (1) FOR [TIMEREC]
GO
/****** Object:  Default [DF_Messbox_DATEREC]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Messbox] ADD  CONSTRAINT [DF_Messbox_DATEREC]  DEFAULT (1) FOR [DATEREC]
GO
/****** Object:  Default [DF_Messbox_checkFildeAns]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Messbox] ADD  CONSTRAINT [DF_Messbox_checkFildeAns]  DEFAULT (0) FOR [checkFildeAns]
GO
/****** Object:  Default [DF_Bil_Sql_Mab_Pardakht]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Bil_Sql] ADD  CONSTRAINT [DF_Bil_Sql_Mab_Pardakht]  DEFAULT (0) FOR [Mab_Pardakht]
GO
/****** Object:  Default [DF_Bil_Sql_Bedehi_Gabl]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[Bil_Sql] ADD  CONSTRAINT [DF_Bil_Sql_Bedehi_Gabl]  DEFAULT (0) FOR [Bedehi_Gabl]
GO
/****** Object:  Default [DF_TAyam_FlagTatilAyam]    Script Date: 05/09/2015 11:33:38 ******/
ALTER TABLE [dbo].[ZSetingAyam] ADD  CONSTRAINT [DF_TAyam_FlagTatilAyam]  DEFAULT ((1)) FOR [FlagTatilAyam]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_1]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_1]  DEFAULT ((0)) FOR [R_1]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_2]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_2]  DEFAULT ((0)) FOR [R_2]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_3]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_3]  DEFAULT ((0)) FOR [R_3]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_4]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_4]  DEFAULT ((0)) FOR [R_4]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_5]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_5]  DEFAULT ((0)) FOR [R_5]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_6]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_6]  DEFAULT ((0)) FOR [R_6]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_7]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_7]  DEFAULT ((0)) FOR [R_7]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_8]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_8]  DEFAULT ((0)) FOR [R_8]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_9]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_9]  DEFAULT ((0)) FOR [R_9]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_10]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_10]  DEFAULT ((0)) FOR [R_10]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_11]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_11]  DEFAULT ((0)) FOR [R_11]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_12]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_12]  DEFAULT ((0)) FOR [R_12]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_13]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_13]  DEFAULT ((0)) FOR [R_13]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_14]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_14]  DEFAULT ((0)) FOR [R_14]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_15]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_15]  DEFAULT ((0)) FOR [R_15]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_16]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_16]  DEFAULT ((0)) FOR [R_16]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_17]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_17]  DEFAULT ((0)) FOR [R_17]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_18]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_18]  DEFAULT ((0)) FOR [R_18]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_19]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_19]  DEFAULT ((0)) FOR [R_19]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_20]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_20]  DEFAULT ((0)) FOR [R_20]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_21]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_21]  DEFAULT ((0)) FOR [R_21]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_22]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_22]  DEFAULT ((0)) FOR [R_22]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_23]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_23]  DEFAULT ((0)) FOR [R_23]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_24]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_24]  DEFAULT ((0)) FOR [R_24]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_25]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_25]  DEFAULT ((0)) FOR [R_25]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_26]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_26]  DEFAULT ((0)) FOR [R_26]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_27]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_27]  DEFAULT ((0)) FOR [R_27]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_28]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_28]  DEFAULT ((0)) FOR [R_28]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_29]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_29]  DEFAULT ((0)) FOR [R_29]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_30]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_30]  DEFAULT ((0)) FOR [R_30]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_31]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_31]  DEFAULT ((0)) FOR [R_31]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_32]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_32]  DEFAULT ((0)) FOR [R_32]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_33]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_33]  DEFAULT ((0)) FOR [R_33]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_34]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_34]  DEFAULT ((0)) FOR [R_34]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_35]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_35]  DEFAULT ((0)) FOR [R_35]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_36]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_36]  DEFAULT ((0)) FOR [R_36]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_37]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_37]  DEFAULT ((0)) FOR [R_37]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_38]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_38]  DEFAULT ((0)) FOR [R_38]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_39]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_39]  DEFAULT ((0)) FOR [R_39]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_40]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_40]  DEFAULT ((0)) FOR [R_40]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_41]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_41]  DEFAULT ((0)) FOR [R_41]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_42]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_42]  DEFAULT ((0)) FOR [R_42]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_43]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_43]  DEFAULT ((0)) FOR [R_43]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_44]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_44]  DEFAULT ((0)) FOR [R_44]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_45]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_45]  DEFAULT ((0)) FOR [R_45]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_46]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_46]  DEFAULT ((0)) FOR [R_46]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_47]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_47]  DEFAULT ((0)) FOR [R_47]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_48]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_48]  DEFAULT ((0)) FOR [R_48]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_49]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_49]  DEFAULT ((0)) FOR [R_49]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_50]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_50]  DEFAULT ((0)) FOR [R_50]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_51]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_51]  DEFAULT ((0)) FOR [R_51]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_52]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_52]  DEFAULT ((0)) FOR [R_52]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_53]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_53]  DEFAULT ((0)) FOR [R_53]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_54]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_54]  DEFAULT ((0)) FOR [R_54]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_55]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_55]  DEFAULT ((0)) FOR [R_55]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_56]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_56]  DEFAULT ((0)) FOR [R_56]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_57]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_57]  DEFAULT ((0)) FOR [R_57]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_58]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_58]  DEFAULT ((0)) FOR [R_58]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_59]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_59]  DEFAULT ((0)) FOR [R_59]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_60]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_60]  DEFAULT ((0)) FOR [R_60]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_61]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_61]  DEFAULT ((0)) FOR [R_61]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_62]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_62]  DEFAULT ((0)) FOR [R_62]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_63]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_63]  DEFAULT ((0)) FOR [R_63]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_64]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_64]  DEFAULT ((0)) FOR [R_64]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_65]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_65]  DEFAULT ((0)) FOR [R_65]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_66]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_66]  DEFAULT ((0)) FOR [R_66]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_67]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_67]  DEFAULT ((0)) FOR [R_67]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_68]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_68]  DEFAULT ((0)) FOR [R_68]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_69]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_69]  DEFAULT ((0)) FOR [R_69]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_70]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_70]  DEFAULT ((0)) FOR [R_70]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_71]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_71]  DEFAULT ((0)) FOR [R_71]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_72]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_72]  DEFAULT ((0)) FOR [R_72]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_73]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_73]  DEFAULT ((0)) FOR [R_73]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_74]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_74]  DEFAULT ((0)) FOR [R_74]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_75]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_75]  DEFAULT ((0)) FOR [R_75]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_76]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_76]  DEFAULT ((0)) FOR [R_76]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_77]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_77]  DEFAULT ((0)) FOR [R_77]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_78]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_78]  DEFAULT ((0)) FOR [R_78]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_79]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_79]  DEFAULT ((0)) FOR [R_79]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_80]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_80]  DEFAULT ((0)) FOR [R_80]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_81]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_81]  DEFAULT ((0)) FOR [R_81]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_82]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_82]  DEFAULT ((0)) FOR [R_82]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_83]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_83]  DEFAULT ((0)) FOR [R_83]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_84]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_84]  DEFAULT ((0)) FOR [R_84]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_85]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_85]  DEFAULT ((0)) FOR [R_85]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_86]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_86]  DEFAULT ((0)) FOR [R_86]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_87]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_87]  DEFAULT ((0)) FOR [R_87]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_88]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_88]  DEFAULT ((0)) FOR [R_88]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_89]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_89]  DEFAULT ((0)) FOR [R_89]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_90]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_90]  DEFAULT ((0)) FOR [R_90]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_91]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_91]  DEFAULT ((0)) FOR [R_91]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_92]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_92]  DEFAULT ((0)) FOR [R_92]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_93]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_93]  DEFAULT ((0)) FOR [R_93]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_94]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_94]  DEFAULT ((0)) FOR [R_94]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_95]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_95]  DEFAULT ((0)) FOR [R_95]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_96]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_96]  DEFAULT ((0)) FOR [R_96]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_97]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_97]  DEFAULT ((0)) FOR [R_97]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_98]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_98]  DEFAULT ((0)) FOR [R_98]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_99]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_99]  DEFAULT ((0)) FOR [R_99]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_100]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_100]  DEFAULT ((0)) FOR [R_100]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_101]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_101]  DEFAULT ((0)) FOR [R_101]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_102]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_102]  DEFAULT ((0)) FOR [R_102]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_103]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_103]  DEFAULT ((0)) FOR [R_103]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_104]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_104]  DEFAULT ((0)) FOR [R_104]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_105]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_105]  DEFAULT ((0)) FOR [R_105]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_106]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_106]  DEFAULT ((0)) FOR [R_106]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_107]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_107]  DEFAULT ((0)) FOR [R_107]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_108]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_108]  DEFAULT ((0)) FOR [R_108]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_109]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_109]  DEFAULT ((0)) FOR [R_109]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_110]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_110]  DEFAULT ((0)) FOR [R_110]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_111]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_111]  DEFAULT ((0)) FOR [R_111]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_112]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_112]  DEFAULT ((0)) FOR [R_112]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_113]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_113]  DEFAULT ((0)) FOR [R_113]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_114]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_114]  DEFAULT ((0)) FOR [R_114]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_115]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_115]  DEFAULT ((0)) FOR [R_115]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_116]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_116]  DEFAULT ((0)) FOR [R_116]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_117]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_117]  DEFAULT ((0)) FOR [R_117]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_118]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_118]  DEFAULT ((0)) FOR [R_118]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_119]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_119]  DEFAULT ((0)) FOR [R_119]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_120]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_120]  DEFAULT ((0)) FOR [R_120]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_121]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_121]  DEFAULT ((0)) FOR [R_121]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_122]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_122]  DEFAULT ((0)) FOR [R_122]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_123]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_123]  DEFAULT ((0)) FOR [R_123]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_124]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_124]  DEFAULT ((0)) FOR [R_124]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_125]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_125]  DEFAULT ((0)) FOR [R_125]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_126]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_126]  DEFAULT ((0)) FOR [R_126]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_127]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_127]  DEFAULT ((0)) FOR [R_127]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_128]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_128]  DEFAULT ((0)) FOR [R_128]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_129]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_129]  DEFAULT ((0)) FOR [R_129]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_130]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_130]  DEFAULT ((0)) FOR [R_130]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_131]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_131]  DEFAULT ((0)) FOR [R_131]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_132]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_132]  DEFAULT ((0)) FOR [R_132]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_133]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_133]  DEFAULT ((0)) FOR [R_133]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_134]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_134]  DEFAULT ((0)) FOR [R_134]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_135]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_135]  DEFAULT ((0)) FOR [R_135]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_136]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_136]  DEFAULT ((0)) FOR [R_136]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_137]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_137]  DEFAULT ((0)) FOR [R_137]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_138]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_138]  DEFAULT ((0)) FOR [R_138]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_139]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_139]  DEFAULT ((0)) FOR [R_139]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_140]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_140]  DEFAULT ((0)) FOR [R_140]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_141]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_141]  DEFAULT ((0)) FOR [R_141]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_142]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_142]  DEFAULT ((0)) FOR [R_142]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_143]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_143]  DEFAULT ((0)) FOR [R_143]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_144]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_144]  DEFAULT ((0)) FOR [R_144]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_145]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_145]  DEFAULT ((0)) FOR [R_145]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_146]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_146]  DEFAULT ((0)) FOR [R_146]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_147]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_147]  DEFAULT ((0)) FOR [R_147]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_148]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_148]  DEFAULT ((0)) FOR [R_148]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_149]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_149]  DEFAULT ((0)) FOR [R_149]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_150]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_150]  DEFAULT ((0)) FOR [R_150]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_151]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_151]  DEFAULT ((0)) FOR [R_151]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_152]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_152]  DEFAULT ((0)) FOR [R_152]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_153]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_153]  DEFAULT ((0)) FOR [R_153]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_154]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_154]  DEFAULT ((0)) FOR [R_154]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_155]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_155]  DEFAULT ((0)) FOR [R_155]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_156]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_156]  DEFAULT ((0)) FOR [R_156]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_157]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_157]  DEFAULT ((0)) FOR [R_157]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_158]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_158]  DEFAULT ((0)) FOR [R_158]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_159]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_159]  DEFAULT ((0)) FOR [R_159]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_160]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_160]  DEFAULT ((0)) FOR [R_160]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_161]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_161]  DEFAULT ((0)) FOR [R_161]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_162]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_162]  DEFAULT ((0)) FOR [R_162]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_163]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_163]  DEFAULT ((0)) FOR [R_163]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_164]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_164]  DEFAULT ((0)) FOR [R_164]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_165]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_165]  DEFAULT ((0)) FOR [R_165]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_166]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_166]  DEFAULT ((0)) FOR [R_166]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_167]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_167]  DEFAULT ((0)) FOR [R_167]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_168]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_168]  DEFAULT ((0)) FOR [R_168]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_169]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_169]  DEFAULT ((0)) FOR [R_169]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_170]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_170]  DEFAULT ((0)) FOR [R_170]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_171]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_171]  DEFAULT ((0)) FOR [R_171]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_172]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_172]  DEFAULT ((0)) FOR [R_172]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_173]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_173]  DEFAULT ((0)) FOR [R_173]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_174]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_174]  DEFAULT ((0)) FOR [R_174]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_175]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_175]  DEFAULT ((0)) FOR [R_175]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_176]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_176]  DEFAULT ((0)) FOR [R_176]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_177]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_177]  DEFAULT ((0)) FOR [R_177]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_178]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_178]  DEFAULT ((0)) FOR [R_178]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_179]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_179]  DEFAULT ((0)) FOR [R_179]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_180]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_180]  DEFAULT ((0)) FOR [R_180]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_181]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_181]  DEFAULT ((0)) FOR [R_181]
GO
/****** Object:  Default [DF_TWeekBarnameBox_R_182]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarnameBox] ADD  CONSTRAINT [DF_TWeekBarnameBox_R_182]  DEFAULT ((0)) FOR [R_182]
GO
/****** Object:  Default [DF_TWeekBarname_TimeStartM]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_TimeStartM]  DEFAULT ((0)) FOR [TimeStartM]
GO
/****** Object:  Default [DF_TWeekBarname_TedarVizit]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_TedarVizit]  DEFAULT ((0)) FOR [TedarVizit]
GO
/****** Object:  Default [DF_TWeekBarname_TimeVizitBimar]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_TimeVizitBimar]  DEFAULT ((0)) FOR [TimeVizitBimar]
GO
/****** Object:  Default [DF_TWeekBarname_Shanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_Shanbe]  DEFAULT ((0)) FOR [Shanbe]
GO
/****** Object:  Default [DF_TWeekBarname_YekShanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_YekShanbe]  DEFAULT ((0)) FOR [YekShanbe]
GO
/****** Object:  Default [DF_TWeekBarname_DoShanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_DoShanbe]  DEFAULT ((0)) FOR [DoShanbe]
GO
/****** Object:  Default [DF_TWeekBarname_SeShanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_SeShanbe]  DEFAULT ((0)) FOR [SeShanbe]
GO
/****** Object:  Default [DF_TWeekBarname_ChharShanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_ChharShanbe]  DEFAULT ((0)) FOR [ChharShanbe]
GO
/****** Object:  Default [DF_TWeekBarname_PangShanbe]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_PangShanbe]  DEFAULT ((0)) FOR [PangShanbe]
GO
/****** Object:  Default [DF_TWeekBarname_Gomee]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TWeekBarname] ADD  CONSTRAINT [DF_TWeekBarname_Gomee]  DEFAULT ((0)) FOR [Gomee]
GO
/****** Object:  Default [DF_Tel_Pass_falgact]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[Tel_Pass] ADD  CONSTRAINT [DF_Tel_Pass_falgact]  DEFAULT (1) FOR [flagact]
GO
/****** Object:  Default [DF_TDateBarn_State]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TDateBarn] ADD  CONSTRAINT [DF_TDateBarn_State]  DEFAULT (N'ÝÚÇá') FOR [State]
GO
/****** Object:  Default [DF_TBarname_TimeStartM]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TBarname] ADD  CONSTRAINT [DF_TBarname_TimeStartM]  DEFAULT ((0)) FOR [TimeStartM]
GO
/****** Object:  Default [DF_TBarname_TedarVizit]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TBarname] ADD  CONSTRAINT [DF_TBarname_TedarVizit]  DEFAULT ((0)) FOR [TedarVizit]
GO
/****** Object:  Default [DF_TBarname_TimeVizitBimar]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TBarname] ADD  CONSTRAINT [DF_TBarname_TimeVizitBimar]  DEFAULT ((0)) FOR [TimeVizitBimar]
GO
/****** Object:  Default [DF_TAmar_Mokh_Date1_1]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TAmar_Mokh] ADD  CONSTRAINT [DF_TAmar_Mokh_Date1_1]  DEFAULT (0) FOR [Date1]
GO
/****** Object:  Default [DF_TAmar_Mokh_NoTel_Tamas]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TAmar_Mokh] ADD  CONSTRAINT [DF_TAmar_Mokh_NoTel_Tamas]  DEFAULT (0) FOR [NoTel_Tamas]
GO
/****** Object:  Default [DF_TAmar_Mokh_Mablag]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TAmar_Mokh] ADD  CONSTRAINT [DF_TAmar_Mokh_Mablag]  DEFAULT (0) FOR [Mablag]
GO
/****** Object:  Default [DF_TAmar_Mokh_time1]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TAmar_Mokh] ADD  CONSTRAINT [DF_TAmar_Mokh_time1]  DEFAULT (0) FOR [time1]
GO
/****** Object:  Default [DF_TAmar_Mokh_Flag_Send]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[TAmar_Mokh] ADD  CONSTRAINT [DF_TAmar_Mokh_Flag_Send]  DEFAULT (0) FOR [Flag_Send]
GO
/****** Object:  Default [DF_RING_pish]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[RING] ADD  CONSTRAINT [DF_RING_pish]  DEFAULT ((0)) FOR [pish]
GO
/****** Object:  ForeignKey [FK_Pish_shom_TMarkaz]    Script Date: 05/09/2015 11:33:39 ******/
ALTER TABLE [dbo].[Pish_shom]  WITH NOCHECK ADD  CONSTRAINT [FK_Pish_shom_TMarkaz] FOREIGN KEY([cod_markaz])
REFERENCES [dbo].[TMarkaz] ([cod_markaz])
GO
ALTER TABLE [dbo].[Pish_shom] CHECK CONSTRAINT [FK_Pish_shom_TMarkaz]
GO
