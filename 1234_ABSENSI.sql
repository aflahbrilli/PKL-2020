USE [master]
GO
/****** Object:  Database [1234_PRESENSI]    Script Date: 8/23/2019 11:06:09 AM ******/
CREATE DATABASE [1234_PRESENSI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'1234_PRESENSI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\1234_PRESENSI.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'1234_PRESENSI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\1234_PRESENSI_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [1234_PRESENSI] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [1234_PRESENSI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [1234_PRESENSI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET ARITHABORT OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [1234_PRESENSI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [1234_PRESENSI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [1234_PRESENSI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [1234_PRESENSI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [1234_PRESENSI] SET  MULTI_USER 
GO
ALTER DATABASE [1234_PRESENSI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [1234_PRESENSI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [1234_PRESENSI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [1234_PRESENSI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [1234_PRESENSI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [1234_PRESENSI] SET QUERY_STORE = OFF
GO
USE [1234_PRESENSI]
GO
/****** Object:  User [superadmin]    Script Date: 8/23/2019 11:06:09 AM ******/
CREATE USER [superadmin] FOR LOGIN [superadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bapak1]    Script Date: 8/23/2019 11:06:09 AM ******/
CREATE USER [bapak1] FOR LOGIN [bapak] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[1234_ABSENSI HARI_KERJA]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1234_ABSENSI HARI_KERJA](
	[HARI] [tinyint] NOT NULL,
	[BULAN] [tinyint] NOT NULL,
	[TAHUN] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[1234_ABSENSI T_USER]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1234_ABSENSI T_USER](
	[Id] [nvarchar](50) NOT NULL,
	[passwd] [nvarchar](1) NULL,
	[uker] [int] NOT NULL,
	[ket_uker] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[manual_shift] [nvarchar](1) NULL,
	[reset_date] [nvarchar](1) NULL,
	[CREATE_DATE] [nvarchar](1) NULL,
	[CREATE_BY] [nvarchar](1) NULL,
	[UPDATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_BY] [nvarchar](50) NOT NULL,
	[LAST_LOGIN] [nvarchar](50) NOT NULL,
	[IP] [bigint] NOT NULL,
	[UPDATE_DATE_SYSTEM] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI](
	[POSISI] [date] NOT NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [nvarchar](50) NOT NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [nvarchar](50) NOT NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [nvarchar](50) NOT NULL,
	[JADWAL_PULANG] [nvarchar](50) NOT NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_DATE_SHIFT3] [nvarchar](1) NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime2](7) NULL,
	[PORTALSDM_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201201]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201201](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201202]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201202](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201203]    Script Date: 8/23/2019 11:06:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201203](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201204]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201204](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201205]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201205](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201206]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201206](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201207]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201207](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201208]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201208](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201209]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201209](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201210]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201210](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201211]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201211](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201212]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201212](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201301]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201301](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201302]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201302](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201303]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201303](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201304]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201304](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201305]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201305](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201306]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201306](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201307]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201307](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201308]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201308](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201309]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201309](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201310]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201310](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201311]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201311](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201312]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201312](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201401]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201401](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201402]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201402](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201403]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201403](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201404]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201404](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201405]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201405](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201406]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201406](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201407]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201407](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201408]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201408](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201409]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201409](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201410]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201410](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201411]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201411](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201412]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201412](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201501]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201501](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201502]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201502](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201503]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201503](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201504]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201504](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](50) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](30) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201505]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201505](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201506]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201506](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [char](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201507]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201507](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201508]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201508](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201509]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201509](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201510]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201510](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201511]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201511](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201512]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201512](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201601]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201601](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201602]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201602](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201603]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201603](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201604]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201604](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201605]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201605](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201606]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201606](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201607]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201607](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201608]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201608](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201609]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201609](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201610]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201610](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201611]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201611](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201612]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201612](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201701]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201701](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201702]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201702](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201703]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201703](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201704]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201704](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201705]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201705](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201706]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201706](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201707]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201707](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201708]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201708](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201709]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201709](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201710]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201710](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201711]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201711](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201712]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201712](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201801]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201801](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201802]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201802](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201803]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201803](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201804]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201804](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201805]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201805](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201806]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201806](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201807]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201807](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201808]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201808](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201809]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201809](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201810]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201810](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201811]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201811](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201812]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201812](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201901]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201901](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201902]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201902](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201903]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201903](
	[POSISI] [date] NOT NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [datetime2](7) NOT NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_DATE_SHIFT3] [nvarchar](1) NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime2](7) NULL,
	[PORTALSDM_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201903s]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201903s](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201904]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201904](
	[POSISI] [date] NOT NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [datetime2](7) NOT NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_DATE_SHIFT3] [nvarchar](1) NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime2](7) NULL,
	[PORTALSDM_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201904s]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201904s](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201905]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201905](
	[POSISI] [date] NOT NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [datetime2](7) NOT NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_DATE_SHIFT3] [nvarchar](1) NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime2](7) NULL,
	[PORTALSDM_DATE] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_201905s]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_201905s](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_BCK]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_BCK](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_HARI_LIBUR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_HARI_LIBUR](
	[POSISI] [date] NOT NULL,
	[KET] [nvarchar](50) NULL,
	[JENIS] [tinyint] NULL,
	[KETERANGAN] [nvarchar](100) NULL,
	[CREATE_DATE] [nvarchar](50) NULL,
	[CREATE_BY] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_JADWAL_SHIFT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_JADWAL_SHIFT](
	[ORGEH] [int] NULL,
	[UKER] [nvarchar](100) NULL,
	[JADWAL_SHIFT1_MASUK] [time](7) NULL,
	[JADWAL_SHIFT1_PULANG] [time](7) NULL,
	[JADWAL_SHIFT2_MASUK] [time](7) NULL,
	[JADWAL_SHIFT2_PULANG] [time](7) NULL,
	[JADWAL_SHIFT3_MASUK] [time](7) NULL,
	[JADWAL_SHIFT3_PULANG] [time](7) NULL,
	[JADWAL_KERJA_MASUK] [time](7) NULL,
	[JADWAL_KERJA_PULANG] [time](7) NULL,
	[TIMEZONE] [nvarchar](50) NULL,
	[CREATE_DATE] [nvarchar](50) NULL,
	[CREATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [nvarchar](50) NULL,
	[UPDATE_BY] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_LEMBUR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_LEMBUR](
	[POSISI] [int] NOT NULL,
	[PERNR] [int] NOT NULL,
	[NAMA] [nvarchar](50) NOT NULL,
	[LEMBUR_MASUK] [time](7) NOT NULL,
	[LEMBUR_PULANG] [time](7) NOT NULL,
	[UKER] [nvarchar](50) NOT NULL,
	[ORGEH] [int] NOT NULL,
	[LEMBUR_MASUK_AWAL] [nvarchar](50) NOT NULL,
	[LEMBUR_PULANG_AWAL] [nvarchar](50) NOT NULL,
	[LEMBUR_MASUK_TID] [int] NOT NULL,
	[LEMBUR_PULANG_TID] [int] NULL,
	[LEMBUR_MASUK_MID] [int] NOT NULL,
	[LEMBUR_PULANG_MID] [int] NULL,
	[TIMEZONE] [nvarchar](50) NOT NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL,
	[CREATE_BY] [nvarchar](50) NOT NULL,
	[UPDATE_DATE] [nvarchar](50) NOT NULL,
	[UPDATE_BY] [nvarchar](50) NOT NULL,
	[KETERANGAN] [nvarchar](50) NOT NULL,
	[SOURCE] [nvarchar](50) NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[UPDATE_DATE_SHIFT3] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_LEMBUR_BCK]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_LEMBUR_BCK](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[LEMBUR_MASUK] [char](9) NULL,
	[LEMBUR_PULANG] [char](11) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[LEMBUR_MASUK_AWAL] [char](9) NULL,
	[LEMBUR_PULANG_AWAL] [char](11) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[TIMEZONE] [varchar](8) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[KETERANGAN] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_LEMBUR_STAGING]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_LEMBUR_STAGING](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_LOG]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_LOG](
	[pernr] [char](8) NULL,
	[posisi] [char](8) NULL,
	[IP_Address] [char](100) NULL,
	[sintaks] [char](200) NULL,
	[tanggal] [datetime] NULL,
	[pengguna] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_NOW]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_NOW](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_SHIFT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_SHIFT](
	[IDNUM] [bigint] NULL,
	[IDGEN] [bigint] IDENTITY(1,1) NOT NULL,
	[POSISI] [char](8) NULL,
	[PERNR] [char](20) NULL,
	[NAMA] [varchar](100) NULL,
	[SHIFT1_MASUK] [char](8) NULL,
	[SHIFT1_PULANG] [char](8) NULL,
	[SHIFT2_MASUK] [char](8) NULL,
	[SHIFT2_PULANG] [char](8) NULL,
	[SHIFT3_MASUK] [char](8) NULL,
	[SHIFT3_PULANG] [char](8) NULL,
	[JADWAL_SHIFT1_MASUK] [char](8) NULL,
	[JADWAL_SHIFT1_PULANG] [char](8) NULL,
	[JADWAL_SHIFT2_MASUK] [char](8) NULL,
	[JADWAL_SHIFT2_PULANG] [char](8) NULL,
	[JADWAL_SHIFT3_MASUK] [char](8) NULL,
	[JADWAL_SHIFT3_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_SHIFT_BCK]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_SHIFT_BCK](
	[IDNUM] [bigint] NULL,
	[IDGEN] [bigint] NOT NULL,
	[POSISI] [char](8) NULL,
	[PERNR] [char](20) NULL,
	[NAMA] [varchar](100) NULL,
	[SHIFT1_MASUK] [char](8) NULL,
	[SHIFT1_PULANG] [char](8) NULL,
	[SHIFT2_MASUK] [char](8) NULL,
	[SHIFT2_PULANG] [char](8) NULL,
	[SHIFT3_MASUK] [char](8) NULL,
	[SHIFT3_PULANG] [char](8) NULL,
	[JADWAL_SHIFT1_MASUK] [char](8) NULL,
	[JADWAL_SHIFT1_PULANG] [char](8) NULL,
	[JADWAL_SHIFT2_MASUK] [char](8) NULL,
	[JADWAL_SHIFT2_PULANG] [char](8) NULL,
	[JADWAL_SHIFT3_MASUK] [char](8) NULL,
	[JADWAL_SHIFT3_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_TK_TEMPORARY]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_TK_TEMPORARY](
	[POSISI] [varchar](8) NULL,
	[PERNR] [varchar](8) NULL,
	[NAMA] [varchar](1) NULL,
	[KERJA_MASUK] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI] [varchar](8) NULL,
	[KERJA_PULANG] [varchar](8) NULL,
	[LEMBUR_MASUK] [varchar](8) NULL,
	[LEMBUR_PULANG] [varchar](8) NULL,
	[JADWAL_MASUK] [varchar](8) NULL,
	[JADWAL_PULANG] [varchar](8) NULL,
	[UKER] [int] NULL,
	[ORGEH] [int] NULL,
	[KOREKSI] [varchar](1) NULL,
	[KODE] [int] NULL,
	[DESKRIPSI] [int] NULL,
	[ACCTNO] [int] NULL,
	[CARDNO] [int] NULL,
	[CREATE_DATE] [datetime] NULL,
	[SOURCE] [varchar](7) NULL,
	[TIPE_PEKERJA] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_TMP]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_TMP](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL,
	[NOMER] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSI_TO_DELETE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSI_TO_DELETE](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ABSENSIs]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ABSENSIs](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [varchar](100) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[ISTIRAHAT_KELUAR] [char](8) NULL,
	[ISTIRAHAT_KEMBALI] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[LEMBUR_MASUK] [char](8) NULL,
	[LEMBUR_PULANG] [char](8) NULL,
	[JADWAL_MASUK] [char](8) NULL,
	[JADWAL_PULANG] [char](8) NULL,
	[UKER] [varchar](100) NULL,
	[ORGEH] [varchar](50) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [char](8) NULL,
	[LEMBUR_PULANG_AWAL] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [char](8) NULL,
	[KERJA_PULANG_AWAL] [char](8) NULL,
	[STATUS_KERJA_AWAL] [nchar](30) NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL,
	[TIPE_PEKERJA] [varchar](50) NULL,
	[POSISI_DT] [datetime] NULL,
	[PORTALSDM_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BRIHC_PA0001]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRIHC_PA0001](
	[PERNR] [varchar](8) NULL,
	[WERKS] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [varchar](8) NULL,
	[STELL] [varchar](8) NULL,
	[SNAME] [varchar](30) NULL,
	[WERKS_TX] [varchar](100) NULL,
	[BTRTL_TX] [varchar](100) NULL,
	[KOSTL_TX] [varchar](100) NULL,
	[ORGEH_TX] [varchar](100) NULL,
	[STELL_TX] [varchar](100) NULL,
	[JGPG] [varchar](15) NULL,
	[UPOK] [numeric](18, 0) NULL,
	[PREMIUM] [numeric](18, 0) NULL,
	[REKENING] [varchar](15) NULL,
	[ESELON] [varchar](5) NULL,
	[NIP] [varchar](50) NULL,
	[TCT] [numeric](18, 0) NULL,
	[JK] [varchar](1) NULL,
	[TEMPATLAHIR] [varchar](50) NULL,
	[TANGGALLAHIR] [varchar](50) NULL,
	[AGAMA] [varchar](50) NULL,
	[TMT_PT] [varchar](50) NULL,
	[MKE] [int] NULL,
	[MPP] [varchar](50) NULL,
	[TMT_MASUK] [varchar](50) NULL,
	[TMT_PHK] [varchar](50) NULL,
	[TIPE_UKER] [varchar](50) NULL,
	[ADD_AREA] [varchar](100) NULL,
	[PERSG] [varchar](5) NULL,
	[PERSK] [varchar](5) NULL,
	[STATUS] [varchar](100) NULL,
	[ALAMAT] [text] NULL,
	[BRANCH] [varchar](5) NULL,
	[HILFM] [varchar](3) NULL,
	[HTEXT] [varchar](25) NULL,
	[NPWP] [varchar](15) NULL,
	[IDNUM] [varchar](30) NULL,
	[HP1] [varchar](20) NULL,
	[HP2] [varchar](20) NULL,
	[JAMSOSTEK] [varchar](15) NULL,
	[GOLDARAH] [varchar](2) NULL,
	[KAWIN] [varchar](10) NULL,
	[PROGRAM_MASUK] [varchar](50) NULL,
	[PLANS] [varchar](8) NULL,
	[PLANS_TX] [varchar](100) NULL,
	[ORGEH_PGS] [varchar](8) NULL,
	[PLANS_PGS] [varchar](8) NULL,
	[ORGEH_PGS_TX] [varchar](100) NULL,
	[PLANS_PGS_TX] [varchar](100) NULL,
	[BRANCH_PGS] [varchar](5) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BRIHC_PA0001_EOF_ALL]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRIHC_PA0001_EOF_ALL](
	[PERNR] [varchar](8) NULL,
	[WERKS] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [varchar](8) NULL,
	[STELL] [varchar](8) NULL,
	[SNAME] [varchar](30) NULL,
	[WERKS_TX] [varchar](100) NULL,
	[BTRTL_TX] [varchar](100) NULL,
	[KOSTL_TX] [varchar](100) NULL,
	[ORGEH_TX] [varchar](100) NULL,
	[STELL_TX] [varchar](100) NULL,
	[JGPG] [varchar](15) NULL,
	[UPOK] [numeric](18, 0) NULL,
	[PREMIUM] [numeric](18, 0) NULL,
	[REKENING] [varchar](15) NULL,
	[ESELON] [varchar](5) NULL,
	[NIP] [varchar](50) NULL,
	[TCT] [numeric](18, 0) NULL,
	[JK] [varchar](1) NULL,
	[TEMPATLAHIR] [varchar](50) NULL,
	[TANGGALLAHIR] [varchar](50) NULL,
	[AGAMA] [varchar](50) NULL,
	[TMT_PT] [varchar](50) NULL,
	[MKE] [int] NULL,
	[MPP] [varchar](50) NULL,
	[TMT_MASUK] [varchar](50) NULL,
	[TMT_PHK] [varchar](50) NULL,
	[TIPE_UKER] [varchar](50) NULL,
	[ADD_AREA] [varchar](100) NULL,
	[PERSG] [varchar](5) NULL,
	[PERSK] [varchar](5) NULL,
	[STATUS] [varchar](100) NULL,
	[ALAMAT] [text] NULL,
	[BRANCH] [varchar](5) NULL,
	[HILFM] [varchar](3) NULL,
	[HTEXT] [varchar](25) NULL,
	[NPWP] [varchar](15) NULL,
	[IDNUM] [varchar](30) NULL,
	[HP1] [varchar](20) NULL,
	[HP2] [varchar](20) NULL,
	[JAMSOSTEK] [varchar](15) NULL,
	[GOLDARAH] [varchar](2) NULL,
	[KAWIN] [varchar](10) NULL,
	[PROGRAM_MASUK] [varchar](50) NULL,
	[PLANS] [varchar](8) NULL,
	[PLANS_TX] [varchar](100) NULL,
	[ORGEH_PGS] [varchar](8) NULL,
	[PLANS_PGS] [varchar](8) NULL,
	[ORGEH_PGS_TX] [varchar](100) NULL,
	[PLANS_PGS_TX] [varchar](100) NULL,
	[BRANCH_PGS] [varchar](5) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[child_menu]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[child_menu](
	[id] [tinyint] NOT NULL,
	[parent_id] [tinyint] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[role] [tinyint] NOT NULL,
	[icon] [nvarchar](1) NULL,
	[link] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATA_OUTSOURCING]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATA_OUTSOURCING](
	[No] [float] NULL,
	[Nama] [nvarchar](255) NULL,
	[Penugasan] [nvarchar](255) NULL,
	[No Kartu ATM] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_pekerja]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_pekerja](
	[PERNR] [int] NOT NULL,
	[WERKS] [nvarchar](50) NOT NULL,
	[BTRTL] [nvarchar](50) NOT NULL,
	[KOSTL] [nvarchar](50) NOT NULL,
	[ORGEH] [int] NOT NULL,
	[STELL] [int] NOT NULL,
	[SNAME] [nvarchar](50) NOT NULL,
	[WERKS_TX] [nvarchar](50) NOT NULL,
	[BTRTL_TX] [nvarchar](50) NOT NULL,
	[KOSTL_TX] [nvarchar](50) NOT NULL,
	[ORGEH_TX] [nvarchar](100) NOT NULL,
	[STELL_TX] [nvarchar](50) NOT NULL,
	[JGPG] [nvarchar](50) NOT NULL,
	[UPOK] [nvarchar](1) NULL,
	[PREMIUM] [nvarchar](1) NULL,
	[REKENING] [float] NOT NULL,
	[ESELON] [tinyint] NOT NULL,
	[NIP] [nvarchar](50) NOT NULL,
	[TCT] [nvarchar](1) NULL,
	[JK] [nvarchar](50) NOT NULL,
	[TEMPATLAHIR] [nvarchar](1) NULL,
	[TANGGALLAHIR] [date] NOT NULL,
	[AGAMA] [nvarchar](50) NOT NULL,
	[TMT_PT] [date] NULL,
	[MKE] [tinyint] NOT NULL,
	[MPP] [date] NOT NULL,
	[TMT_MASUK] [date] NOT NULL,
	[TMT_PHK] [nvarchar](1) NULL,
	[TIPE_UKER] [nvarchar](50) NOT NULL,
	[ADD_AREA] [nvarchar](50) NOT NULL,
	[PERSG] [tinyint] NOT NULL,
	[PERSK] [tinyint] NOT NULL,
	[STATUS] [nvarchar](50) NOT NULL,
	[ALAMAT] [nvarchar](1) NULL,
	[BRANCH] [tinyint] NOT NULL,
	[HILFM] [tinyint] NOT NULL,
	[HTEXT] [nvarchar](50) NOT NULL,
	[NPWP] [float] NOT NULL,
	[IDNUM] [nvarchar](1) NULL,
	[HP1] [float] NULL,
	[HP2] [nvarchar](50) NULL,
	[JAMSOSTEK] [bigint] NULL,
	[GOLDARAH] [nvarchar](50) NULL,
	[KAWIN] [nvarchar](50) NOT NULL,
	[PROGRAM_MASUK] [nvarchar](50) NOT NULL,
	[PLANS] [int] NOT NULL,
	[PLANS_TX] [nvarchar](50) NOT NULL,
	[ORGEH_PGS] [nvarchar](1) NULL,
	[PLANS_PGS] [nvarchar](1) NULL,
	[ORGEH_PGS_TX] [nvarchar](1) NULL,
	[PLANS_PGS_TX] [nvarchar](1) NULL,
	[BRANCH_PGS] [nvarchar](1) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIVISI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIVISI](
	[ORGEH_INDUK] [varchar](8) NULL,
	[ORGTX_INDUK] [varchar](100) NULL,
	[ORGEH] [varchar](8) NULL,
	[ORGTX] [varchar](100) NULL,
	[CREATE_dATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL,
	[LOG_ID] [int] NULL,
	[IS_FLEXITIME] [int] NULL,
	[JAM_DATANG_MIN] [char](8) NULL,
	[JAM_DATANG_MAX] [char](8) NULL,
	[TANGGAL_MULAI] [datetime] NULL,
	[TANGGAL_SELESAI] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dummy_dimaintain]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dummy_dimaintain](
	[tanggal] [date] NOT NULL,
	[personal_number] [int] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[masuk_kerja] [nvarchar](50) NOT NULL,
	[lokasi_masuk] [nvarchar](50) NOT NULL,
	[pulang_kerja] [nvarchar](50) NOT NULL,
	[pulang_kerja_awal] [nvarchar](50) NOT NULL,
	[lokasi_pulang] [nvarchar](50) NOT NULL,
	[keterangan] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](50) NOT NULL,
	[info] [nvarchar](50) NOT NULL,
	[masuk_kerja_awal] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dummy_lembur]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dummy_lembur](
	[tanggal] [date] NOT NULL,
	[personalnumber] [int] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[lembur_masuk] [nvarchar](50) NOT NULL,
	[lokasi_masuk] [nvarchar](50) NOT NULL,
	[lembur_pulang] [nvarchar](50) NOT NULL,
	[lokasi_pulang] [nvarchar](50) NOT NULL,
	[created_by] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dwh_branch]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dwh_branch](
	[SRCSYS_ID] [nvarchar](50) NOT NULL,
	[BRUNIT] [nvarchar](50) NOT NULL,
	[REGION] [nvarchar](50) NOT NULL,
	[RGDESC] [nvarchar](50) NOT NULL,
	[RGNAME] [nvarchar](100) NOT NULL,
	[MAINBR] [smallint] NOT NULL,
	[MBDESC] [nvarchar](50) NOT NULL,
	[MBNAME] [nvarchar](100) NOT NULL,
	[SUBBR] [smallint] NOT NULL,
	[SBDESC] [nvarchar](100) NOT NULL,
	[SBNAME] [nvarchar](100) NOT NULL,
	[BRANCH] [smallint] NOT NULL,
	[BRDESC] [nvarchar](50) NOT NULL,
	[BRNAME] [nvarchar](100) NOT NULL,
	[BIBR] [smallint] NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HARI_KERJA]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HARI_KERJA](
	[HARI] [int] NULL,
	[BULAN] [int] NULL,
	[TAHUN] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HARI_LIBUR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HARI_LIBUR](
	[POSISI] [varchar](8) NULL,
	[KET] [varchar](1) NULL,
	[JENIS] [int] NULL,
	[KETERANGAN] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP1000]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP1000](
	[MANDT] [varchar](3) NOT NULL,
	[PLVAR] [varchar](2) NOT NULL,
	[OTYPE] [varchar](2) NOT NULL,
	[OBJID] [varchar](8) NOT NULL,
	[ISTAT] [varchar](1) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[LANGU] [varchar](1) NOT NULL,
	[SEQNR] [varchar](3) NOT NULL,
	[OTJID] [varchar](10) NOT NULL,
	[INFTY] [varchar](4) NOT NULL,
	[AEDTM] [varchar](8) NOT NULL,
	[UNAME] [varchar](12) NOT NULL,
	[REASN] [varchar](2) NOT NULL,
	[HISTO] [varchar](1) NOT NULL,
	[ITXNR] [varchar](8) NOT NULL,
	[SHORT] [varchar](12) NOT NULL,
	[STEXT] [varchar](40) NOT NULL,
	[GDATE] [varchar](8) NOT NULL,
	[MC_SHORT] [varchar](12) NOT NULL,
	[MC_STEXT] [varchar](40) NOT NULL,
	[MC_SEARK] [varchar](52) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP1001]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP1001](
	[MANDT] [varchar](3) NOT NULL,
	[OTYPE] [varchar](2) NOT NULL,
	[OBJID] [varchar](8) NOT NULL,
	[PLVAR] [varchar](2) NOT NULL,
	[RSIGN] [varchar](1) NOT NULL,
	[RELAT] [varchar](3) NOT NULL,
	[ISTAT] [varchar](1) NOT NULL,
	[PRIOX] [varchar](2) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[VARYF] [varchar](10) NOT NULL,
	[SEQNR] [varchar](3) NOT NULL,
	[INFTY] [varchar](4) NOT NULL,
	[OTJID] [varchar](10) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[AEDTM] [varchar](8) NOT NULL,
	[UNAME] [varchar](12) NOT NULL,
	[REASN] [varchar](2) NOT NULL,
	[HISTO] [varchar](1) NOT NULL,
	[ITXNR] [varchar](8) NOT NULL,
	[SCLAS] [varchar](2) NOT NULL,
	[SOBID] [varchar](45) NOT NULL,
	[PROZT] [decimal](5, 2) NOT NULL,
	[ADATANR] [varchar](32) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JADWAL_SHIFT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JADWAL_SHIFT](
	[ORGEH] [varchar](8) NULL,
	[UKER] [varchar](160) NULL,
	[JADWAL_SHIFT1_MASUK] [varchar](8) NULL,
	[JADWAL_SHIFT1_PULANG] [varchar](8) NULL,
	[JADWAL_SHIFT2_MASUK] [varchar](8) NULL,
	[JADWAL_SHIFT2_PULANG] [varchar](8) NULL,
	[JADWAL_SHIFT3_MASUK] [varchar](8) NULL,
	[JADWAL_SHIFT3_PULANG] [varchar](8) NULL,
	[JADWAL_KERJA_MASUK] [varchar](8) NULL,
	[JADWAL_KERJA_PULANG] [varchar](8) NULL,
	[TIMEZONE] [varchar](10) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_PROSES_ABSENSI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_PROSES_ABSENSI](
	[PACKAGE_NAME] [varchar](50) NULL,
	[STATUS] [varchar](50) NULL,
	[TIME] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAPPING_REMARK_CUTI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAPPING_REMARK_CUTI](
	[kode] [nchar](10) NULL,
	[remark] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MPP]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MPP](
	[MANDT] [varchar](3) NOT NULL,
	[PERNR] [varchar](8) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[OBJPS] [varchar](2) NOT NULL,
	[SPRPS] [varchar](1) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[SEQNR] [varchar](3) NOT NULL,
	[AEDTM] [varchar](8) NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[PERSG] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[VDSK1] [varchar](14) NULL,
	[GSBER] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[JUPER] [varchar](4) NULL,
	[ABKRS] [varchar](2) NULL,
	[ANSVH] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [varchar](8) NULL,
	[PLANS] [varchar](8) NULL,
	[STELL] [varchar](8) NULL,
	[MSTBR] [varchar](8) NULL,
	[SACHA] [varchar](3) NULL,
	[SACHP] [varchar](3) NULL,
	[SACHZ] [varchar](3) NULL,
	[SNAME] [varchar](30) NULL,
	[ENAME] [varchar](40) NULL,
	[OTYPE] [varchar](2) NULL,
	[SBMOD] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[ZZSKNUM] [varchar](40) NULL,
	[ZZSKDAT] [varchar](8) NULL,
	[ZZSEQNO] [varchar](4) NULL,
	[ZZPRCOD] [varchar](3) NULL,
	[ZZPGS01] [varchar](8) NULL,
	[ZZORG01] [varchar](8) NULL,
	[ZZBEG01] [varchar](8) NULL,
	[ZZEND01] [varchar](8) NULL,
	[ZZPRC01] [decimal](5, 2) NULL,
	[ZZSKP01] [varchar](40) NULL,
	[ZZSKDAT01] [varchar](8) NULL,
	[ZZSKSEQ01] [varchar](4) NULL,
	[ZZSKHAL01] [varchar](3) NULL,
	[ZZPGS02] [varchar](8) NULL,
	[ZZORG02] [varchar](8) NULL,
	[ZZBEG02] [varchar](8) NULL,
	[ZZEND02] [varchar](8) NULL,
	[ZZPRC02] [decimal](5, 2) NULL,
	[ZZSKP02] [varchar](40) NULL,
	[ZZSKDAT02] [varchar](8) NULL,
	[ZZSKSEQ02] [varchar](4) NULL,
	[ZZSKHAL02] [varchar](3) NULL,
	[ZZPGS03] [varchar](8) NULL,
	[ZZORG03] [varchar](8) NULL,
	[ZZBEG03] [varchar](8) NULL,
	[ZZEND03] [varchar](8) NULL,
	[ZZPRC03] [decimal](5, 2) NULL,
	[ZZSKP03] [varchar](40) NULL,
	[ZZSKDAT03] [varchar](8) NULL,
	[ZZSKSEQ03] [varchar](4) NULL,
	[ZZSKHAL03] [varchar](3) NULL,
	[ZZPGS04] [varchar](8) NULL,
	[ZZORG04] [varchar](8) NULL,
	[ZZBEG04] [varchar](8) NULL,
	[ZZEND04] [varchar](8) NULL,
	[ZZPRC04] [decimal](5, 2) NULL,
	[ZZSKP04] [varchar](40) NULL,
	[ZZSKDAT04] [varchar](8) NULL,
	[ZZSKSEQ04] [varchar](4) NULL,
	[ZZSKHAL04] [varchar](3) NULL,
	[ZZPGS05] [varchar](8) NULL,
	[ZZORG05] [varchar](8) NULL,
	[ZZBEG05] [varchar](8) NULL,
	[ZZEND05] [varchar](8) NULL,
	[ZZPRC05] [decimal](5, 2) NULL,
	[ZZSKP05] [varchar](40) NULL,
	[ZZSKDAT05] [varchar](8) NULL,
	[ZZSKSEQ05] [varchar](4) NULL,
	[ZZSKHAL05] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organisasi]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organisasi](
	[WERKS] [nvarchar](50) NULL,
	[BTRTL] [nvarchar](50) NULL,
	[KOSTL] [nvarchar](50) NULL,
	[ORGEH] [int] NULL,
	[WERKS_TX] [nvarchar](50) NULL,
	[BTRTL_TX] [nvarchar](50) NULL,
	[KOSTL_TX] [nvarchar](50) NULL,
	[ORGEH_TX] [nvarchar](100) NULL,
	[BRANCH] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PA0001]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA0001](
	[MANDT] [varchar](3) NOT NULL,
	[PERNR] [varchar](8) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[OBJPS] [varchar](2) NOT NULL,
	[SPRPS] [varchar](1) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[SEQNR] [varchar](3) NOT NULL,
	[AEDTM] [varchar](8) NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[BUKRS] [varchar](4) NULL,
	[WERKS] [varchar](4) NULL,
	[PERSG] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[VDSK1] [varchar](14) NULL,
	[GSBER] [varchar](4) NULL,
	[BTRTL] [varchar](4) NULL,
	[JUPER] [varchar](4) NULL,
	[ABKRS] [varchar](2) NULL,
	[ANSVH] [varchar](2) NULL,
	[KOSTL] [varchar](10) NULL,
	[ORGEH] [varchar](8) NULL,
	[PLANS] [varchar](8) NULL,
	[STELL] [varchar](8) NULL,
	[MSTBR] [varchar](8) NULL,
	[SACHA] [varchar](3) NULL,
	[SACHP] [varchar](3) NULL,
	[SACHZ] [varchar](3) NULL,
	[SNAME] [varchar](30) NULL,
	[ENAME] [varchar](40) NULL,
	[OTYPE] [varchar](2) NULL,
	[SBMOD] [varchar](4) NULL,
	[KOKRS] [varchar](4) NULL,
	[FISTL] [varchar](16) NULL,
	[GEBER] [varchar](10) NULL,
	[ZZSKNUM] [varchar](40) NULL,
	[ZZSKDAT] [varchar](8) NULL,
	[ZZSEQNO] [varchar](4) NULL,
	[ZZPRCOD] [varchar](3) NULL,
	[ZZPGS01] [varchar](8) NULL,
	[ZZORG01] [varchar](8) NULL,
	[ZZBEG01] [varchar](8) NULL,
	[ZZEND01] [varchar](8) NULL,
	[ZZPRC01] [decimal](5, 2) NULL,
	[ZZSKP01] [varchar](40) NULL,
	[ZZSKDAT01] [varchar](8) NULL,
	[ZZSKSEQ01] [varchar](4) NULL,
	[ZZSKHAL01] [varchar](3) NULL,
	[ZZPGS02] [varchar](8) NULL,
	[ZZORG02] [varchar](8) NULL,
	[ZZBEG02] [varchar](8) NULL,
	[ZZEND02] [varchar](8) NULL,
	[ZZPRC02] [decimal](5, 2) NULL,
	[ZZSKP02] [varchar](40) NULL,
	[ZZSKDAT02] [varchar](8) NULL,
	[ZZSKSEQ02] [varchar](4) NULL,
	[ZZSKHAL02] [varchar](3) NULL,
	[ZZPGS03] [varchar](8) NULL,
	[ZZORG03] [varchar](8) NULL,
	[ZZBEG03] [varchar](8) NULL,
	[ZZEND03] [varchar](8) NULL,
	[ZZPRC03] [decimal](5, 2) NULL,
	[ZZSKP03] [varchar](40) NULL,
	[ZZSKDAT03] [varchar](8) NULL,
	[ZZSKSEQ03] [varchar](4) NULL,
	[ZZSKHAL03] [varchar](3) NULL,
	[ZZPGS04] [varchar](8) NULL,
	[ZZORG04] [varchar](8) NULL,
	[ZZBEG04] [varchar](8) NULL,
	[ZZEND04] [varchar](8) NULL,
	[ZZPRC04] [decimal](5, 2) NULL,
	[ZZSKP04] [varchar](40) NULL,
	[ZZSKDAT04] [varchar](8) NULL,
	[ZZSKSEQ04] [varchar](4) NULL,
	[ZZSKHAL04] [varchar](3) NULL,
	[ZZPGS05] [varchar](8) NULL,
	[ZZORG05] [varchar](8) NULL,
	[ZZBEG05] [varchar](8) NULL,
	[ZZEND05] [varchar](8) NULL,
	[ZZPRC05] [decimal](5, 2) NULL,
	[ZZSKP05] [varchar](40) NULL,
	[ZZSKDAT05] [varchar](8) NULL,
	[ZZSKSEQ05] [varchar](4) NULL,
	[ZZSKHAL05] [varchar](3) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PA0002]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA0002](
	[MANDT] [varchar](3) NULL,
	[PERNR] [varchar](8) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [varchar](8) NULL,
	[BEGDA] [varchar](8) NULL,
	[SEQNR] [varchar](3) NULL,
	[AEDTM] [varchar](8) NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[INITS] [varchar](10) NULL,
	[NACHN] [varchar](40) NULL,
	[NAME2] [varchar](40) NULL,
	[NACH2] [varchar](40) NULL,
	[VORNA] [varchar](40) NULL,
	[CNAME] [varchar](80) NULL,
	[TITEL] [varchar](15) NULL,
	[TITL2] [varchar](15) NULL,
	[NAMZU] [varchar](15) NULL,
	[VORSW] [varchar](15) NULL,
	[VORS2] [varchar](15) NULL,
	[RUFNM] [varchar](40) NULL,
	[MIDNM] [varchar](40) NULL,
	[KNZNM] [varchar](2) NULL,
	[ANRED] [varchar](1) NULL,
	[GESCH] [varchar](1) NULL,
	[GBDAT] [varchar](8) NULL,
	[GBLND] [varchar](3) NULL,
	[GBDEP] [varchar](3) NULL,
	[GBORT] [varchar](40) NULL,
	[NATIO] [varchar](3) NULL,
	[NATI2] [varchar](3) NULL,
	[NATI3] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[KONFE] [varchar](2) NULL,
	[FAMST] [varchar](1) NULL,
	[FAMDT] [varchar](8) NULL,
	[ANZKD] [decimal](3, 0) NULL,
	[NACON] [varchar](1) NULL,
	[PERMO] [varchar](2) NULL,
	[PERID] [varchar](20) NULL,
	[GBPAS] [varchar](8) NULL,
	[FNAMK] [varchar](40) NULL,
	[LNAMK] [varchar](40) NULL,
	[FNAMR] [varchar](40) NULL,
	[LNAMR] [varchar](40) NULL,
	[NABIK] [varchar](40) NULL,
	[NABIR] [varchar](40) NULL,
	[NICKK] [varchar](40) NULL,
	[NICKR] [varchar](40) NULL,
	[GBJHR] [varchar](4) NULL,
	[GBMON] [varchar](2) NULL,
	[GBTAG] [varchar](2) NULL,
	[NCHMC] [varchar](25) NULL,
	[VNAMC] [varchar](25) NULL,
	[NAMZ2] [varchar](15) NULL,
	[ZZNIP] [varchar](10) NULL,
	[ZZBTR] [varchar](5) NULL,
	[ZZANK] [varchar](3) NULL,
	[ZZGDARAH] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PA0008]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA0008](
	[MANDT] [varchar](3) NULL,
	[PERNR] [varchar](8) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [varchar](8) NULL,
	[BEGDA] [varchar](8) NULL,
	[SEQNR] [varchar](3) NULL,
	[AEDTM] [varchar](8) NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[TRFAR] [varchar](2) NULL,
	[TRFGB] [varchar](2) NULL,
	[TRFGR] [varchar](8) NULL,
	[TRFST] [varchar](2) NULL,
	[STVOR] [varchar](8) NULL,
	[ORZST] [varchar](2) NULL,
	[PARTN] [varchar](2) NULL,
	[WAERS] [varchar](5) NULL,
	[VGLTA] [varchar](2) NULL,
	[VGLGB] [varchar](2) NULL,
	[VGLGR] [varchar](8) NULL,
	[VGLST] [varchar](2) NULL,
	[VGLSV] [varchar](8) NULL,
	[BSGRD] [numeric](5, 2) NULL,
	[DIVGV] [numeric](5, 2) NULL,
	[ANSAL] [numeric](15, 2) NULL,
	[FALGK] [varchar](10) NULL,
	[FALGR] [varchar](6) NULL,
	[LGA01] [varchar](4) NULL,
	[BET01] [numeric](13, 2) NULL,
	[ANZ01] [numeric](7, 2) NULL,
	[EIN01] [varchar](3) NULL,
	[OPK01] [varchar](1) NULL,
	[LGA02] [varchar](4) NULL,
	[BET02] [numeric](13, 2) NULL,
	[ANZ02] [numeric](7, 2) NULL,
	[EIN02] [varchar](3) NULL,
	[OPK02] [varchar](1) NULL,
	[LGA03] [varchar](4) NULL,
	[BET03] [numeric](13, 2) NULL,
	[ANZ03] [numeric](7, 2) NULL,
	[EIN03] [varchar](3) NULL,
	[OPK03] [varchar](1) NULL,
	[LGA04] [varchar](4) NULL,
	[BET04] [numeric](13, 2) NULL,
	[ANZ04] [numeric](7, 2) NULL,
	[EIN04] [varchar](3) NULL,
	[OPK04] [varchar](1) NULL,
	[LGA05] [varchar](4) NULL,
	[BET05] [numeric](13, 2) NULL,
	[ANZ05] [numeric](7, 2) NULL,
	[EIN05] [varchar](3) NULL,
	[OPK05] [varchar](1) NULL,
	[LGA06] [varchar](4) NULL,
	[BET06] [numeric](13, 2) NULL,
	[ANZ06] [numeric](7, 2) NULL,
	[EIN06] [varchar](3) NULL,
	[OPK06] [varchar](1) NULL,
	[LGA07] [varchar](4) NULL,
	[BET07] [numeric](13, 2) NULL,
	[ANZ07] [numeric](7, 2) NULL,
	[EIN07] [varchar](3) NULL,
	[OPK07] [varchar](1) NULL,
	[LGA08] [varchar](4) NULL,
	[BET08] [numeric](13, 2) NULL,
	[ANZ08] [numeric](7, 2) NULL,
	[EIN08] [varchar](3) NULL,
	[OPK08] [varchar](1) NULL,
	[LGA09] [varchar](4) NULL,
	[BET09] [numeric](13, 2) NULL,
	[ANZ09] [numeric](7, 2) NULL,
	[EIN09] [varchar](3) NULL,
	[OPK09] [varchar](1) NULL,
	[LGA10] [varchar](4) NULL,
	[BET10] [numeric](13, 2) NULL,
	[ANZ10] [numeric](7, 2) NULL,
	[EIN10] [varchar](3) NULL,
	[OPK10] [varchar](1) NULL,
	[LGA11] [varchar](4) NULL,
	[BET11] [numeric](13, 2) NULL,
	[ANZ11] [numeric](7, 2) NULL,
	[EIN11] [varchar](3) NULL,
	[OPK11] [varchar](1) NULL,
	[LGA12] [varchar](4) NULL,
	[BET12] [numeric](13, 2) NULL,
	[ANZ12] [numeric](7, 2) NULL,
	[EIN12] [varchar](3) NULL,
	[OPK12] [varchar](1) NULL,
	[LGA13] [varchar](4) NULL,
	[BET13] [numeric](13, 2) NULL,
	[ANZ13] [numeric](7, 2) NULL,
	[EIN13] [varchar](3) NULL,
	[OPK13] [varchar](1) NULL,
	[LGA14] [varchar](4) NULL,
	[BET14] [numeric](13, 2) NULL,
	[ANZ14] [numeric](7, 2) NULL,
	[EIN14] [varchar](3) NULL,
	[OPK14] [varchar](1) NULL,
	[LGA15] [varchar](4) NULL,
	[BET15] [numeric](13, 2) NULL,
	[ANZ15] [numeric](7, 2) NULL,
	[EIN15] [varchar](3) NULL,
	[OPK15] [varchar](1) NULL,
	[LGA16] [varchar](4) NULL,
	[BET16] [numeric](13, 2) NULL,
	[ANZ16] [numeric](7, 2) NULL,
	[EIN16] [varchar](3) NULL,
	[OPK16] [varchar](1) NULL,
	[LGA17] [varchar](4) NULL,
	[BET17] [numeric](13, 2) NULL,
	[ANZ17] [numeric](7, 2) NULL,
	[EIN17] [varchar](3) NULL,
	[OPK17] [varchar](1) NULL,
	[LGA18] [varchar](4) NULL,
	[BET18] [numeric](13, 2) NULL,
	[ANZ18] [numeric](7, 2) NULL,
	[EIN18] [varchar](3) NULL,
	[OPK18] [varchar](1) NULL,
	[LGA19] [varchar](4) NULL,
	[BET19] [numeric](13, 2) NULL,
	[ANZ19] [numeric](7, 2) NULL,
	[EIN19] [varchar](3) NULL,
	[OPK19] [varchar](1) NULL,
	[LGA20] [varchar](4) NULL,
	[BET20] [numeric](13, 2) NULL,
	[ANZ20] [numeric](7, 2) NULL,
	[EIN20] [varchar](3) NULL,
	[OPK20] [varchar](1) NULL,
	[IND01] [varchar](1) NULL,
	[IND02] [varchar](1) NULL,
	[IND03] [varchar](1) NULL,
	[IND04] [varchar](1) NULL,
	[IND05] [varchar](1) NULL,
	[IND06] [varchar](1) NULL,
	[IND07] [varchar](1) NULL,
	[IND08] [varchar](1) NULL,
	[IND09] [varchar](1) NULL,
	[IND10] [varchar](1) NULL,
	[IND11] [varchar](1) NULL,
	[IND12] [varchar](1) NULL,
	[IND13] [varchar](1) NULL,
	[IND14] [varchar](1) NULL,
	[IND15] [varchar](1) NULL,
	[IND16] [varchar](1) NULL,
	[IND17] [varchar](1) NULL,
	[IND18] [varchar](1) NULL,
	[IND19] [varchar](1) NULL,
	[IND20] [varchar](1) NULL,
	[ANCUR] [varchar](5) NULL,
	[CPIND] [varchar](1) NULL,
	[TRFPG] [varchar](8) NULL,
	[PRGRD] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PA0009]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA0009](
	[MANDT] [varchar](3) NOT NULL,
	[PERNR] [varchar](8) NOT NULL,
	[SUBTY] [varchar](4) NOT NULL,
	[OBJPS] [varchar](2) NOT NULL,
	[SPRPS] [varchar](1) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[SEQNR] [varchar](3) NOT NULL,
	[AEDTM] [varchar](8) NOT NULL,
	[UNAME] [varchar](12) NOT NULL,
	[HISTO] [varchar](1) NOT NULL,
	[ITXEX] [varchar](1) NOT NULL,
	[REFEX] [varchar](1) NOT NULL,
	[ORDEX] [varchar](1) NOT NULL,
	[ITBLD] [varchar](2) NOT NULL,
	[PREAS] [varchar](2) NOT NULL,
	[FLAG1] [varchar](1) NOT NULL,
	[FLAG2] [varchar](1) NOT NULL,
	[FLAG3] [varchar](1) NOT NULL,
	[FLAG4] [varchar](1) NOT NULL,
	[RESE1] [varchar](2) NOT NULL,
	[RESE2] [varchar](2) NOT NULL,
	[OPKEN] [varchar](1) NOT NULL,
	[BETRG] [decimal](13, 2) NOT NULL,
	[WAERS] [varchar](5) NOT NULL,
	[ANZHL] [decimal](5, 2) NOT NULL,
	[ZEINH] [varchar](3) NOT NULL,
	[BNKSA] [varchar](4) NOT NULL,
	[ZLSCH] [varchar](1) NOT NULL,
	[EMFTX] [varchar](40) NOT NULL,
	[BKPLZ] [varchar](10) NOT NULL,
	[BKORT] [varchar](25) NOT NULL,
	[BANKS] [varchar](3) NOT NULL,
	[BANKL] [varchar](15) NOT NULL,
	[BANKN] [varchar](18) NOT NULL,
	[BANKP] [varchar](2) NOT NULL,
	[BKONT] [varchar](2) NOT NULL,
	[SWIFT] [varchar](11) NOT NULL,
	[DTAWS] [varchar](2) NOT NULL,
	[DTAMS] [varchar](1) NOT NULL,
	[STCD1] [varchar](16) NOT NULL,
	[STCD2] [varchar](11) NOT NULL,
	[PSKTO] [varchar](16) NOT NULL,
	[ESRNR] [varchar](11) NOT NULL,
	[ESRRE] [varchar](27) NOT NULL,
	[ESRPZ] [varchar](2) NOT NULL,
	[EMFSL] [varchar](8) NOT NULL,
	[ZWECK] [varchar](40) NOT NULL,
	[BTTYP] [varchar](2) NOT NULL,
	[PAYTY] [varchar](1) NOT NULL,
	[PAYID] [varchar](1) NOT NULL,
	[OCRSN] [varchar](4) NOT NULL,
	[BONDT] [varchar](8) NOT NULL,
	[BKREF] [varchar](20) NULL,
	[STRAS] [varchar](30) NULL,
	[STATE] [varchar](3) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PA0105]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA0105](
	[MANDT] [varchar](3) NULL,
	[PERNR] [varchar](8) NULL,
	[SUBTY] [varchar](4) NULL,
	[OBJPS] [varchar](2) NULL,
	[SPRPS] [varchar](1) NULL,
	[ENDDA] [varchar](8) NULL,
	[BEGDA] [varchar](8) NULL,
	[SEQNR] [varchar](3) NULL,
	[AEDTM] [varchar](8) NULL,
	[UNAME] [varchar](12) NULL,
	[HISTO] [varchar](1) NULL,
	[ITXEX] [varchar](1) NULL,
	[REFEX] [varchar](1) NULL,
	[ORDEX] [varchar](1) NULL,
	[ITBLD] [varchar](2) NULL,
	[PREAS] [varchar](2) NULL,
	[FLAG1] [varchar](1) NULL,
	[FLAG2] [varchar](1) NULL,
	[FLAG3] [varchar](1) NULL,
	[FLAG4] [varchar](1) NULL,
	[RESE1] [varchar](2) NULL,
	[RESE2] [varchar](2) NULL,
	[USRTY] [varchar](4) NULL,
	[USRID] [varchar](30) NULL,
	[USRID_LONG] [varchar](241) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAR_PSB_T_CUTI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAR_PSB_T_CUTI](
	[Id_cuti] [int] NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[reason] [nvarchar](382) NULL,
	[kota] [nvarchar](75) NULL,
	[pernr] [nvarchar](12) NULL,
	[nama] [nvarchar](45) NULL,
	[jgpg] [nvarchar](22) NULL,
	[eselon] [nvarchar](7) NULL,
	[jabatan] [nvarchar](150) NULL,
	[uker] [nvarchar](150) NULL,
	[nip] [nvarchar](16) NULL,
	[tmt_masuk] [nvarchar](16) NULL,
	[keterangan] [ntext] NULL,
	[tcb] [numeric](10, 0) NULL,
	[tcb_adjustment] [numeric](10, 0) NULL,
	[pengali_kompensasi] [int] NULL,
	[periode_awal_tahun_lalu] [datetime] NULL,
	[periode_akhir_tahun_lalu] [datetime] NULL,
	[periode_awal_tahun_ini] [datetime] NULL,
	[periode_akhir_tahun_ini] [datetime] NULL,
	[periode_awal_cb] [datetime] NULL,
	[periode_akhir_cb] [datetime] NULL,
	[deduction_lastyear] [int] NULL,
	[deduction_thisyear] [int] NULL,
	[deduction_persekot_ct] [int] NULL,
	[deduction_persekot_cb] [int] NULL,
	[kuota_ct] [int] NULL,
	[kuota_cb] [int] NULL,
	[sisa_ct_before] [int] NULL,
	[sisa_cb_before] [int] NULL,
	[sisa_ct_after] [int] NULL,
	[sisa_cb_after] [int] NULL,
	[tct] [numeric](10, 0) NULL,
	[tct_adjustment] [numeric](10, 0) NULL,
	[req_tct] [int] NULL,
	[subarea] [nvarchar](7) NULL,
	[tipecuti] [nvarchar](3) NULL,
	[checkerid] [nvarchar](150) NULL,
	[signerid] [nvarchar](150) NULL,
	[checked] [nvarchar](16) NULL,
	[signed] [nvarchar](16) NULL,
	[deskripsi_checker] [nvarchar](150) NULL,
	[deskripsi_signer] [nvarchar](150) NULL,
	[checkerComment] [nvarchar](300) NULL,
	[signerComment] [nvarchar](300) NULL,
	[kota_ttd] [nvarchar](150) NULL,
	[branch] [nvarchar](150) NULL,
	[rekeningbeban] [nvarchar](22) NULL,
	[rekeningpekerja] [nvarchar](22) NULL,
	[upahpokok] [numeric](10, 0) NULL,
	[status_book] [nvarchar](15) NULL,
	[message_book] [nvarchar](75) NULL,
	[tanggal_approve_checker] [datetime] NULL,
	[tanggal_approve_signer] [datetime] NULL,
	[tanggal_pembayaran] [datetime] NULL,
	[tanggal_pengajuan] [datetime] NULL,
	[pernr_approver] [ntext] NULL,
	[deskripsi_approver] [ntext] NULL,
	[status_approval] [ntext] NULL,
	[posisi_approver] [nvarchar](15) NULL,
	[date_approver] [datetime] NULL,
	[isactive] [int] NULL,
	[status] [int] NULL,
	[komentar_sdm] [nvarchar](1500) NULL,
	[jenis_pengajuan] [smallint] NULL,
	[list_cuti_disetujui] [ntext] NULL,
	[list_cuti_ditolak] [ntext] NULL,
	[keterangan_penundaan] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[param_absensi]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[param_absensi](
	[ID] [tinyint] NOT NULL,
	[Kode] [nvarchar](50) NOT NULL,
	[Deskripsi] [nvarchar](100) NOT NULL,
	[SORT_ORDER] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARAM_IMPLEMENTOR_HAPPYTEAM]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARAM_IMPLEMENTOR_HAPPYTEAM](
	[nomor_kartu] [nvarchar](50) NULL,
	[user_id] [nvarchar](50) NULL,
	[nama] [nvarchar](100) NULL,
	[logdate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARAM_UKER_DEFINIT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARAM_UKER_DEFINIT](
	[PERNR] [char](8) NULL,
	[ORGEH] [char](8) NULL,
	[UKER] [char](30) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parent menu]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parent menu](
	[id] [tinyint] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[role] [tinyint] NOT NULL,
	[icon] [nvarchar](50) NOT NULL,
	[link] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parent_menu]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parent_menu](
	[id] [tinyint] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[role] [tinyint] NOT NULL,
	[icon] [nvarchar](50) NOT NULL,
	[link] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEGAWAI_OUTSOURCE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEGAWAI_OUTSOURCE](
	[PERNR] [int] NOT NULL,
	[Nama] [nvarchar](50) NOT NULL,
	[Alamat] [nvarchar](1) NULL,
	[No_Telp_HP] [nvarchar](1) NULL,
	[Tempat_Lahir] [nvarchar](1) NULL,
	[Tanggal_Lahir] [nvarchar](1) NULL,
	[Nama_Gadis_Ibu_Kandung] [nvarchar](1) NULL,
	[No_KTP] [nvarchar](1) NULL,
	[No_SK] [nvarchar](1) NULL,
	[Tanggal_SK] [nvarchar](1) NULL,
	[No_PKWT] [nvarchar](1) NULL,
	[Tanggal_PKWT] [nvarchar](1) NULL,
	[TMT_PKWT] [nvarchar](1) NULL,
	[Nomor_Kontrak_Vendor] [nvarchar](1) NULL,
	[Tanggal_Kontrak_Vendor] [nvarchar](1) NULL,
	[Start_Date] [date] NOT NULL,
	[Endda] [date] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Marital_Status] [tinyint] NOT NULL,
	[Vendor] [tinyint] NOT NULL,
	[Unit_Kerja] [smallint] NOT NULL,
	[Religion] [tinyint] NOT NULL,
	[Pendidikan] [nvarchar](1) NULL,
	[Universitas] [nvarchar](1) NULL,
	[Posisi] [tinyint] NOT NULL,
	[NPWP] [nvarchar](1) NULL,
	[no_jamsostek] [nvarchar](1) NULL,
	[NOREK] [nvarchar](1) NULL,
	[tipe_universitas] [nvarchar](1) NULL,
	[flag_jalan] [nvarchar](1) NULL,
	[CREATE_DATE] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PORTALSDM_CUTI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PORTALSDM_CUTI](
	[POSISI] [varchar](8) NULL,
	[PERNR] [varchar](8) NULL,
	[STATUS] [varchar](2) NULL,
	[INSERTDATE] [varchar](8) NULL,
	[POSISI_DT] [datetime] NULL,
	[INSERTDATE_DT] [datetime] NULL,
	[CREATEDATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PORTALSDM_CUTI_TEMP]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PORTALSDM_CUTI_TEMP](
	[POSISI] [varchar](8) NULL,
	[PERNR] [varchar](8) NULL,
	[STATUS] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSISI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSISI](
	[POSISI] [varchar](50) NULL,
	[BULAN] [int] NULL,
	[TAHUN] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSISI_TARIKAN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSISI_TARIKAN](
	[POSISI] [varchar](8000) NULL,
	[TANGGAL] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REKAP_ADM_SDM]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REKAP_ADM_SDM](
	[POSISI] [char](10) NULL,
	[CREATE_DATE] [datetime] NULL,
	[PERNR] [nvarchar](8) NULL,
	[NAMA] [nvarchar](max) NULL,
	[PERUSAHAAN] [nvarchar](max) NULL,
	[TIPE] [nvarchar](10) NULL,
	[BULAN] [int] NULL,
	[TAHUN] [int] NULL,
	[ORGEH] [nvarchar](10) NULL,
	[NAMA_ORGEH] [nvarchar](100) NULL,
	[ORGEH_INDUK] [nvarchar](10) NULL,
	[NAMA_ORGEH_INDUK] [nvarchar](100) NULL,
	[HKJ] [int] NULL,
	[WEEKEND] [int] NULL,
	[LIBUR] [int] NULL,
	[HD] [int] NULL,
	[TM] [int] NULL,
	[CP] [int] NULL,
	[PC] [int] NULL,
	[TK] [int] NULL,
	[ST] [int] NULL,
	[DL] [int] NULL,
	[PJ] [int] NULL,
	[PD] [int] NULL,
	[NA] [int] NULL,
	[SK] [int] NULL,
	[TW] [int] NULL,
	[CT] [int] NULL,
	[CB] [int] NULL,
	[ISS] [int] NULL,
	[IM] [int] NULL,
	[HDD] [int] NULL,
	[PP] [int] NULL,
	[LH] [int] NULL,
	[MD] [int] NULL,
	[PA] [int] NULL,
	[KA] [int] NULL,
	[BA] [int] NULL,
	[PG] [int] NULL,
	[IH] [int] NULL,
	[IP] [int] NULL,
	[KETERANGAN] [nvarchar](max) NULL,
	[NO] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHIFT3]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHIFT3](
	[IDNUM] [varchar](8) NULL,
	[ACCTNO] [varchar](16) NULL,
	[CARDNO] [varchar](17) NULL,
	[SHIFT1_MASUK] [varchar](8) NULL,
	[SHIFT1_PULANG] [varchar](8) NULL,
	[SHIFT2_MASUK] [varchar](8) NULL,
	[SHIFT2_PULANG] [varchar](8) NULL,
	[SHIFT3_MASUK] [varchar](8) NULL,
	[SHIFT3_PULANG] [varchar](8) NULL,
	[Column 1] [varchar](101) NULL,
	[TANGGAL] [varchar](8) NULL,
	[SHIFT1_MASUK_TID] [varchar](8) NULL,
	[SHIFT1_PULANG_TID] [varchar](8) NULL,
	[SHIFT2_MASUK_TID] [varchar](8) NULL,
	[SHIFT2_PULANG_TID] [varchar](8) NULL,
	[SHIFT3_MASUK_TID] [varchar](8) NULL,
	[SHIFT3_PULANG_TID] [varchar](8) NULL,
	[SHIFT1_MASUK_MID] [varchar](15) NULL,
	[SHIFT1_PULANG_MID] [varchar](15) NULL,
	[SHIFT2_MASUK_MID] [varchar](15) NULL,
	[SHIFT2_PULANG_MID] [varchar](15) NULL,
	[SHIFT3_MASUK_MID] [varchar](15) NULL,
	[SHIFT3_PULANG_MID] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIPO_FCT_PEGAWAI_OUTSOURCE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPO_FCT_PEGAWAI_OUTSOURCE](
	[PERNR] [int] NOT NULL,
	[Nama] [nvarchar](100) NULL,
	[Alamat] [nvarchar](100) NULL,
	[No Telp / HP] [nvarchar](100) NULL,
	[Tempat Lahir] [nvarchar](100) NULL,
	[Tanggal Lahir] [nvarchar](50) NULL,
	[Nama Gadis Ibu Kandung] [nvarchar](100) NULL,
	[No KTP] [nvarchar](100) NULL,
	[No SK] [nvarchar](100) NULL,
	[Tanggal SK] [nvarchar](50) NULL,
	[No PKWT] [nvarchar](100) NULL,
	[Tanggal PKWT] [nvarchar](50) NULL,
	[TMT PKWT] [nvarchar](50) NULL,
	[Nomor Kontrak Vendor] [nvarchar](100) NULL,
	[Tanggal Kontrak Vendor] [nvarchar](50) NULL,
	[Start Date] [nvarchar](50) NULL,
	[Endda] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Marital Status] [nvarchar](50) NULL,
	[Vendor] [nvarchar](50) NULL,
	[Unit Kerja] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Pendidikan] [nvarchar](50) NULL,
	[Universitas] [nvarchar](100) NULL,
	[Posisi] [nvarchar](50) NULL,
	[NPWP] [nvarchar](50) NULL,
	[no_jamsostek] [nvarchar](50) NULL,
	[NOREK] [nvarchar](50) NULL,
	[tipe_universitas] [nvarchar](50) NULL,
	[flag_jalan] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIPO_MAPPING_PN_NOREK]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPO_MAPPING_PN_NOREK](
	[PERNR] [int] NULL,
	[NOREK] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIPO_PekerjaOutsource]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPO_PekerjaOutsource](
	[PERNR] [int] NULL,
	[Nama] [nvarchar](100) NULL,
	[Alamat] [nvarchar](100) NULL,
	[Telp] [nvarchar](100) NULL,
	[TempatLahir] [nvarchar](100) NULL,
	[TanggalLahir] [nvarchar](50) NULL,
	[NamaGadisIbuKandung] [nvarchar](100) NULL,
	[NoKTP] [nvarchar](100) NULL,
	[NoSK] [nvarchar](100) NULL,
	[TanggalSK] [nvarchar](50) NULL,
	[NoPKWT] [nvarchar](100) NULL,
	[TanggalPKWT] [nvarchar](50) NULL,
	[TMTPKWT] [nvarchar](50) NULL,
	[NomorKontrakVendor] [nvarchar](100) NULL,
	[TanggalKontrakVendor] [nvarchar](50) NULL,
	[StartDate] [nvarchar](50) NULL,
	[Endda] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[Vendor] [nvarchar](50) NULL,
	[UnitKerja] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Pendidikan] [nvarchar](50) NULL,
	[Universitas] [nvarchar](100) NULL,
	[Posisi] [nvarchar](50) NULL,
	[nama_vendor] [nvarchar](50) NULL,
	[brname] [ntext] NULL,
	[deskripsi] [nvarchar](50) NULL,
	[desc_pendidikan] [varchar](50) NULL,
	[desc_posisi] [varchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIPO_R_POSISI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPO_R_POSISI](
	[KD_POSISI] [varchar](10) NULL,
	[DESC_POSISI] [varchar](50) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIPO_R_VENDOR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPO_R_VENDOR](
	[KD_Vendor] [nvarchar](50) NULL,
	[Nama_Vendor] [nvarchar](50) NULL,
	[Alamat_Vendor] [ntext] NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ACCESS]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ACCESS](
	[ID] [int] NOT NULL,
	[MODULE] [varchar](100) NULL,
	[PARENT_ID] [int] NULL,
	[SOURCE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ACCESS_ROLE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ACCESS_ROLE](
	[ROLE] [nchar](10) NULL,
	[MODULE_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_ALL]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_ALL](
	[posisi] [datetime] NULL,
	[id_cuti] [int] NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[pernr] [nvarchar](12) NULL,
	[nama] [nvarchar](100) NULL,
	[list_cuti_disetujui] [ntext] NULL,
	[req_tct] [int] NULL,
	[status] [int] NULL,
	[signed] [nvarchar](25) NULL,
	[tanggal_approve_signer] [datetime] NULL,
	[posisi_approver] [nvarchar](50) NULL,
	[date_approver] [datetime] NULL,
	[remarkCuti] [varchar](9) NULL,
	[remarkCuti_tx] [ntext] NULL,
	[tipecuti] [nvarchar](3) NULL,
	[tipecuti_tx] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_CLEANED]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_CLEANED](
	[posisi] [datetime] NULL,
	[id_cuti] [int] NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[pernr] [nvarchar](12) NULL,
	[nama] [nvarchar](100) NULL,
	[list_cuti_disetujui] [ntext] NULL,
	[req_tct] [int] NULL,
	[status] [int] NULL,
	[signed] [nvarchar](25) NULL,
	[tanggal_approve_signer] [datetime] NULL,
	[posisi_approver] [nvarchar](50) NULL,
	[date_approver] [datetime] NULL,
	[remarkCuti] [varchar](9) NULL,
	[remarkCuti_tx] [ntext] NULL,
	[tipecuti] [nvarchar](3) NULL,
	[tipecuti_tx] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_GetKeterangan]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_GetKeterangan](
	[id_cuti] [int] NULL,
	[pernr] [nvarchar](12) NULL,
	[nama] [nvarchar](100) NULL,
	[listcuti] [nvarchar](2000) NULL,
	[tipecuti] [nvarchar](3) NULL,
	[tipecuti_tx] [varchar](50) NULL,
	[remarkcuti_tx] [ntext] NULL,
	[posisiCuti] [varchar](8000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_Split]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_Split](
	[pernr] [nvarchar](12) NULL,
	[listcuti] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_SplitPerRow]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_SplitPerRow](
	[pernr] [nvarchar](12) NULL,
	[listcuti] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_CUTI_TEMP_ABSENSI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CUTI_TEMP_ABSENSI](
	[POSISI] [varchar](8) NULL,
	[PERNR] [varchar](8) NULL,
	[NAMA] [varchar](50) NULL,
	[KERJA_MASUK] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI] [varchar](8) NULL,
	[KERJA_PULANG] [varchar](8) NULL,
	[LEMBUR_MASUK] [varchar](8) NULL,
	[LEMBUR_PULANG] [varchar](8) NULL,
	[JADWAL_MASUK] [varchar](8) NULL,
	[JADWAL_PULANG] [varchar](8) NULL,
	[UKER] [varchar](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [varchar](2) NULL,
	[DESKRIPSI] [varchar](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[LEMBUR_MASUK_AWAL] [varchar](8) NULL,
	[LEMBUR_PULANG_AWAL] [varchar](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](8) NULL,
	[ISTIRAHAT_KEMBALI_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](15) NULL,
	[ISTIRAHAT_KEMBALI_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL,
	[LOG_ID] [int] NULL,
	[KERJA_MASUK_AWAL] [varchar](8) NULL,
	[KERJA_PULANG_AWAL] [varchar](8) NULL,
	[STATUS_KERJA_AWAL] [nvarchar](30) NULL,
	[UPDATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SOURCE] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_DATE_SHIFT3] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ERROR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ERROR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ERR_NUMBER] [nvarchar](max) NULL,
	[ERR_MESSAGE] [nvarchar](max) NULL,
	[REMARKS] [nvarchar](max) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[USERNAME] [nvarchar](50) NULL,
	[IP] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ERROR__]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ERROR__](
	[ID] [int] NULL,
	[ERR_NUMBER] [nvarchar](max) NULL,
	[ERR_MESSAGE] [nvarchar](max) NULL,
	[REMARKS] [nvarchar](max) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[USERNAME] [nvarchar](50) NULL,
	[IP] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_EXCEPTION_ACCTNO]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_EXCEPTION_ACCTNO](
	[PERNR] [char](8) NULL,
	[ACCTNO] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LAPORAN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LAPORAN](
	[ID] [int] NULL,
	[ReportName] [nvarchar](100) NULL,
	[ReportServerUrl] [nvarchar](250) NULL,
	[ReportPath] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LEMBUR_OTOMATIS]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LEMBUR_OTOMATIS](
	[PERNR] [char](8) NOT NULL,
	[NAMA] [nvarchar](50) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[CREATE_BY] [nvarchar](50) NULL,
	[SOURCE] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LOG]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATE_DATE] [datetime] NULL,
	[USERNAME] [nvarchar](50) NULL,
	[IP] [nchar](20) NULL,
	[MODULE_ID] [int] NULL,
	[ACTION] [nchar](10) NULL,
	[OLD_VALUE] [nvarchar](max) NULL,
	[NEW_VALUE] [nvarchar](max) NULL,
	[REMARKS] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LOG__]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LOG__](
	[ID] [int] NOT NULL,
	[CREATE_DATE] [datetime] NULL,
	[USERNAME] [nvarchar](50) NULL,
	[IP] [nchar](20) NULL,
	[MODULE_ID] [int] NULL,
	[ACTION] [nchar](10) NULL,
	[OLD_VALUE] [nvarchar](max) NULL,
	[NEW_VALUE] [nvarchar](max) NULL,
	[REMARKS] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_MERCHANT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MERCHANT](
	[TID] [varchar](50) NULL,
	[MID] [varchar](50) NULL,
	[MERCHANT] [varchar](200) NULL,
	[LOCATION] [varchar](200) NULL,
	[EDC_TYPE] [varchar](200) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OUTSOURCE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OUTSOURCE](
	[ID] [int] NOT NULL,
	[NAMA] [nvarchar](50) NULL,
	[PERUSAHAAN] [nvarchar](50) NULL,
	[JABATAN] [nvarchar](50) NULL,
	[ORGEH] [nvarchar](50) NULL,
	[PENEMPATAN] [nvarchar](30) NULL,
	[NO_KARTU] [decimal](18, 0) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OUTSOURCE_ATM]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OUTSOURCE_ATM](
	[CIFNO] [char](7) NULL,
	[ACCTNO] [decimal](19, 0) NULL,
	[CARD_NO] [char](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OUTSOURCE_SIPO]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OUTSOURCE_SIPO](
	[PERNR] [char](8) NULL,
	[ORGEH] [char](8) NULL,
	[UKER] [char](30) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [varchar](50) NULL,
	[CREATE_IP] [varchar](50) NULL,
	[IS_ACTIVE] [int] NULL,
	[DELETE_DATE] [datetime] NULL,
	[DELETE_BY] [varchar](50) NULL,
	[DELETE_IP] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_OUTSOURCE3]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OUTSOURCE3](
	[ID] [int] NOT NULL,
	[NAMA] [nvarchar](50) NULL,
	[PERUSAHAAN] [nvarchar](50) NULL,
	[JABATAN] [nvarchar](50) NULL,
	[ORGEH] [nvarchar](50) NULL,
	[PENEMPATAN] [nvarchar](50) NULL,
	[NO_KARTU] [decimal](18, 0) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_POSISI_MANUAL]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_POSISI_MANUAL](
	[POSISI] [datetime] NULL,
	[POSISI2] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_POSISI_REKAP]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_POSISI_REKAP](
	[BULAN] [int] NULL,
	[TAHUN] [int] NULL,
	[POSISI] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_RAMADHAN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_RAMADHAN](
	[begda] [datetime] NULL,
	[endda] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_REKAP_ABSEN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_REKAP_ABSEN](
	[POSISI] [int] NOT NULL,
	[CREATE_DATE] [datetime2](7) NOT NULL,
	[PERNR] [int] NOT NULL,
	[NAMA] [nvarchar](50) NOT NULL,
	[PERUSAHAAN] [nvarchar](50) NOT NULL,
	[TIPE] [nvarchar](50) NOT NULL,
	[BULAN] [tinyint] NOT NULL,
	[TAHUN] [smallint] NOT NULL,
	[ORGEH] [int] NOT NULL,
	[NAMA_ORGEH] [nvarchar](50) NOT NULL,
	[ORGEH_INDUK] [int] NOT NULL,
	[NAMA_ORGEH_INDUK] [nvarchar](50) NOT NULL,
	[HKJ] [nvarchar](50) NOT NULL,
	[WEEKEND] [tinyint] NOT NULL,
	[LIBUR] [tinyint] NOT NULL,
	[HD] [tinyint] NOT NULL,
	[TM] [tinyint] NOT NULL,
	[CP] [tinyint] NOT NULL,
	[PC] [tinyint] NOT NULL,
	[TK] [tinyint] NOT NULL,
	[ST] [tinyint] NOT NULL,
	[DL] [tinyint] NOT NULL,
	[PJ] [tinyint] NOT NULL,
	[PD] [tinyint] NOT NULL,
	[NA] [tinyint] NOT NULL,
	[SK] [tinyint] NOT NULL,
	[TW] [tinyint] NOT NULL,
	[CT] [tinyint] NOT NULL,
	[CB] [tinyint] NOT NULL,
	[ISS] [tinyint] NOT NULL,
	[IM] [tinyint] NOT NULL,
	[HDD] [tinyint] NOT NULL,
	[PP] [tinyint] NOT NULL,
	[LH] [tinyint] NOT NULL,
	[MD] [tinyint] NOT NULL,
	[PA] [tinyint] NOT NULL,
	[KA] [tinyint] NOT NULL,
	[BA] [tinyint] NOT NULL,
	[PG] [tinyint] NOT NULL,
	[IH] [tinyint] NOT NULL,
	[IP] [tinyint] NOT NULL,
	[KETERANGAN] [nvarchar](50) NOT NULL,
	[NO] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_TANGGAL_UPLOAD_SAP]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TANGGAL_UPLOAD_SAP](
	[DT_UPLOAD_SAP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_TIDAK_MASUK]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TIDAK_MASUK](
	[PERNR] [varchar](8) NOT NULL,
	[NAMA] [varchar](30) NULL,
	[TANGGAL] [varchar](8) NOT NULL,
	[ORGEH] [varchar](8) NULL,
	[KODE] [varchar](2) NULL,
	[DESKRIPSI] [varchar](50) NULL,
	[KETERANGAN] [varchar](40) NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_TRAINING]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TRAINING](
	[PN] [varchar](8) NOT NULL,
	[NAMA] [varchar](30) NULL,
	[KANWIL] [varchar](30) NOT NULL,
	[btext] [varchar](15) NULL,
	[orgtx] [varchar](100) NOT NULL,
	[stltx] [varchar](25) NULL,
	[plstx] [varchar](25) NULL,
	[TGL_LAHIR] [varchar](8) NULL,
	[TEMPAT_LAHIR] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_UPAH]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UPAH](
	[PERNR] [varchar](8) NULL,
	[NAMA] [varchar](30) NULL,
	[GRADE] [varchar](8) NULL,
	[ORGEH] [varchar](8) NULL,
	[GAPOK] [numeric](19, 2) NULL,
	[TJ_PREMIUM] [numeric](17, 2) NULL,
	[UPAH_BULANAN] [numeric](20, 2) NULL,
	[UPAH_LEMBUR_PER_JAM] [numeric](19, 2) NULL,
	[CREATED_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T001P]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T001P](
	[MANDT] [varchar](3) NOT NULL,
	[WERKS] [varchar](4) NOT NULL,
	[BTRTL] [varchar](4) NOT NULL,
	[BTEXT] [varchar](15) NOT NULL,
	[MOLGA] [varchar](2) NOT NULL,
	[MOURA] [varchar](2) NOT NULL,
	[TRFGB] [varchar](2) NOT NULL,
	[TRFAR] [varchar](2) NOT NULL,
	[MOABW] [varchar](2) NOT NULL,
	[MOABT] [varchar](2) NOT NULL,
	[MOTAT] [varchar](2) NOT NULL,
	[MOVER] [varchar](2) NOT NULL,
	[URLKL] [varchar](2) NOT NULL,
	[JUPER] [varchar](4) NOT NULL,
	[MOBDE] [varchar](2) NOT NULL,
	[MOZKO] [varchar](2) NOT NULL,
	[MOPTB] [varchar](2) NOT NULL,
	[WKTYP] [varchar](1) NOT NULL,
	[MOSTA] [varchar](2) NOT NULL,
	[MOBUR] [varchar](2) NOT NULL,
	[MOFID] [varchar](2) NOT NULL,
	[MOSID] [varchar](2) NOT NULL,
	[MODSZ] [varchar](2) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T500P]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T500P](
	[MANDT] [varchar](3) NOT NULL,
	[PERSA] [varchar](4) NOT NULL,
	[MOLGA] [varchar](2) NOT NULL,
	[BUKRS] [varchar](4) NOT NULL,
	[NAME1] [varchar](30) NOT NULL,
	[NAME2] [varchar](30) NOT NULL,
	[STRAS] [varchar](30) NOT NULL,
	[PFACH] [varchar](10) NOT NULL,
	[PSTLZ] [varchar](10) NOT NULL,
	[ORT01] [varchar](25) NOT NULL,
	[LAND1] [varchar](3) NOT NULL,
	[REGIO] [varchar](3) NOT NULL,
	[COUNC] [varchar](3) NOT NULL,
	[CITYC] [varchar](4) NOT NULL,
	[ADRNR] [varchar](10) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T503T]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T503T](
	[MANDT] [varchar](3) NULL,
	[SPRSL] [varchar](1) NULL,
	[PERSK] [varchar](2) NULL,
	[PTEXT] [varchar](20) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T513S]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T513S](
	[MANDT] [varchar](3) NOT NULL,
	[SPRSL] [varchar](1) NOT NULL,
	[STELL] [varchar](8) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[STLTX] [varchar](25) NOT NULL,
	[MAINT] [varchar](1) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T527X]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T527X](
	[MANDT] [varchar](3) NOT NULL,
	[SPRSL] [varchar](1) NOT NULL,
	[ORGEH] [varchar](8) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[ORGTX] [varchar](100) NOT NULL,
	[MAINT] [varchar](1) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T528T]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T528T](
	[MANDT] [varchar](3) NOT NULL,
	[SPRSL] [varchar](1) NOT NULL,
	[OTYPE] [varchar](2) NOT NULL,
	[PLANS] [varchar](8) NOT NULL,
	[ENDDA] [varchar](8) NOT NULL,
	[BEGDA] [varchar](8) NOT NULL,
	[PLSTX] [varchar](25) NOT NULL,
	[MAINT] [varchar](1) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_LEMBUR]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_LEMBUR](
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](30) NULL,
	[LEMBUR_MASUK] [char](9) NULL,
	[LEMBUR_PULANG] [char](11) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[LEMBUR_MASUK_AWAL] [char](9) NULL,
	[LEMBUR_PULANG_AWAL] [char](11) NULL,
	[LEMBUR_MASUK_TID] [varchar](8) NULL,
	[LEMBUR_PULANG_TID] [varchar](8) NULL,
	[LEMBUR_MASUK_MID] [varchar](15) NULL,
	[LEMBUR_PULANG_MID] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_SHIFT]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_SHIFT](
	[IDNUM] [bigint] NULL,
	[IDGEN] [bigint] NOT NULL,
	[POSISI] [char](8) NULL,
	[PERNR] [char](8) NULL,
	[NAMA] [char](30) NULL,
	[SHIFT1_MASUK] [char](8) NULL,
	[SHIFT1_PULANG] [char](8) NULL,
	[SHIFT2_MASUK] [char](8) NULL,
	[SHIFT2_PULANG] [char](8) NULL,
	[SHIFT3_MASUK] [char](8) NULL,
	[SHIFT3_PULANG] [char](8) NULL,
	[JADWAL_SHIFT1_MASUK] [char](8) NULL,
	[JADWAL_SHIFT1_PULANG] [char](8) NULL,
	[JADWAL_SHIFT2_MASUK] [char](8) NULL,
	[JADWAL_SHIFT2_PULANG] [char](8) NULL,
	[JADWAL_SHIFT3_MASUK] [char](8) NULL,
	[JADWAL_SHIFT3_PULANG] [char](8) NULL,
	[UKER] [char](30) NULL,
	[ORGEH] [varchar](8) NULL,
	[KOREKSI] [int] NULL,
	[KODE] [char](2) NULL,
	[DESKRIPSI] [char](50) NULL,
	[ACCTNO] [varchar](15) NULL,
	[CARDNO] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEXTFILE_PROSW]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEXTFILE_PROSW](
	[POSISI] [nvarchar](8) NULL,
	[KERJA_DATANG] [varchar](9) NULL,
	[ISTIRAHAT_KELUAR] [varchar](9) NULL,
	[ISTIRAHAT_MASUK] [varchar](9) NULL,
	[KERJA_PULANG] [varchar](9) NULL,
	[LEMBUR_DATANG] [varchar](9) NULL,
	[LEMBUR_PULANG] [varchar](9) NULL,
	[BANK_ACCOUNT] [varchar](16) NULL,
	[CARD_NUMBER] [varchar](17) NULL,
	[KERJA_DATANG_TID] [varchar](9) NULL,
	[LEMBUR_DATANG_TID] [varchar](9) NULL,
	[LEMBUR_PULANG_TID] [varchar](9) NULL,
	[LEMBUR_PULANG_MID] [varchar](16) NULL,
	[PERNR] [varchar](9) NULL,
	[ISTIRAHAT_KELUAR_TID] [varchar](9) NULL,
	[ISTIRAHAT_MASUK_TID] [varchar](9) NULL,
	[KERJA_PULANG_MID] [varchar](16) NULL,
	[ISTIRAHAT_KELUAR_MID] [varchar](16) NULL,
	[ISTIRAHAT_MASUK_MID] [varchar](16) NULL,
	[RUNNING_NUMBER] [varchar](9) NULL,
	[COLUMN_1] [varchar](11) NULL,
	[NAME] [varchar](26) NULL,
	[SHIFT_1_DATANG] [varchar](9) NULL,
	[SHIFT_1_PULANG] [varchar](9) NULL,
	[SHIFT_2_DATANG] [varchar](9) NULL,
	[SHIFT_2_PULANG] [varchar](9) NULL,
	[SHIFT_3_DATANG] [varchar](9) NULL,
	[SHIFT_3_PULANG] [varchar](9) NULL,
	[SHIFT_1_DATANG_TID] [varchar](9) NULL,
	[SHIFT_1_PULANG_TID] [varchar](9) NULL,
	[SHIFT_2_DATANG_TID] [varchar](9) NULL,
	[SHIFT_2_PULANG_TID] [varchar](9) NULL,
	[SHIFT_3_DATANG_TID] [varchar](9) NULL,
	[SHIFT_3_PULANG_TID] [varchar](9) NULL,
	[KERJA_DATANG_MID] [varchar](16) NULL,
	[LEMBUR_DATANG_MID] [varchar](16) NULL,
	[SHIFT_1_DATANG_MID] [varchar](16) NULL,
	[SHIFT_1_PULANG_MID] [varchar](16) NULL,
	[SHIFT_2_DATANG_MID] [varchar](16) NULL,
	[SHIFT_2_PULANG_MID] [varchar](16) NULL,
	[SHIFT_3_DATANG_MID] [varchar](16) NULL,
	[SHIFT_3_PULANG_MID] [varchar](17) NULL,
	[KERJA_PULANG_TID] [varchar](9) NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIDDWH]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIDDWH](
	[TerminalID] [varchar](50) NULL,
	[MerchantID] [varchar](50) NULL,
	[Keterangan] [varchar](500) NULL,
	[txseqnum] [varchar](50) NULL,
	[lasttrans] [varchar](50) NULL,
	[Termsettle 1 ] [varchar](50) NULL,
	[Termsettle 2 ] [varchar](50) NULL,
	[Termsettle 3 ] [varchar](50) NULL,
	[Termsettle 4 ] [varchar](50) NULL,
	[Termsettle 5 ] [varchar](50) NULL,
	[TermAmount 1 ] [varchar](50) NULL,
	[TermAmount 2 ] [varchar](50) NULL,
	[TermAmount 3 ] [varchar](50) NULL,
	[TermAmount 4 ] [varchar](50) NULL,
	[TermAmount 5 ] [varchar](50) NULL,
	[TermTrans 1 ] [varchar](50) NULL,
	[TermTrans 2 ] [varchar](50) NULL,
	[TermTrans 3 ] [varchar](50) NULL,
	[TermTrans 4 ] [varchar](50) NULL,
	[TermTrans 5 ] [varchar](50) NULL,
	[timeSettle 1 ] [varchar](50) NULL,
	[timeSettle 2 ] [varchar](50) NULL,
	[timeSettle 3 ] [varchar](50) NULL,
	[timeSettle 4 ] [varchar](50) NULL,
	[timeSettle 5 lastloginuser] [varchar](50) NULL,
	[LastLoginDate] [varchar](50) NULL,
	[LastLoginTime] [varchar](50) NULL,
	[TerminalName] [varchar](50) NULL,
	[TerminalTlp] [varchar](500) NULL,
	[CreateDate] [varchar](50) NULL,
	[LastUpdate] [varchar](50) NULL,
	[Merk-Type] [varchar](500) NULL,
	[ TermHost] [varchar](50) NULL,
	[amountcre 1 ] [varchar](50) NULL,
	[amountcre 2 ] [varchar](50) NULL,
	[amountcre 3 ] [varchar](50) NULL,
	[amountcre 4 ] [varchar](50) NULL,
	[amountcre 5 ] [varchar](50) NULL,
	[batchno 1 ] [varchar](50) NULL,
	[batchno 2 ] [varchar](50) NULL,
	[batchno 3 ] [varchar](50) NULL,
	[batchno 4 ] [varchar](50) NULL,
	[batchno 5 ] [varchar](50) NULL,
	[amountdeb 1 ] [varchar](50) NULL,
	[amountdeb 2 ] [varchar](50) NULL,
	[amountdeb 3 ] [varchar](50) NULL,
	[amountdeb 4 ] [varchar](50) NULL,
	[amountdeb 5 ] [varchar](50) NULL,
	[countdeb 1 ] [varchar](50) NULL,
	[countdeb 2 ] [varchar](50) NULL,
	[countdeb 3 ] [varchar](50) NULL,
	[countdeb 4 ] [varchar](50) NULL,
	[countdeb 5 ] [varchar](50) NULL,
	[countercre 1 ] [varchar](50) NULL,
	[countercre 2 ] [varchar](50) NULL,
	[countercre 3 ] [varchar](50) NULL,
	[countercre 4 ] [varchar](50) NULL,
	[countercre 5 ] [varchar](50) NULL,
	[settleID 1 ] [varchar](50) NULL,
	[settleID 2 ] [varchar](50) NULL,
	[settleID 3 ] [varchar](50) NULL,
	[settleID 4 ] [varchar](50) NULL,
	[settleID 5 ] [varchar](50) NULL,
	[amountNet 1 ] [varchar](50) NULL,
	[amountNet 2 ] [varchar](50) NULL,
	[amountNet 3 ] [varchar](50) NULL,
	[amountNet 4 ] [varchar](50) NULL,
	[amountNet 5 ] [varchar](50) NULL,
	[mkey] [varchar](50) NULL,
	[wkey] [varchar](50) NULL,
	[wkdate] [varchar](50) NULL,
	[wktime] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMP_ABSENSI_BACKDATE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_ABSENSI_BACKDATE](
	[Running number (0)] [varchar](9) NULL,
	[Column 1 (1)] [varchar](11) NULL,
	[Personal number (unused) (2)] [varchar](9) NULL,
	[Name (3)] [varchar](26) NULL,
	[Kerja datang (4)] [varchar](9) NULL,
	[Istirahat keluar (5)] [varchar](9) NULL,
	[Istirahat masuk (6)] [varchar](9) NULL,
	[Kerja pulang (7)] [varchar](9) NULL,
	[Lembur datang (8)] [varchar](9) NULL,
	[Lembur pulang (9)] [varchar](9) NULL,
	[Bank account (10)] [varchar](16) NULL,
	[Card number (11)] [varchar](17) NULL,
	[Shift 1 datang (12)] [varchar](9) NULL,
	[Shift 1 pulang (13)] [varchar](9) NULL,
	[Shift 2 datang (14)] [varchar](9) NULL,
	[Shift 2 pulang (15)] [varchar](9) NULL,
	[Shift 3 datang (16)] [varchar](9) NULL,
	[Shift 3 pulang (17)] [varchar](9) NULL,
	[Kerja datang TID (18)] [varchar](9) NULL,
	[Kerja pulang TID (19)] [varchar](9) NULL,
	[Istirahat keluar TID (20)] [varchar](9) NULL,
	[Istirahat masuk TID (21)] [varchar](9) NULL,
	[Lembur datang TID (22)] [varchar](9) NULL,
	[Lembur pulang TID (23)] [varchar](9) NULL,
	[Shift 1 datang TID (24)] [varchar](9) NULL,
	[Shift 1 pulang TID (25)] [varchar](9) NULL,
	[Shift 2 datang TID (26)] [varchar](9) NULL,
	[Shift 2 pulang TID (27)] [varchar](9) NULL,
	[Shift 3 datang TID (28)] [varchar](9) NULL,
	[Shift 3 pulang TID (29)] [varchar](9) NULL,
	[Kerja datang MID (30)] [varchar](16) NULL,
	[Kerja pulang MID (31)] [varchar](16) NULL,
	[Istirahat keluar MID (32)] [varchar](16) NULL,
	[Istirahat masuk MID (33)] [varchar](16) NULL,
	[Lembur datang MID (34)] [varchar](16) NULL,
	[Lembur pulang MID (35)] [varchar](16) NULL,
	[Shift 1 datang MID (36)] [varchar](16) NULL,
	[Shift 1 pulang MID (37)] [varchar](16) NULL,
	[Shift 2 datang MID (38)] [varchar](16) NULL,
	[Shift 2 pulang MID (39)] [varchar](16) NULL,
	[Shift 3 datang  MID (40)] [varchar](16) NULL,
	[Shift 3 pulang MID (41)] [varchar](17) NULL,
	[CRLF] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TUSER]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUSER](
	[Personid] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](20) NULL,
	[passwd] [varchar](191) NULL,
	[uker] [varchar](10) NULL,
	[ket_uker] [varchar](100) NULL,
	[role] [varchar](50) NULL,
	[manual_shift] [int] NULL,
	[reset_date] [datetime] NULL,
	[CREATE_DATE] [datetime] NULL,
	[CREATE_BY] [nvarchar](50) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[LAST_LOGIN] [datetime] NULL,
	[IP] [nvarchar](50) NULL,
	[UPDATE_DATE_SYSTEM] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBBNoKartuOutsource]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBBNoKartuOutsource](
	[NO_KARTU] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBBNorekOutSource]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBBNorekOutSource](
	[NO_KARTU] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[update_shift3]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[update_shift3](
	[posisi] [char](8) NULL,
	[pernr] [char](8) NULL,
	[KERJA_MASUK] [char](8) NULL,
	[KERJA_PULANG] [char](8) NULL,
	[KERJA_MASUK_TID] [varchar](8) NULL,
	[KERJA_PULANG_TID] [varchar](8) NULL,
	[KERJA_MASUK_MID] [varchar](15) NULL,
	[KERJA_PULANG_MID] [varchar](15) NULL,
	[source] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZBRCODEMAP2]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZBRCODEMAP2](
	[MANDT] [varchar](3) NOT NULL,
	[WERKS] [varchar](4) NOT NULL,
	[BTRTL] [varchar](4) NOT NULL,
	[KOSTL] [varchar](10) NOT NULL,
	[BRCODEBRI] [varchar](5) NOT NULL,
	[BRCODEOLB] [varchar](4) NOT NULL,
	[TYPE] [varchar](1) NOT NULL,
	[CREATE_DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZSDMDT_GRADE]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZSDMDT_GRADE](
	[MANDT] [varchar](3) NULL,
	[BTRTL] [varchar](4) NULL,
	[ZONES] [varchar](2) NULL,
	[GRADE] [varchar](8) NULL,
	[ENDDA] [varchar](8) NULL,
	[BEGDA] [varchar](8) NULL,
	[WAERS] [varchar](5) NULL,
	[AMONT] [numeric](13, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [password_resets_email_index]    Script Date: 8/23/2019 11:06:10 AM ******/
CREATE NONCLUSTERED INDEX [password_resets_email_index] ON [dbo].[password_resets]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [password_resets_token_index]    Script Date: 8/23/2019 11:06:10 AM ******/
CREATE NONCLUSTERED INDEX [password_resets_token_index] ON [dbo].[password_resets]
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_ABSENSI_DETAIL]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REPORT_ABSENSI_DETAIL]	
@pROLE INT,
@pTypePosisi INT,
@pKode VARCHAR(10),
@pORGEH VARCHAR(50),
@pORGEH_INDUK VARCHAR(50),
@pPOSISI VARCHAR(500)
AS
DECLARE @JAM INT
DECLARE @pTIMEZONE VARCHAR(10)
DECLARE @CEK_TABLE INT
DECLARE @STR_TABLE VARCHAR(20)
DECLARE @STR_ROLE VARCHAR(100)
DECLARE @STR_POSISI VARCHAR(100)
DECLARE @STR VARCHAR(1000)


BEGIN

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	
	SET @pTIMEZONE = 'WIB';
	
	SELECT @pTIMEZONE= ISNULL(RTRIM(LTRIM(TIMEZONE)),'WIB') FROM dbo.JADWAL_SHIFT WHERE ORGEH = @pORGEH

	--SELECT RTRIM(LTRIM(TIMEZONE)) FROM dbo.JADWAL_SHIFT WHERE ORGEH = '50340677'
	IF @pTIMEZONE = 'WITA'
	BEGIN --UNTUK WITA MAKA TAMBAHKAN 1 JAM
		SET @JAM = 1;
	END
	ELSE IF @pTIMEZONE = 'WIT'
	BEGIN
		SET @JAM = 2;
	END
	ELSE 
	BEGIN
		SET @JAM = 0;
	END 	


	SET @STR_TABLE = 'ABSENSI';
	--CEK TIPE PERIODE
	IF @pTypePosisi = 1
	BEGIN
		--BULANAN
		SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE RIGHT(POSISI,6) = @pPOSISI
		IF @CEK_TABLE = 0 
		BEGIN
			SET @STR_TABLE = @STR_TABLE + '_' + RIGHT(@pPOSISI,4)+LEFT(@pPOSISI, 2)
			SET @STR_POSISI = ' AND RIGHT(POSISI,6)='+@pPOSISI
		END
	END
	ELSE IF @pTypePosisi = 2
	BEGIN
		--HARIAN
		SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE POSISI = @pPOSISI
		IF @CEK_TABLE = 0 
		BEGIN
			SET @STR_TABLE = @STR_TABLE + '_' + RIGHT(@pPOSISI,4)+SUBSTRING(@pPOSISI,3, 2)
			SET @STR_POSISI = ' AND POSISI ='+@pPOSISI
		END
	END

	--CEK ROLE
	IF @pROLE = 1
	BEGIN
		--ADMIN
		SET @STR_ROLE = ' WHERE ORGEH='+@pORGEH
	END
	ELSE IF @pROLE = 2
	BEGIN
		--DIV
		SET @STR_ROLE = ' INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH WHERE D.ORGEH_INDUK='+ @pORGEH 
	END

	IF @pKode = 'CP'
	BEGIN
		--CEPAT PULANG, ADMIN, BULANAN
		SET @STR = ' SELECT distinct KODE'+
		  ' ,POSISI'+
		  ' ,TANGGAL'+
		  ' , ORGEH'+
		  ' ,UKER'+
		  ' ,PERNR'+
		  ' ,NAMA'+
		  ' ,MASUK_KERJA AS MASUK_KERJA_OLD,'+
			' CASE '+
			' WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 '+
			' THEN CONVERT(VARCHAR,'+
			' DATEADD(hh,'+@JAM+','+
				' CONVERT(DATETIME,'+
					' CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)'+
				' )'+
			' ,8)  + '' '' + '+@pTIMEZONE+' '+
			' ELSE MASUK_KERJA  + '' '' +  '' '' + '+@pTIMEZONE+' END AS MASUK_KERJA, '+
		  ' PULANG_KERJA AS PULANG_KERJA_OLD,'+
			' CASE '+
			' WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 '+
			' THEN CONVERT(VARCHAR,'+
			' DATEADD(hh,'+@JAM+','+
				' CONVERT(DATETIME,'+
					' CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)'+
				' )'+
			' ,8)  + '' '' + '+@pTIMEZONE+' '+
			' ELSE PULANG_KERJA + '' '' + '+@pTIMEZONE+' END AS PULANG_KERJA,'+
			' --untuk edc'+
			' ISNULL(CASE '+
			' WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 '+
			' THEN CONVERT(VARCHAR,'+
			' DATEADD(hh,'+@JAM+','+
				' CONVERT(DATETIME,'+
					' CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)'+
				' )'+
			' ,8)  + '' '' + '+@pTIMEZONE+' '+
			' ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '+@pTIMEZONE+' END, ''-'')AS MASUK_KERJA_EDC, '+
			' ISNULL(CASE '+
			' WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 '+
			' THEN CONVERT(VARCHAR,'+
			' DATEADD(hh,'+@JAM+','+
				' CONVERT(DATETIME,'+
					' CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)'+
				' )'+
			' ,8)  + '' '' + '+@pTIMEZONE+' '+
			' ELSE PULANG_KERJA_EDC + '' '' + '+@pTIMEZONE+' END,''-'') AS PULANG_KERJA_EDC'+
		  ' ,KET'+
		  ' ,REMARK'+
		  ' ,INFO'+
		  ' ,LOKASI_ABSEN_MASUK'+
		  ' ,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID'+
		' FROM '+
		' ('+
		' SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, RIGHT(LEFT(A.POSISI, 4), 2) + ''/'' + LEFT(A.POSISI, 2) + ''/'' + RIGHT(A.POSISI, 4)) AS TANGGAL, A.ORGEH, '+
							  ' A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, '+
							  ' A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, ''CEPAT PULANG'' AS KET, '+
							  ' A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(m1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(m2.LOCATION, ''-'') '+
							  ' AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) '+
							  ' END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) '+
							  ' END AS KERJA_PULANG_MID, A.UPDATE_DATE, A.UPDATE_BY'+
		' FROM         '+@STR_TABLE+' AS A LEFT OUTER JOIN'+
							  ' dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND m1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN'+
							  ' dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND m2.MID = ISNULL(A.KERJA_PULANG_MID, '''')'+
		' WHERE     (A.JADWAL_PULANG > A.KERJA_PULANG) AND (A.KERJA_PULANG <> ''00:00:00'')'+
		' ) A'+ @STR_ROLE+ @STR_POSISI +
		' ORDER BY ORGEH, TANGGAL ,PERNR,POSISI'
	END
	ELSE IF @pKode = 'TM'
	BEGIN
		-- Terlambat Masuk
		--TERLAMBAT MASUK, ADMIN, BULANAN
		SELECT distinct KODE
			  ,POSISI
			  ,TANGGAL
			  ,ORGEH
			  ,UKER
			  ,PERNR
			  ,NAMA
			  ,MASUK_KERJA AS MASUK_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE MASUK_KERJA  + ' ' + @pTIMEZONE END AS MASUK_KERJA, 
			  PULANG_KERJA AS PULANG_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE PULANG_KERJA + ' ' + @pTIMEZONE END AS PULANG_KERJA,
				--untuk edc
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
			  ,KET
			  ,REMARK
			  ,INFO
			  ,LOKASI_ABSEN_MASUK
			  ,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID FROM 
				(
				SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, RIGHT(LEFT(A.POSISI, 4), 2) + '/' + LEFT(A.POSISI, 2) + '/' + RIGHT(A.POSISI, 4)) AS TANGGAL, A.ORGEH, 
									  A.ORGEH + ' - ' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
									  'TERLAMBAT MASUK' AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(m1.LOCATION, '-') AS LOKASI_ABSEN_MASUK, 
									  ISNULL(m2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
									  A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
				FROM         dbo.ABSENSI AS A LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.KERJA_MASUK_TID, '') AND m1.MID = ISNULL(A.KERJA_MASUK_MID, '') LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.KERJA_PULANG_TID, '') AND m2.MID = ISNULL(A.KERJA_PULANG_MID, '')
				WHERE     (LEFT(A.JADWAL_MASUK, 5) < LEFT(A.KERJA_MASUK, 5)) AND (A.KERJA_MASUK <> '00:00:00')
				) A

			WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI
			ORDER BY ORGEH, TANGGAL,PERNR,POSISI
	END 
	ELSE IF @pKode = 'TAP'
	BEGIN
	-- Tidak Absen Pulang
		SELECT distinct KODE
			  ,POSISI
			  ,TANGGAL
			  ,ORGEH
			  ,UKER
			  ,PERNR
			  ,NAMA
			  ,MASUK_KERJA AS MASUK_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE
				ELSE MASUK_KERJA  + ' ' + @pTIMEZONE END AS MASUK_KERJA, 
			  PULANG_KERJA AS PULANG_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE
				ELSE PULANG_KERJA + ' ' + @pTIMEZONE END AS PULANG_KERJA,
				--untuk edc
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
			  ,KET
			  ,REMARK
			  ,INFO
			  ,LOKASI_ABSEN_MASUK
			  ,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID FROM 
				(
				SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, RIGHT(LEFT(A.POSISI, 4), 2) + '/' + LEFT(A.POSISI, 2) + '/' + RIGHT(A.POSISI, 4)) AS TANGGAL, A.ORGEH, 
									  A.ORGEH + ' - ' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
									  'TIDAK ABSEN PULANG' AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(m1.LOCATION, '-') AS LOKASI_ABSEN_MASUK, 
									  ISNULL(m2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
									  A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
				FROM         dbo.ABSENSI AS A LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.KERJA_MASUK_TID, '') AND m1.MID = ISNULL(A.KERJA_MASUK_MID, '') LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.KERJA_PULANG_TID, '') AND m2.MID = ISNULL(A.KERJA_PULANG_MID, '')
				WHERE     (A.KERJA_PULANG = '00:00:00') AND (A.KERJA_MASUK <> '00:00:00')
				)A
			WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI
			ORDER BY ORGEH,  TANGGAL,PERNR,POSISI
	END 
	ELSE IF @pKode = 'TAM'
	BEGIN
	-- Tidak Masuk Kerja
		SELECT distinct KODE
			  ,POSISI
			  ,TANGGAL
			  ,ORGEH
			  ,UKER
			  ,PERNR
			  ,NAMA
			  ,MASUK_KERJA AS MASUK_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE
				ELSE MASUK_KERJA  + ' ' + @pTIMEZONE END AS MASUK_KERJA, 
			  PULANG_KERJA AS PULANG_KERJA_OLD,
				CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
					)
				,8)  + ' ' + @pTIMEZONE
				ELSE PULANG_KERJA + ' ' + @pTIMEZONE END AS PULANG_KERJA,
				--untuk edc
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
				ISNULL(CASE 
				WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
				THEN CONVERT(VARCHAR,
				DATEADD(hh,@JAM,
					CONVERT(DATETIME,
						CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
					)
				,8)  + ' ' + @pTIMEZONE 
				ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
			  ,KET
			  ,REMARK
			  ,INFO
			  ,LOKASI_ABSEN_MASUK
			  ,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID FROM 
				(
				SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, RIGHT(LEFT(A.POSISI, 4), 2) + '/' + LEFT(A.POSISI, 2) + '/' + RIGHT(A.POSISI, 4)) AS TANGGAL, A.ORGEH, 
									  A.ORGEH + ' - ' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
									  'TIDAK MASUK KERJA' AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(m1.LOCATION, '-') AS LOKASI_ABSEN_MASUK, 
									  ISNULL(m2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '') 
									  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
									  A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
				FROM         dbo.ABSENSI AS A LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.KERJA_MASUK_TID, '') AND m1.MID = ISNULL(A.KERJA_MASUK_MID, '') LEFT OUTER JOIN
									  dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.KERJA_PULANG_TID, '') AND m2.MID = ISNULL(A.KERJA_PULANG_MID, '')
				WHERE     (A.KERJA_MASUK = '00:00:00')
				)A
			WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI
			ORDER BY ORGEH,  TANGGAL,PERNR,POSISI
	END 
	ELSE IF @pKode = 'LMBR'
	BEGIN
		-- Lembur
SELECT distinct 
		  POSISI
		  ,TANGGAL
		  ,ORGEH
		  ,UKER
		  ,PERNR
		  ,NAMA
		  ,MASUK_KERJA AS MASUK_KERJA_OLD,
			CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
				)
			,8)  + ' ' + @pTIMEZONE
			ELSE MASUK_KERJA  + ' ' + @pTIMEZONE END AS MASUK_KERJA, 
		  PULANG_KERJA AS PULANG_KERJA_OLD,
			CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
				)
			,8)  + ' ' + @pTIMEZONE
			ELSE PULANG_KERJA + ' ' + @pTIMEZONE END AS PULANG_KERJA,
			--untuk edc
			ISNULL(CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
				)
			,8)  + ' ' + @pTIMEZONE 
			ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
			ISNULL(CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
				)
			,8)  + ' ' + @pTIMEZONE 
			ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
		  ,KET
		  ,REMARK
		  ,INFO
		  ,LOKASI_ABSEN_MASUK
		  ,LOKASI_ABSEN_PULANG,LEMBUR_MASUK_MID AS KERJA_MASUK_MID,
			LEMBUR_PULANG_MID AS KERJA_PULANG_MID FROM 
			(
			SELECT     'C' AS A, POSISI, CONVERT(DATETIME, RIGHT(LEFT(POSISI, 4), 2) + '/' + LEFT(POSISI, 2) + '/' + RIGHT(POSISI, 4)) AS TANGGAL, ORGEH, 
								  ORGEH + ' - ' + UKER AS UKER, PERNR, NAMA, LEMBUR_MASUK AS MASUK_KERJA, LEMBUR_PULANG AS PULANG_KERJA, 'LEMBUR' AS KET, 
								  '' AS REMARK, KETERANGAN AS INFO, LEMBUR_MASUK_TID, /*LEMBUR_MASUK_MID, */ LEMBUR_PULANG_TID, 
								  /*LEMBUR_PULANG_MID, */ ISNULL(m1.LOCATION, '-') AS LOKASI_ABSEN_MASUK, ISNULL(m2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, 
								  1 AS KOREKSI, CASE ISNULL(A.LEMBUR_MASUK_MID, '') WHEN '' THEN '' ELSE SUBSTRING(A.LEMBUR_MASUK_MID, 8, 4) 
								  END AS LEMBUR_MASUK_MID, CASE ISNULL(A.LEMBUR_PULANG_MID, '') WHEN '' THEN '' ELSE SUBSTRING(A.LEMBUR_PULANG_MID, 8, 4) 
								  END AS LEMBUR_PULANG_MID, A.lembur_MASUK_AWAL AS MASUK_KERJA_EDC, A.lembur_PULANG_AWAL AS PULANG_KERJA_EDC, 
								  UPDATE_DATE, UPDATE_BY
			FROM         dbo.Absensi_Lembur AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.LEMBUR_MASUK_TID, '') AND m1.MID = ISNULL(A.LEMBUR_MASUK_MID, '') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.LEMBUR_PULANG_TID, '') AND m2.MID = ISNULL(A.LEMBUR_PULANG_MID, '')
			UNION
			SELECT     'C' AS A, POSISI, CONVERT(DATETIME, RIGHT(LEFT(POSISI, 4), 2) + '/' + LEFT(POSISI, 2) + '/' + RIGHT(POSISI, 4)) AS TANGGAL, ORGEH, 
								  ORGEH + ' - ' + UKER AS UKER, PERNR, NAMA, LEMBUR_MASUK AS MASUK_KERJA, LEMBUR_PULANG AS PULANG_KERJA, 'LEMBUR' AS KET, 
								  '' AS REMARK, KETERANGAN AS INFO, LEMBUR_MASUK_TID, /*LEMBUR_MASUK_MID, */ LEMBUR_PULANG_TID, 
								  /*LEMBUR_PULANG_MID, */ ISNULL(m1.LOCATION, '-') AS LOKASI_ABSEN_MASUK, ISNULL(m2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, KOREKSI, 
								  CASE ISNULL(A.LEMBUR_MASUK_MID, '') WHEN '' THEN '' ELSE SUBSTRING(A.LEMBUR_MASUK_MID, 8, 4) END AS LEMBUR_MASUK_MID, 
								  CASE ISNULL(A.LEMBUR_PULANG_MID, '') WHEN '' THEN '' ELSE SUBSTRING(A.LEMBUR_PULANG_MID, 8, 4) END AS LEMBUR_PULANG_MID, 
								  A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, UPDATE_DATE, UPDATE_BY
			FROM         dbo.Absensi AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS m1 ON m1.TID = ISNULL(A.KERJA_MASUK_TID, '') AND m1.MID = ISNULL(A.KERJA_MASUK_MID, '') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS m2 ON m2.TID = ISNULL(A.KERJA_PULANG_TID, '') AND m2.MID = ISNULL(A.KERJA_PULANG_MID, '')
			WHERE     (LEMBUR_MASUK <> '00:00:00')
			)A
		WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI
		ORDER BY ORGEH,  PERNR,TANGGAL,POSISI
	END 
	ELSE IF @pKode = 'ALL'
	BEGIN
	-- smuanya 
	SELECT DISTINCT KODE
		  ,POSISI
		  ,TANGGAL
		  ,ORGEH
		  ,UKER
		  ,PERNR
		  ,NAMA
		  ,MASUK_KERJA AS MASUK_KERJA_OLD,
			CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
				)
			,8)  + ' ' + @pTIMEZONE
			ELSE MASUK_KERJA  + ' ' + @pTIMEZONE END AS MASUK_KERJA, 
		  PULANG_KERJA AS PULANG_KERJA_OLD,
			CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
				)
			,8)  + ' ' + @pTIMEZONE
			ELSE PULANG_KERJA + ' ' + @pTIMEZONE END AS PULANG_KERJA,
			--untuk edc
			ISNULL(CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
				)
			,8)  + ' ' + @pTIMEZONE 
			ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
			ISNULL(CASE 
			WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
			THEN CONVERT(VARCHAR,
			DATEADD(hh,@JAM,
				CONVERT(DATETIME,
					CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
				)
			,8)  + ' ' + @pTIMEZONE 
			ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
		  ,KET
		  ,REMARK
		  ,INFO
		  ,LOKASI_ABSEN_MASUK
		  ,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID FROM 
			(
			SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, RIGHT(LEFT(A.POSISI, 4), 2) + '/' + LEFT(A.POSISI, 2) + '/' + RIGHT(A.POSISI, 4)) AS TANGGAL, A.ORGEH, 
								  A.ORGEH + ' - ' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
								  (CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
								  KERJA_PULANG <> '00:00:00' THEN 'CEPAT PULANG' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
								  KERJA_MASUK <> '00:00:00' THEN 'TERLAMBAT MASUK' WHEN KERJA_MASUK = '00:00:00' THEN 'TIDAK MASUK KERJA' WHEN KERJA_PULANG = '00:00:00'
								   THEN 'TIDAK ABSEN PULANG' ELSE '-' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, '-') 
								  AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, '-') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '') 
								  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '') 
								  WHEN '' THEN '' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
								  A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
			FROM         dbo.ABSENSI AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '')
			)A
		WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI
		ORDER BY ORGEH,  TANGGAL,PERNR,POSISI
	END 
END

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_ABSENSI_DETAIL2]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REPORT_ABSENSI_DETAIL2]	
@pROLE INT,
@pTypePosisi INT,
@pKode VARCHAR(10),
@pORGEH VARCHAR(50),
@pORGEH_INDUK VARCHAR(50),
@pPOSISI VARCHAR(500)
AS
DECLARE @JAM VARCHAR(2)
DECLARE @pTIMEZONE VARCHAR(10)
DECLARE @STR_TABLE VARCHAR(20)
DECLARE @STR_ROLE VARCHAR(100)
DECLARE @STR_POSISI VARCHAR(100)
DECLARE @CEK_TABLE INT
DECLARE @STR VARCHAR(8000)
DECLARE @POSISI VARCHAR(10)
DECLARE @TMP TABLE (
	JADWAL_KERJA_MASUK VARCHAR(50) NULL,
	JADWAL_KERJA_PULANG VARCHAR(50) NULL,
	KODE CHAR(2) NULL,
	POSISI CHAR(10) NULL,
	TANGGAL DATETIME NULL,
	ORGEH VARCHAR(50) NULL,
	UKER VARCHAR(151) NULL,
	PERNR CHAR(8) NULL,
	NAMA VARCHAR(100) NULL,
	MASUK_KERJA_OLD CHAR(8) NULL,
	MASUK_KERJA CHAR(8) NULL,
	PULANG_KERJA_OLD CHAR(8) NULL,
	PULANG_KERJA CHAR(8) NULL,
	MASUK_KERJA_EDC CHAR(8) NULL,
	PULANG_KERJA_EDC CHAR(8) NULL,
	KET VARCHAR(100) NULL,
	REMARK CHAR(50) NULL,
	INFO VARCHAR(40) NULL,
	LOKASI_ABSEN_MASUK VARCHAR(201) NULL,
	LOKASI_ABSEN_PULANG VARCHAR(201) NULL,
	KERJA_MASUK_MID VARCHAR(15) NULL,
	KERJA_PULANG_MID VARCHAR(15) NULL
	)
DECLARE @I INT

SET NOCOUNT ON

BEGIN

	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	SET @pTIMEZONE = 'WIB';
	
	SELECT @pTIMEZONE= ISNULL(RTRIM(LTRIM(TIMEZONE)),'WIB') FROM dbo.JADWAL_SHIFT WHERE ORGEH = @pORGEH

	--SELECT RTRIM(LTRIM(TIMEZONE)) FROM dbo.JADWAL_SHIFT WHERE ORGEH = '50340677'
	IF @pTIMEZONE = 'WITA'
	BEGIN --UNTUK WITA MAKA TAMBAHKAN 1 JAM
		SET @JAM = '1';
	END
	ELSE IF @pTIMEZONE = 'WIT'
	BEGIN
		SET @JAM = '2';
	END
	ELSE 
	BEGIN
		SET @JAM = '0';
	END
	SET @STR_TABLE = 'ABSENSI';
	--CEK TIPE PERIODE
	IF @pTypePosisi = 1
	BEGIN
		--BULANAN
		SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE LEFT(POSISI,7) = @pPOSISI
		SET @STR_POSISI = ' AND LEFT(POSISI,7)='''+@pPOSISI+''''
		IF @CEK_TABLE = 0 
		BEGIN
			SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
		END
	END
	ELSE IF @pTypePosisi = 2
	BEGIN
		--HARIAN
		SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE POSISI = @pPOSISI
		SET @STR_POSISI = ' AND POSISI ='''+@pPOSISI+''''
		IF @CEK_TABLE = 0 
		BEGIN
			SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
		END
	END

	--CEK ROLE
	IF @pROLE = 1
	BEGIN
		--ADMIN
		SET @STR_ROLE = ' WHERE ORGEH='''+ @pORGEH + ''''
	END
	ELSE IF @pROLE = 2
	BEGIN
		--DIV
		SET @STR_ROLE = ' INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH WHERE D.ORGEH_INDUK='''+ @pORGEH + ''''
	END

	IF (@pTypePosisi = 1 OR @pTypePosisi = 2)
	BEGIN 
	
		--pulang cepat
		IF @pKode = 'CP'
		BEGIN
		begin try
			SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID,JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG FROM 
					  (
					  SELECT    A.JADWAL_MASUK AS JADWAL_KERJA_MASUK, A.JADWAL_PULANG AS JADWAL_KERJA_PULANG, A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, ''CEPAT PULANG'' AS KET, 
							A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'')
							AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) 
							END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) 
							END AS KERJA_PULANG_MID, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
								  WHERE (A.JADWAL_PULANG > A.KERJA_PULANG) AND (A.KERJA_PULANG <> ''00:00:00'')
					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

				  EXEC (@STR)
				  end try
			begin catch 
			end catch
		END
		--terlambat masuk
		ELSE IF @pKode = 'TM'
		BEGIN
		begin try
			SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID,JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG FROM 
					  (
					  SELECT     A.JADWAL_MASUK AS JADWAL_KERJA_MASUK, A.JADWAL_PULANG AS JADWAL_KERJA_PULANG,A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, ''TERLAMBAT MASUK'' AS KET, 
							A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'')
							AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) 
							END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) 
							END AS KERJA_PULANG_MID, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
								  WHERE LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
						KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL
					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

			EXEC (@STR)
			end try
			begin catch 
			end catch
		END
		--tidak absen pulang
		
		ELSE IF @pKode = 'TAP'
		
		BEGIN
		begin try 
		
		SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID,JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG  FROM 
					  (
					  SELECT     A.JADWAL_MASUK AS JADWAL_KERJA_MASUK ,A.JADWAL_PULANG  AS JADWAL_KERJA_PULANG , JADWAL_KERJA_PULANG A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, ''TIDAK ABSEN PULANG'' AS KET, 
							A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'')
							AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) 
							END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) 
							END AS KERJA_PULANG_MID, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
								  WHERE (LEFT(A.JADWAL_MASUK, 5) < LEFT(A.KERJA_MASUK, 5)) AND (A.KERJA_MASUK <> ''00:00:00'')
					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

			EXEC (@STR)
			end try
			begin catch 
			end catch
		END
		--TIDAK MASUK KERJA
		ELSE IF @pKode = 'TAM'
		BEGIN
		begin try
			SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID,JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG  FROM 
					  (
					  SELECT     A.JADWAL_MASUK AS  JADWAL_KERJA_MASUK, A.JADWAL_PULANG AS  JADWAL_KERJA_PULANG,  A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, ''TIDAK MASUK KERJA'' AS KET, 
							A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'')
							AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) 
							END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) 
							END AS KERJA_PULANG_MID, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

			EXEC (@STR)
			end try
			begin catch 
			end catch
		END
		--LEMBUR
		ELSE IF @pKode = 'LMBR'
		BEGIN
		IF @pTypePosisi = 1
		BEGIN
			--BULANAN
			SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE LEFT(POSISI,7) = @pPOSISI
			SET @STR_POSISI = ' AND RIGHT(POSISI,6)='''+RIGHT(@pPOSISI,2)+LEFT(@pPOSISI,4)+''''
			IF @CEK_TABLE = 0 
			BEGIN
				SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
			END
		END
		ELSE IF @pTypePosisi = 2
		BEGIN
			--HARIAN
			SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE POSISI = @pPOSISI
			SET @STR_POSISI = ' AND POSISI LIKE %'''+RIGHT(@pPOSISI,2)+LEFT(RIGHT(@pPOSISI,5),2)+LEFT(@pPOSISI,4)+'''%'
			IF @CEK_TABLE = 0 
			BEGIN
				SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
			END
		END
			SET @STR = 'SELECT distinct 
		  POSISI
		  ,TANGGAL
		  ,ORGEH
		  ,UKER
		  ,PERNR
		  ,NAMA
		  ,MASUK_KERJA AS MASUK_KERJA_OLD,
			CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
		  ,KET
		  ,REMARK
		  ,INFO
		  ,LOKASI_ABSEN_MASUK
		  ,LOKASI_ABSEN_PULANG,LEMBUR_MASUK_MID AS KERJA_MASUK_MID,
			LEMBUR_PULANG_MID AS KERJA_PULANG_MID FROM
					  (
			SELECT     ''C'' AS A, POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, ORGEH, 
								  ORGEH + '' - '' + UKER AS UKER, PERNR, NAMA, LEMBUR_MASUK AS MASUK_KERJA, LEMBUR_PULANG AS PULANG_KERJA, ''LEMBUR'' AS KET, 
								  '''' AS REMARK, KETERANGAN AS INFO, LEMBUR_MASUK_TID, /*LEMBUR_MASUK_MID, */ LEMBUR_PULANG_TID, 
								  /*LEMBUR_PULANG_MID, */ ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, 
								  1 AS KOREKSI, CASE ISNULL(A.LEMBUR_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.LEMBUR_MASUK_MID, 8, 4) 
								  END AS LEMBUR_MASUK_MID, CASE ISNULL(A.LEMBUR_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.LEMBUR_PULANG_MID, 8, 4) 
								  END AS LEMBUR_PULANG_MID, A.lembur_MASUK_AWAL AS MASUK_KERJA_EDC, A.lembur_PULANG_AWAL AS PULANG_KERJA_EDC, 
								  UPDATE_DATE, UPDATE_BY
			FROM         dbo.Absensi_Lembur AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
			UNION
			SELECT     ''C'' AS A, POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, ORGEH, 
								  ORGEH + '' - '' + UKER AS UKER, PERNR, NAMA, LEMBUR_MASUK AS MASUK_KERJA, LEMBUR_PULANG AS PULANG_KERJA, ''LEMBUR'' AS KET, 
								  '''' AS REMARK, KETERANGAN AS INFO, LEMBUR_MASUK_TID, /*LEMBUR_MASUK_MID, */ LEMBUR_PULANG_TID, 
								  /*LEMBUR_PULANG_MID, */ ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, KOREKSI, 
								  CASE ISNULL(A.LEMBUR_MASUK_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.LEMBUR_MASUK_MID, 8, 4) END AS LEMBUR_MASUK_MID, 
								  CASE ISNULL(A.LEMBUR_PULANG_MID, '''') WHEN '''' THEN '''' ELSE SUBSTRING(A.LEMBUR_PULANG_MID, 8, 4) END AS LEMBUR_PULANG_MID, 
								  A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, UPDATE_DATE, UPDATE_BY
			FROM         dbo.Absensi AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
			WHERE     (LEMBUR_MASUK <> ''00:00:00'')
			)A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

			PRINT @STR
		END
		--semuanya
		ELSE IF @pKode = 'ALL'
		BEGIN
		begin try
			SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD, 
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
					PULANG_KERJA AS PULANG_KERJA_OLD,
					  CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
					  ISNULL(CASE 
					  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
					  THEN CONVERT(VARCHAR,
					  DATEADD(hh,'+@JAM+',
						  CONVERT(DATETIME,
							  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
						  )
					  ,8)  + '' '' + '''+@pTIMEZONE+'''
					  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID, JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG FROM 
					  (
					  SELECT    A.JADWAL_MASUK as JADWAL_KERJA_MASUK,A.JADWAL_PULANG as JADWAL_KERJA_PULANG,  A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							(CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
                            KERJA_PULANG <> ''00:00:00'' THEN ''CEPAT PULANG'' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
                            KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL THEN ''TERLAMBAT MASUK'' WHEN
                            KERJA_MASUK = ''00:00:00'' THEN ''TIDAK MASUK KERJA'' WHEN KERJA_PULANG = ''00:00:00''
                            THEN ''TIDAK ABSEN PULANG'' ELSE ''-'' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') 
							AS LOKASI_ABSEN_MASUK, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
                            A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')

					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'

			EXEC (@STR)
			end try
			begin catch 
			end catch
		END
		ELSE IF @pKode = 'BI'
		BEGIN
			SET @STR = 'SELECT COUNT(POSISI) AS JUMLAH, PERNR, KET FROM 
					  (
					  SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							(CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
                            KERJA_PULANG <> ''00:00:00'' THEN ''LAIN-LAIN'' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
                            KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL THEN ''TERLAMBAT MASUK'' WHEN
                            KERJA_MASUK = ''00:00:00'' THEN ''LAIN-LAIN'' WHEN KERJA_PULANG = ''00:00:00''
                            THEN ''LAIN-LAIN'' ELSE ''KERJA NORMAL'' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') 
							AS LOKASI_ABSEN_MASUK, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
                            A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')

					  )A '+@STR_ROLE+''+ @STR_POSISI+'
				  GROUP BY PERNR, KET'

			EXEC (@STR)
		END
	END
	ELSE IF @pTypePosisi = 3
	BEGIN
		SET @I = 1
		WHILE (@I <= 12)
		BEGIN
			BEGIN TRY
			IF @I < 10
			BEGIN
				SET @STR_TABLE = 'ABSENSI_' + LEFT(@pPOSISI, 4) + '0' + CONVERT(varchar(2), @I)
				SET @POSISI = LEFT(@pPOSISI, 4) + '0' + CONVERT(varchar(2), @I)
			END
			ELSE IF @I >= 10
			BEGIN
				SET @STR_TABLE = 'ABSENSI_' + LEFT(@pPOSISI, 4) + CONVERT(varchar(2), @I)
				SET @POSISI = LEFT(@pPOSISI, 4) + CONVERT(varchar(2), @I)
			END
			SET @STR = 'SELECT DISTINCT KODE
					,POSISI
					,TANGGAL
					,A.ORGEH
					,UKER
					,PERNR
					,NAMA
					,MASUK_KERJA AS MASUK_KERJA_OLD,
					  CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
							PULANG_KERJA AS PULANG_KERJA_OLD,
							  CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
							  ISNULL(CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
							  ISNULL(CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
					,KET
					,REMARK
					,INFO
					,LOKASI_ABSEN_MASUK
					,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID  ,JADWAL_KERJA_MASUK, JADWAL_KERJA_PULANG FROM 
					  (
					  SELECT  A.JADWAL_MASUK AS JADWAL_KERJA_MASUK, A.JADWAL_PULANG AS JADWAL_KERJA_PULANG,   A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
							A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
							(CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
                            KERJA_PULANG <> ''00:00:00'' THEN ''CEPAT PULANG'' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
                            KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL THEN ''TERLAMBAT MASUK'' WHEN
                            KERJA_MASUK = ''00:00:00'' THEN ''TIDAK MASUK KERJA'' WHEN KERJA_PULANG = ''00:00:00''
                            THEN ''TIDAK ABSEN PULANG'' ELSE ''-'' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') 
							AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
                            A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
					  FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
					  )A '+@STR_ROLE+'
				  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'
			INSERT INTO @TMP
			EXEC (@STR)
			SET @I = @I + 1
			END TRY
			BEGIN CATCH

				BEGIN TRY
					IF @I < 10
					BEGIN
						SET @POSISI = LEFT(@pPOSISI, 4) + '-' +'0' + CONVERT(varchar(2), @I)
					END
					ELSE IF @I >= 10
					BEGIN
						SET @POSISI = LEFT(@pPOSISI, 4) + '-' + CONVERT(varchar(2), @I)
					END
					SET @STR = 'SELECT DISTINCT KODE
							,POSISI
							,TANGGAL
							,A.ORGEH
							,UKER
							,PERNR
							,NAMA
							,MASUK_KERJA AS MASUK_KERJA_OLD,
							  CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE MASUK_KERJA  + '' '' + '''+@pTIMEZONE+''' END AS MASUK_KERJA, 
							PULANG_KERJA AS PULANG_KERJA_OLD,
							  CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE PULANG_KERJA + '' '' + '''+@pTIMEZONE+''' END AS PULANG_KERJA,
							  ISNULL(CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ MASUK_KERJA_EDC)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE MASUK_KERJA_EDC  + '' '' +  '' '' + '''+@pTIMEZONE+''' END, ''-'')AS MASUK_KERJA_EDC, 
							  ISNULL(CASE 
							  WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC) = 1 
							  THEN CONVERT(VARCHAR,
							  DATEADD(hh,'+@JAM+',
								  CONVERT(DATETIME,
									  CONVERT(VARCHAR(10), GETDATE(),120) + '' ''+ PULANG_KERJA_EDC)
								  )
							  ,8)  + '' '' + '''+@pTIMEZONE+'''
							  ELSE PULANG_KERJA_EDC + '' '' + '''+@pTIMEZONE+''' END,''-'') AS PULANG_KERJA_EDC
							,KET
							,REMARK
							,INFO
							,LOKASI_ABSEN_MASUK
							,LOKASI_ABSEN_PULANG,KERJA_MASUK_MID,KERJA_PULANG_MID FROM 
							  (
							  SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
									A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
									(CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
									KERJA_PULANG <> ''00:00:00'' THEN ''CEPAT PULANG'' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
									KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL THEN ''TERLAMBAT MASUK'' WHEN
									KERJA_MASUK = ''00:00:00'' THEN ''TIDAK MASUK KERJA'' WHEN KERJA_PULANG = ''00:00:00''
									THEN ''TIDAK ABSEN PULANG'' ELSE ''-'' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') 
									AS LOKASI_ABSEN_MASUK, ISNULL(M2.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') 
									WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') 
									WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
									A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
							  FROM  dbo.ABSENSI AS A LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
								  dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')
							  )A '+@STR_ROLE+' AND LEFT(POSISI,7)='''+@POSISI+'''
						  ORDER BY A.ORGEH,  TANGGAL,PERNR,POSISI'
					INSERT INTO @TMP
					EXEC (@STR)
					SET @I = @I + 1
				END TRY

				BEGIN CATCH
				END CATCH
			END CATCH

		END

		IF @pKode = 'CP'
		BEGIN
			SELECT TOP (400) * FROM @TMP WHERE KET = 'CEPAT PULANG'
		END

		IF @pKode = 'TM'
		BEGIN
			SELECT TOP (400) * FROM @TMP WHERE KET = 'TERLAMBAT MASUK'
		END

		IF @pKode = 'TAP'
		BEGIN
			SELECT TOP (400) * FROM @TMP WHERE KET = 'TIDAK ABSEN PULANG'
		END

		IF @pKode = 'TAM'
		BEGIN
			SELECT TOP (400) * FROM @TMP WHERE KET = 'TIDAK MASUK KERJA'
		END

		IF @pKode = 'ALL'
		BEGIN
			SELECT TOP (400) * FROM @TMP
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_BI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_REPORT_BI] 
@pROLE INT,
@pTypePosisi INT,
@pKode VARCHAR(10),
@pORGEH VARCHAR(50),
@pORGEH_INDUK VARCHAR(50),
@pPOSISI VARCHAR(500),
@pPERNR VARCHAR(50),
@pKET VARCHAR (50)
AS
DECLARE @JAM VARCHAR(2)
DECLARE @pTIMEZONE VARCHAR(10)
DECLARE @STR_TABLE VARCHAR(20)
DECLARE @STR_ROLE VARCHAR(100)
DECLARE @STR_POSISI VARCHAR(100)
DECLARE @CEK_TABLE INT
DECLARE @STR VARCHAR(8000)
DECLARE @POSISI VARCHAR(10)

SET NOCOUNT ON

BEGIN

 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

 SET @pTIMEZONE = 'WIB';
 
 SELECT @pTIMEZONE= ISNULL(RTRIM(LTRIM(TIMEZONE)),'WIB') FROM dbo.JADWAL_SHIFT WHERE ORGEH = @pORGEH

 --SELECT RTRIM(LTRIM(TIMEZONE)) FROM dbo.JADWAL_SHIFT WHERE ORGEH = '50340677'
 IF @pTIMEZONE = 'WITA'
 BEGIN --UNTUK WITA MAKA TAMBAHKAN 1 JAM
  SET @JAM = '1';
 END
 ELSE IF @pTIMEZONE = 'WIT'
 BEGIN
  SET @JAM = '2';
 END
 ELSE 
 BEGIN
  SET @JAM = '0';
 END
 SET @STR_TABLE = 'ABSENSI';
 --CEK TIPE PERIODE
 IF @pTypePosisi = 1
 BEGIN
  --BULANAN
  SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE LEFT(POSISI,7) = @pPOSISI
  SET @STR_POSISI = ' AND LEFT(POSISI,7)='''+@pPOSISI+''''
  IF @CEK_TABLE = 0 
  BEGIN
   SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
  END
 END
 ELSE IF @pTypePosisi = 2
 BEGIN
  --HARIAN
  SELECT @CEK_TABLE = COUNT(POSISI) FROM ABSENSI WHERE POSISI = @pPOSISI
  SET @STR_POSISI = ' AND POSISI ='''+@pPOSISI+''''
  IF @CEK_TABLE = 0 
  BEGIN
   SET @STR_TABLE = @STR_TABLE + '_' + LEFT(@pPOSISI, 4) + RIGHT(LEFT(@pPOSISI, 7),2)
  END
 END

 --CEK ROLE
 IF @pROLE = 1
 BEGIN
  --ADMIN
  SET @STR_ROLE = ' WHERE ORGEH='''+ @pORGEH + ''''
 END
 ELSE IF @pROLE = 2
 BEGIN
  --DIV
  SET @STR_ROLE = ' INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH WHERE D.ORGEH_INDUK='''+ @pORGEH + ''''
 END

 IF (@pTypePosisi = 1 OR @pTypePosisi = 2)
 BEGIN

  IF @pKode = 'BI'
  BEGIN
   BEGIN TRY
   SET @STR = 'SELECT COUNT(POSISI) AS JUMLAH, PERNR, KET FROM 
       (
       SELECT     A.KODE, A.POSISI, CONVERT(DATETIME, LEFT(A.POSISI, 4) + ''/'' + RIGHT(LEFT(A.POSISI, 7),2) + ''/'' + RIGHT(A.POSISI, 2)) AS TANGGAL, A.ORGEH, 
       A.ORGEH + '' - '' + A.UKER AS UKER, A.PERNR, A.NAMA, A.KERJA_MASUK AS MASUK_KERJA, A.KERJA_PULANG AS PULANG_KERJA, 
       (CASE WHEN LEFT(JADWAL_PULANG, 5) > LEFT(KERJA_PULANG, 5) AND 
                            KERJA_PULANG <> ''00:00:00'' THEN ''LAIN-LAIN'' WHEN LEFT(JADWAL_MASUK, 5) < LEFT(KERJA_MASUK, 5) AND 
                            KERJA_MASUK <> ''00:00:00'' AND KERJA_PULANG <> ''00:00:00'' AND A.KERJA_PULANG_AWAL IS NULL THEN ''TERLAMBAT MASUK'' WHEN
                            KERJA_MASUK = ''00:00:00'' THEN ''LAIN-LAIN'' WHEN KERJA_PULANG = ''00:00:00''
                            THEN ''LAIN-LAIN'' ELSE ''KERJA NORMAL'' END) AS KET, A.DESKRIPSI AS REMARK, A.KETERANGAN AS INFO, ISNULL(M1.LOCATION, ''-'') 
       AS LOKASI_ABSEN_MASUK, ISNULL(M1.LOCATION, ''-'') AS LOKASI_ABSEN_PULANG, A.KOREKSI, CASE ISNULL(A.KERJA_MASUK_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_MASUK_MID, 8, 4) END AS KERJA_MASUK_MID, CASE ISNULL(A.KERJA_PULANG_MID, '''') 
                            WHEN '''' THEN '''' ELSE SUBSTRING(A.KERJA_PULANG_MID, 8, 4) END AS KERJA_PULANG_MID, A.KERJA_MASUK_AWAL AS MASUK_KERJA_EDC, 
                            A.KERJA_PULANG_AWAL AS PULANG_KERJA_EDC, A.UPDATE_DATE, A.UPDATE_BY
       FROM  dbo.'+@STR_TABLE+' AS A LEFT OUTER JOIN
          dbo.T_MERCHANT AS M1 ON M1.TID = ISNULL(A.KERJA_MASUK_TID, '''') AND M1.MID = ISNULL(A.KERJA_MASUK_MID, '''') LEFT OUTER JOIN
          dbo.T_MERCHANT AS M2 ON M2.TID = ISNULL(A.KERJA_PULANG_TID, '''') AND M2.MID = ISNULL(A.KERJA_PULANG_MID, '''')

       )A '+@STR_ROLE+''+ @STR_POSISI+'AND A.PERNR = '''+@pPERNR+'''AND A.KET = '''+@pKET+'''
      GROUP BY PERNR, KET'

   EXEC (@STR)
   
   END TRY
   BEGIN CATCH

   END CATCH
  END
  ELSE IF @pKode = 'NAMA'
  BEGIN
   BEGIN TRY
   SET @STR = 'SELECT DISTINCT A.PERNR FROM 
       (
       SELECT     A.PERNR, A.POSISI, A.ORGEH
       FROM  dbo.'+@STR_TABLE+' AS A

       )A '+@STR_ROLE+''+ @STR_POSISI+''

   EXEC (@STR)
   
   END TRY
   BEGIN CATCH

   END CATCH
  END
 END
 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_KETIDAKHADIRAN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_REPORT_KETIDAKHADIRAN]	
@pROLE VARCHAR(1),
@pORGEH VARCHAR(50),
@pJENIS_PEKERJA VARCHAR(50),
@pPERIODE_AWAL VARCHAR(50),
@pPERIODE_AKHIR VARCHAR(50)
AS
DECLARE
@pPERIODE_AWAL_INT INT,
@pPERIODE_AKHIR_INT INT,
@pJENIS VARCHAR(50)
BEGIN	

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	--012012 --> 201201
	SET @pPERIODE_AWAL_INT =  CONVERT(INT, RIGHT(@pPERIODE_AWAL,4) +LEFT(@pPERIODE_AWAL,2))
	SET @pPERIODE_AKHIR_INT =  CONVERT(INT, RIGHT(@pPERIODE_AKHIR,4) +LEFT(@pPERIODE_AKHIR,2))
	
	--SELECT @pROLE, @pORGEH, @pJENIS_PEKERJA, @pPERIODE_AWAL,@pPERIODE_AKHIR

	
	IF (@pROLE = '1')
	BEGIN
	--ADMIN
		IF @pJENIS_PEKERJA='ALL'
		BEGIN
			SELECT 
				RIGHT(RTRIM(LTRIM([POSISI])),6) AS POSISI,[PERNR],[NAMA],[PERUSAHAAN],[TIPE]
				,[BULAN],[TAHUN],[ORGEH],[NAMA_ORGEH],[ORGEH_INDUK],[NAMA_ORGEH_INDUK]
				,[HKJ],[WEEKEND],[LIBUR],[HD],[TM],[CP],[PC],[TK],[ST],[DL]
				,[PJ],[PD],[NA],[SK],[TW],[CT],[CB],[ISS],[IM],[HDD],[PP]
				,[LH],[MD],[PA],[KA],[BA],[PG],[IH],[IP] 
				,CASE WHEN TM = 0  THEN ''  ELSE 'TM:'+CAST(TM AS VARCHAR) +'; 'END +
				CASE WHEN CP = 0  THEN ''  ELSE 'CP:'+CAST(CP AS VARCHAR) +'; 'END +
				CASE WHEN PC = 0  THEN ''  ELSE 'PC:'+CAST(PC AS VARCHAR) +'; 'END +
				CASE WHEN TK = 0  THEN ''  ELSE 'TK:'+CAST(TK AS VARCHAR) +'; 'END +
				CASE WHEN ST = 0  THEN ''  ELSE 'ST:'+CAST(ST AS VARCHAR) +'; 'END +
				CASE WHEN DL = 0  THEN ''  ELSE 'DL:'+CAST(DL AS VARCHAR) +'; 'END +
				CASE WHEN PJ = 0  THEN ''  ELSE 'PJ:'+CAST(PJ AS VARCHAR) +'; 'END +
				CASE WHEN PD = 0  THEN ''  ELSE 'PD:'+CAST(PD AS VARCHAR) +'; 'END +
				CASE WHEN NA = 0  THEN ''  ELSE 'NA:'+CAST(NA AS VARCHAR) +'; 'END +
				CASE WHEN SK = 0  THEN ''  ELSE 'SK:'+CAST(SK AS VARCHAR) +'; 'END +
				CASE WHEN TW = 0  THEN ''  ELSE 'TW:'+CAST(TW AS VARCHAR) +'; 'END +
				CASE WHEN CT = 0  THEN ''  ELSE 'CT:'+CAST(CT AS VARCHAR) +'; 'END +
				CASE WHEN CB = 0  THEN ''  ELSE 'CB:'+CAST(CB AS VARCHAR) +'; 'END +
				CASE WHEN ISS = 0  THEN ''  ELSE 'IS:'+CAST(ISS AS VARCHAR) +'; 'END +
				CASE WHEN IM = 0  THEN ''  ELSE 'IM:'+CAST(IM AS VARCHAR) +'; 'END +
				CASE WHEN HDD = 0  THEN ''  ELSE 'HDD:'+CAST(HDD AS VARCHAR) +'; ' END +
				CASE WHEN PP = 0  THEN ''  ELSE 'PP:'+CAST(PP AS VARCHAR) +'; ' END +
				CASE WHEN LH = 0  THEN ''  ELSE 'LH:'+CAST(LH AS VARCHAR) +'; ' END +
				CASE WHEN PA = 0  THEN ''  ELSE 'PA:'+CAST(PA AS VARCHAR) +'; ' END +
				CASE WHEN KA = 0  THEN ''  ELSE 'KA:'+CAST(KA AS VARCHAR) +'; ' END +
				CASE WHEN BA = 0  THEN ''  ELSE 'BA:'+CAST(BA AS VARCHAR) +'; ' END +
				CASE WHEN PG = 0  THEN ''  ELSE 'PG:'+CAST(PG AS VARCHAR) +'; ' END +
				CASE WHEN IH = 0  THEN ''  ELSE 'IH:'+CAST(IH AS VARCHAR) +'; ' END +
				CASE WHEN IP = 0  THEN ''  ELSE 'IP:'+CAST(IP AS VARCHAR) +'; 'END  AS KETERANGAN 
			FROM T_REKAP_ABSEN
			WHERE CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) ) BETWEEN @pPERIODE_AWAL_INT AND @pPERIODE_AKHIR_INT AND ORGEH =@pORGEH
			ORDER BY ORGEH,PERNR,  CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) )
		END
		ELSE 
		BEGIN

			IF @pJENIS_PEKERJA='1'
			BEGIN 
				SET @pJENIS='ORG'
			END
			ELSE IF @pJENIS_PEKERJA='2'
			BEGIN 
				SET @pJENIS='OUTS'
			END

			SELECT 
				RIGHT(RTRIM(LTRIM([POSISI])),6) AS POSISI,[PERNR],[NAMA],[PERUSAHAAN],[TIPE]
				,[BULAN],[TAHUN],[ORGEH],[NAMA_ORGEH],[ORGEH_INDUK],[NAMA_ORGEH_INDUK]
				,[HKJ],[WEEKEND],[LIBUR],[HD],[TM],[CP],[PC],[TK],[ST],[DL]
				,[PJ],[PD],[NA],[SK],[TW],[CT],[CB],[ISS],[IM],[HDD],[PP]
				,[LH],[MD],[PA],[KA],[BA],[PG],[IH],[IP] 
				,CASE WHEN TM = 0  THEN ''  ELSE 'TM:'+CAST(TM AS VARCHAR) +'; 'END +
				CASE WHEN CP = 0  THEN ''  ELSE 'CP:'+CAST(CP AS VARCHAR) +'; 'END +
				CASE WHEN PC = 0  THEN ''  ELSE 'PC:'+CAST(PC AS VARCHAR) +'; 'END +
				CASE WHEN TK = 0  THEN ''  ELSE 'TK:'+CAST(TK AS VARCHAR) +'; 'END +
				CASE WHEN ST = 0  THEN ''  ELSE 'ST:'+CAST(ST AS VARCHAR) +'; 'END +
				CASE WHEN DL = 0  THEN ''  ELSE 'DL:'+CAST(DL AS VARCHAR) +'; 'END +
				CASE WHEN PJ = 0  THEN ''  ELSE 'PJ:'+CAST(PJ AS VARCHAR) +'; 'END +
				CASE WHEN PD = 0  THEN ''  ELSE 'PD:'+CAST(PD AS VARCHAR) +'; 'END +
				CASE WHEN NA = 0  THEN ''  ELSE 'NA:'+CAST(NA AS VARCHAR) +'; 'END +
				CASE WHEN SK = 0  THEN ''  ELSE 'SK:'+CAST(SK AS VARCHAR) +'; 'END +
				CASE WHEN TW = 0  THEN ''  ELSE 'TW:'+CAST(TW AS VARCHAR) +'; 'END +
				CASE WHEN CT = 0  THEN ''  ELSE 'CT:'+CAST(CT AS VARCHAR) +'; 'END +
				CASE WHEN CB = 0  THEN ''  ELSE 'CB:'+CAST(CB AS VARCHAR) +'; 'END +
				CASE WHEN ISS = 0  THEN ''  ELSE 'IS:'+CAST(ISS AS VARCHAR) +'; 'END +
				CASE WHEN IM = 0  THEN ''  ELSE 'IM:'+CAST(IM AS VARCHAR) +'; 'END +
				CASE WHEN HDD = 0  THEN ''  ELSE 'HDD:'+CAST(HDD AS VARCHAR) +'; ' END +
				CASE WHEN PP = 0  THEN ''  ELSE 'PP:'+CAST(PP AS VARCHAR) +'; ' END +
				CASE WHEN LH = 0  THEN ''  ELSE 'LH:'+CAST(LH AS VARCHAR) +'; ' END +
				CASE WHEN PA = 0  THEN ''  ELSE 'PA:'+CAST(PA AS VARCHAR) +'; ' END +
				CASE WHEN KA = 0  THEN ''  ELSE 'KA:'+CAST(KA AS VARCHAR) +'; ' END +
				CASE WHEN BA = 0  THEN ''  ELSE 'BA:'+CAST(BA AS VARCHAR) +'; ' END +
				CASE WHEN PG = 0  THEN ''  ELSE 'PG:'+CAST(PG AS VARCHAR) +'; ' END +
				CASE WHEN IH = 0  THEN ''  ELSE 'IH:'+CAST(IH AS VARCHAR) +'; ' END +
				CASE WHEN IP = 0  THEN ''  ELSE 'IP:'+CAST(IP AS VARCHAR) +'; 'END  AS KETERANGAN 
			FROM T_REKAP_ABSEN			
			WHERE TIPE = @pJENIS AND CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) ) BETWEEN @pPERIODE_AWAL_INT AND @pPERIODE_AKHIR_INT AND ORGEH =@pORGEH
			ORDER BY ORGEH,PERNR, CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) )
		END
	END
	ELSE IF (@pROLE = '2')
		BEGIN
		--DIV
		IF @pJENIS_PEKERJA='ALL'
		BEGIN
			SELECT 
				RIGHT(RTRIM(LTRIM([POSISI])),6) AS POSISI,[PERNR],[NAMA],[PERUSAHAAN],[TIPE]
				,[BULAN],[TAHUN],[ORGEH],[NAMA_ORGEH],[ORGEH_INDUK],[NAMA_ORGEH_INDUK]
				,[HKJ],[WEEKEND],[LIBUR],[HD],[TM],[CP],[PC],[TK],[ST],[DL]
				,[PJ],[PD],[NA],[SK],[TW],[CT],[CB],[ISS],[IM],[HDD],[PP]
				,[LH],[MD],[PA],[KA],[BA],[PG],[IH],[IP] 
				,CASE WHEN TM = 0  THEN ''  ELSE 'TM:'+CAST(TM AS VARCHAR) +'; 'END +
				CASE WHEN CP = 0  THEN ''  ELSE 'CP:'+CAST(CP AS VARCHAR) +'; 'END +
				CASE WHEN PC = 0  THEN ''  ELSE 'PC:'+CAST(PC AS VARCHAR) +'; 'END +
				CASE WHEN TK = 0  THEN ''  ELSE 'TK:'+CAST(TK AS VARCHAR) +'; 'END +
				CASE WHEN ST = 0  THEN ''  ELSE 'ST:'+CAST(ST AS VARCHAR) +'; 'END +
				CASE WHEN DL = 0  THEN ''  ELSE 'DL:'+CAST(DL AS VARCHAR) +'; 'END +
				CASE WHEN PJ = 0  THEN ''  ELSE 'PJ:'+CAST(PJ AS VARCHAR) +'; 'END +
				CASE WHEN PD = 0  THEN ''  ELSE 'PD:'+CAST(PD AS VARCHAR) +'; 'END +
				CASE WHEN NA = 0  THEN ''  ELSE 'NA:'+CAST(NA AS VARCHAR) +'; 'END +
				CASE WHEN SK = 0  THEN ''  ELSE 'SK:'+CAST(SK AS VARCHAR) +'; 'END +
				CASE WHEN TW = 0  THEN ''  ELSE 'TW:'+CAST(TW AS VARCHAR) +'; 'END +
				CASE WHEN CT = 0  THEN ''  ELSE 'CT:'+CAST(CT AS VARCHAR) +'; 'END +
				CASE WHEN CB = 0  THEN ''  ELSE 'CB:'+CAST(CB AS VARCHAR) +'; 'END +
				CASE WHEN ISS = 0  THEN ''  ELSE 'IS:'+CAST(ISS AS VARCHAR) +'; 'END +
				CASE WHEN IM = 0  THEN ''  ELSE 'IM:'+CAST(IM AS VARCHAR) +'; 'END +
				CASE WHEN HDD = 0  THEN ''  ELSE 'HDD:'+CAST(HDD AS VARCHAR) +'; ' END +
				CASE WHEN PP = 0  THEN ''  ELSE 'PP:'+CAST(PP AS VARCHAR) +'; ' END +
				CASE WHEN LH = 0  THEN ''  ELSE 'LH:'+CAST(LH AS VARCHAR) +'; ' END +
				CASE WHEN PA = 0  THEN ''  ELSE 'PA:'+CAST(PA AS VARCHAR) +'; ' END +
				CASE WHEN KA = 0  THEN ''  ELSE 'KA:'+CAST(KA AS VARCHAR) +'; ' END +
				CASE WHEN BA = 0  THEN ''  ELSE 'BA:'+CAST(BA AS VARCHAR) +'; ' END +
				CASE WHEN PG = 0  THEN ''  ELSE 'PG:'+CAST(PG AS VARCHAR) +'; ' END +
				CASE WHEN IH = 0  THEN ''  ELSE 'IH:'+CAST(IH AS VARCHAR) +'; ' END +
				CASE WHEN IP = 0  THEN ''  ELSE 'IP:'+CAST(IP AS VARCHAR) +'; 'END  AS KETERANGAN 
			FROM T_REKAP_ABSEN			
			A WHERE CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) ) BETWEEN @pPERIODE_AWAL_INT AND @pPERIODE_AKHIR_INT  AND ORGEH_INDUK = 
			@pORGEH
			--(SELECT ORGEH_INDUK  FROM divisi WHERE ORGEH =@pORGEH) 
			ORDER BY ORGEH, PERNR, CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) )
		END
		ELSE
		BEGIN
			--SELECT 'A' 

			IF @pJENIS_PEKERJA='1'
			BEGIN 
				SET @pJENIS='ORG'
			END
			ELSE IF @pJENIS_PEKERJA='2'
			BEGIN 
				SET @pJENIS='OUTS'
			END

			SELECT 
				RIGHT(RTRIM(LTRIM([POSISI])),6) AS POSISI,[PERNR],[NAMA],[PERUSAHAAN],[TIPE]
				,[BULAN],[TAHUN],[ORGEH],[NAMA_ORGEH],[ORGEH_INDUK],[NAMA_ORGEH_INDUK]
				,[HKJ],[WEEKEND],[LIBUR],[HD],[TM],[CP],[PC],[TK],[ST],[DL]
				,[PJ],[PD],[NA],[SK],[TW],[CT],[CB],[ISS],[IM],[HDD],[PP]
				,[LH],[MD],[PA],[KA],[BA],[PG],[IH],[IP] 
				,CASE WHEN TM = 0  THEN ''  ELSE 'TM:'+CAST(TM AS VARCHAR) +'; 'END +
				CASE WHEN CP = 0  THEN ''  ELSE 'CP:'+CAST(CP AS VARCHAR) +'; 'END +
				CASE WHEN PC = 0  THEN ''  ELSE 'PC:'+CAST(PC AS VARCHAR) +'; 'END +
				CASE WHEN TK = 0  THEN ''  ELSE 'TK:'+CAST(TK AS VARCHAR) +'; 'END +
				CASE WHEN ST = 0  THEN ''  ELSE 'ST:'+CAST(ST AS VARCHAR) +'; 'END +
				CASE WHEN DL = 0  THEN ''  ELSE 'DL:'+CAST(DL AS VARCHAR) +'; 'END +
				CASE WHEN PJ = 0  THEN ''  ELSE 'PJ:'+CAST(PJ AS VARCHAR) +'; 'END +
				CASE WHEN PD = 0  THEN ''  ELSE 'PD:'+CAST(PD AS VARCHAR) +'; 'END +
				CASE WHEN NA = 0  THEN ''  ELSE 'NA:'+CAST(NA AS VARCHAR) +'; 'END +
				CASE WHEN SK = 0  THEN ''  ELSE 'SK:'+CAST(SK AS VARCHAR) +'; 'END +
				CASE WHEN TW = 0  THEN ''  ELSE 'TW:'+CAST(TW AS VARCHAR) +'; 'END +
				CASE WHEN CT = 0  THEN ''  ELSE 'CT:'+CAST(CT AS VARCHAR) +'; 'END +
				CASE WHEN CB = 0  THEN ''  ELSE 'CB:'+CAST(CB AS VARCHAR) +'; 'END +
				CASE WHEN ISS = 0  THEN ''  ELSE 'IS:'+CAST(ISS AS VARCHAR) +'; 'END +
				CASE WHEN IM = 0  THEN ''  ELSE 'IM:'+CAST(IM AS VARCHAR) +'; 'END +
				CASE WHEN HDD = 0  THEN ''  ELSE 'HDD:'+CAST(HDD AS VARCHAR) +'; ' END +
				CASE WHEN PP = 0  THEN ''  ELSE 'PP:'+CAST(PP AS VARCHAR) +'; ' END +
				CASE WHEN LH = 0  THEN ''  ELSE 'LH:'+CAST(LH AS VARCHAR) +'; ' END +
				CASE WHEN PA = 0  THEN ''  ELSE 'PA:'+CAST(PA AS VARCHAR) +'; ' END +
				CASE WHEN KA = 0  THEN ''  ELSE 'KA:'+CAST(KA AS VARCHAR) +'; ' END +
				CASE WHEN BA = 0  THEN ''  ELSE 'BA:'+CAST(BA AS VARCHAR) +'; ' END +
				CASE WHEN PG = 0  THEN ''  ELSE 'PG:'+CAST(PG AS VARCHAR) +'; ' END +
				CASE WHEN IH = 0  THEN ''  ELSE 'IH:'+CAST(IH AS VARCHAR) +'; ' END +
				CASE WHEN IP = 0  THEN ''  ELSE 'IP:'+CAST(IP AS VARCHAR) +'; 'END  AS KETERANGAN 
			FROM T_REKAP_ABSEN A 
			WHERE TIPE = @pJENIS AND CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) ) BETWEEN @pPERIODE_AWAL_INT AND @pPERIODE_AKHIR_INT  AND ORGEH_INDUK = @pORGEH 
			--(SELECT ORGEH_INDUK  FROM divisi WHERE ORGEH =@pORGEH) 
			ORDER BY ORGEH, PERNR, CONVERT(INT,CONVERT(NVARCHAR(4),TAHUN)+RIGHT('0'+LTRIM(CONVERT(NVARCHAR(2),BULAN)),2) )
		END
	END
	
END

--SELECT * FROM TUSER WHERE KET_UKER LIKE '%KARTU KREDIT%'

--SELECT  FROM DIVISI PERNR

GO
/****** Object:  StoredProcedure [dbo].[SP_REPORT_TELAH_DIMAINTAIN]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
create PROCEDURE [dbo].[SP_REPORT_TELAH_DIMAINTAIN]	
@pROLE INT,
@pTypePosisi INT,
@pKode VARCHAR(10),
@pORGEH VARCHAR(50),
@pPOSISI VARCHAR(50)
AS
DECLARE 
@JAM INT,
@pTIMEZONE VARCHAR(10)

BEGIN

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	
	SELECT @pTIMEZONE= RTRIM(LTRIM(TIMEZONE)) FROM dbo.JADWAL_SHIFT WHERE ORGEH = @pORGEH

	--SELECT RTRIM(LTRIM(TIMEZONE)) FROM dbo.JADWAL_SHIFT WHERE ORGEH = '50340677'
	IF @pTIMEZONE = 'WITA'
	BEGIN --UNTUK WITA MAKA TAMBAHKAN 1 JAM
		SET @JAM = 1;
	END
	ELSE IF @pTIMEZONE = 'WIT'
	BEGIN
		SET @JAM = 2;
	END
	ELSE 
	BEGIN
		SET @JAM = 0;
	END 


	IF @pKode = 'CP'
	BEGIN
		-- Cepat Pulang
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--CEPAT PULANG, ADMIN, BULANAN
				SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  , ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI, UPDATE_BY, UPDATE_DATE, IP
				FROM dbo.V_CP
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL ,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--CEPAT PULANG, ADMIN, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  , ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP
				FROM dbo.V_CP
				WHERE ORGEH=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1
				ORDER BY TANGGAL ,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI, UPDATE_BY, UPDATE_DATE, IP FROM dbo.V_CP A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--CEPAT PULANG, DIV, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM dbo.V_CP A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END
	ELSE IF @pKode = 'TM'
	BEGIN
		-- Terlambat Masuk
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--TERLAMBAT MASUK, ADMIN, BULANAN
				SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TM 
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TERLAMBAT MASUK, ADMIN, HARIAN
				SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TM 
				WHERE ORGEH=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TM  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TERLAMBAT MASUK, DIV, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TM  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END 
	ELSE IF @pKode = 'TAP'
	BEGIN
		-- Tidak Absen Pulang
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--TIDAK ABSEN PULANG, ADMIN, BULANAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAP 
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TIDAK ABSEN PULANG, ADMIN, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAP 
				WHERE ORGEH=@pORGEH AND POSISI =@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
				--TIDAK ABSEN PULANG, DIV, BULANAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAP  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TIDAK ABSEN PULANG, DIV, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAP  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END 
	ELSE IF @pKode = 'TAM'
	BEGIN
		-- Tidak Masuk Kerja
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--TIDAK MASUK KERJA, ADMIN, BULANAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAM 
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TIDAK MASUK KERJA, ADMIN, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAM 
				WHERE ORGEH=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
				--TIDAK MASUK KERJA,DIV, BULANAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAM  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--TIDAK MASUK KERJA, DIV, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_TAM  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END 
	ELSE IF @pKode = 'LMBR'
	BEGIN
		-- Lembur
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--LEMBUR, ADMIN, BULANAN
								SELECT 
				  POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_LMBR
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(MASUK_KERJA_EDC)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--LEMBUR, ADMIN, HARIAN
								SELECT 
				  POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_LMBR
				WHERE ORGEH=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(MASUK_KERJA_EDC)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
				--LEMBUR, DIV, BULANAN
								SELECT 
				  POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_LMBR  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(MASUK_KERJA_EDC)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--LEMBUR, DIV, HARIAN
								SELECT 
				  POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_LMBR  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(MASUK_KERJA_EDC)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END 
	ELSE IF @pKode = 'ALL'
	BEGIN
		-- smuanya 
		IF @pROLE = 1
		BEGIN
			--ADMIN
			IF @pTypePosisi = 1
			BEGIN
				--ALL, ADMIN, BULANAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_ABSEN_ALL
				WHERE ORGEH=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> '' 
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--ALL, ADMIN, HARIAN
								SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_ABSEN_ALL 
				WHERE ORGEH=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
		ELSE IF @pROLE = 2
		BEGIN
			--DIV
			IF @pTypePosisi = 1
			BEGIN
				--ALL, DIV, BULANAN
				SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG, KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_ABSEN_ALL  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND RIGHT(POSISI,6)=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
			ELSE IF @pTypePosisi = 2
			BEGIN
				--ALL, DIV, HARIAN
				SELECT KODE
				  ,POSISI
				  ,TANGGAL
				  ,A.ORGEH
				  ,UKER
				  ,PERNR
				  ,NAMA
				  ,MASUK_KERJA AS MASUK_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA + ' ' + @pTIMEZONE  END AS MASUK_KERJA, 
				  PULANG_KERJA AS PULANG_KERJA_OLD,
					CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA)
						)
					,8) + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA + ' ' + @pTIMEZONE  END AS PULANG_KERJA,
					--untuk edc
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ MASUK_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE MASUK_KERJA_EDC  + ' ' +  ' ' + @pTIMEZONE END, '-')AS MASUK_KERJA_EDC, 
					ISNULL(CASE 
					WHEN ISDATE(CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC) = 1 
					THEN CONVERT(VARCHAR,
					DATEADD(hh,@JAM,
						CONVERT(DATETIME,
							CONVERT(VARCHAR(10), GETDATE(),120) + ' '+ PULANG_KERJA_EDC)
						)
					,8)  + ' ' + @pTIMEZONE 
					ELSE PULANG_KERJA_EDC + ' ' + @pTIMEZONE END,'-') AS PULANG_KERJA_EDC
				  ,KET
				  ,REMARK
				  ,INFO
				  ,LOKASI_ABSEN_MASUK
				  ,LOKASI_ABSEN_PULANG , KOREKSI , UPDATE_BY, UPDATE_DATE, IP FROM  dbo.V_ABSEN_ALL  A
				INNER JOIN DIVISI D ON D.ORGEH = A.ORGEH
				WHERE D.ORGEH_INDUK=@pORGEH AND POSISI=@pPOSISI AND KOREKSI = 1 AND RTRIM(LTRIM(REMARK)) <> ''
				ORDER BY TANGGAL,PERNR,POSISI
			END
		END
	END 
END


GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DATA_ABSENSI]    Script Date: 8/23/2019 11:06:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_DATA_ABSENSI](
@JAM_MASUK CHAR (8),
@JAM_PULANG CHAR (8),
@POSISI VARCHAR (500),
@PN  CHAR (8),
@KERJA_MASUK CHAR(8),
@KERJA_PULANG CHAR(8),
@KET VARCHAR(40),
@KOREKSI CHAR(2),
@DESKRIPSI CHAR(50),
@KODE CHAR (2),
@UPDATE_DATE NVARCHAR(50),
@UPDATE_BY NVARCHAR(50)

)
AS
DECLARE @STR_TABLE VARCHAR(20)
DECLARE @STR VARCHAR(8000)

BEGIN
SET @STR_TABLE = 'ABSENSI_' + LEFT(@POSISI, 4) + RIGHT(LEFT(@POSISI, 7),2);

 BEGIN TRY

  SET @STR = 
  'UPDATE dbo.'+@STR_TABLE+'
  SET KERJA_MASUK =''' + @JAM_MASUK+''', KERJA_PULANG = '''+@JAM_PULANG+'''
  , KERJA_MASUK_AWAL='''+@KERJA_MASUK+''', KERJA_PULANG_AWAL = '''+@KERJA_PULANG+'''
  , KETERANGAN='''+@KET+''', KOREKSI = ' +@KOREKSI+', DESKRIPSI = ''' +@DESKRIPSI+'''
  , KODE = '''+@KODE+''', UPDATE_DATE=''' +@UPDATE_DATE+''', UPDATE_BY='''+@UPDATE_BY+'''
  WHERE POSISI = '''+ @POSISI +'''
  AND PERNR =''' + @PN+''''

  EXEC (@STR)
 END TRY
 
 BEGIN CATCH
  
  BEGIN TRY
  SET @STR = 
  'UPDATE dbo.ABSENSI
  SET KERJA_MASUK ='''+@JAM_MASUK+''', KERJA_PULANG = '''+@JAM_PULANG+'''
  , KERJA_MASUK_AWAL='''+@KERJA_MASUK+''', KERJA_PULANG_AWAL = '''+@KERJA_PULANG+'''
  , KETERANGAN='''+@KET+''', KOREKSI = ' +@KOREKSI+', DESKRIPSI = ''' +@DESKRIPSI+'''
  , KODE = '''+@KODE+''', UPDATE_DATE=''' +@UPDATE_DATE+''', UPDATE_BY='''+@UPDATE_BY+'''
  WHERE POSISI = '''+ @POSISI +'''
  AND PERNR =''' + @PN +''''

  EXEC (@STR)
  END TRY
  BEGIN CATCH

  END CATCH

 END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [1234_PRESENSI] SET  READ_WRITE 
GO
