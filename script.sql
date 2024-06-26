USE [master]
GO
/****** Object:  Database [EssayManagement]    Script Date: 5/13/2024 1:57:50 PM ******/
CREATE DATABASE [EssayManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EssayManagement', FILENAME = N'C:\Users\NGUYEN PHAT\EssayManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EssayManagement_log', FILENAME = N'C:\Users\NGUYEN PHAT\EssayManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EssayManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EssayManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EssayManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EssayManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EssayManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EssayManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EssayManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [EssayManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EssayManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EssayManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EssayManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EssayManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EssayManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EssayManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EssayManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EssayManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EssayManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EssayManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EssayManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EssayManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EssayManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EssayManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EssayManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EssayManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EssayManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EssayManagement] SET  MULTI_USER 
GO
ALTER DATABASE [EssayManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EssayManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EssayManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EssayManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EssayManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EssayManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EssayManagement] SET QUERY_STORE = OFF
GO
USE [EssayManagement]
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDeTai]  AS ('DT'+right('00000000'+CONVERT([varchar](8),[Id]),(8))) PERSISTED,
	[TenDeTai] [nvarchar](200) NOT NULL,
	[CongNghe] [nvarchar](200) NOT NULL,
	[LinhVuc] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[YeuCau] [nvarchar](500) NULL,
	[SoluongSV] [int] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaGV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaGV]  AS ('GV'+right('000000'+CONVERT([varchar](6),[Id]),(6))) PERSISTED,
	[HoTen] [nvarchar](50) NOT NULL,
	[Cmnd] [varchar](15) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Sdt] [varchar](10) NOT NULL,
	[Diachi] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOIDONG]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOIDONG](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoiDong]  AS ('HD'+right('000000'+CONVERT([varchar](6),[Id]),(6))) PERSISTED,
	[GVThamGia1] [nvarchar](100) NULL,
	[GVThamGia2] [nvarchar](100) NULL,
	[GVThamGia3] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOITHOAI]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOITHOAI](
	[MaNhiemVu] [varchar](10) NULL,
	[NguoiGui] [nvarchar](50) NULL,
	[NoiDung] [nchar](500) NULL,
	[ThoiGian] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUANVAN]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUANVAN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaLuanVan]  AS ('LV'+right('00000000'+CONVERT([varchar](8),[Id]),(8))) PERSISTED,
	[MaDeTai] [varchar](10) NOT NULL,
	[MaGV] [varchar](10) NOT NULL,
	[TenDeTai] [nvarchar](200) NOT NULL,
	[CongNghe] [nvarchar](200) NOT NULL,
	[LinhVuc] [nvarchar](100) NOT NULL,
	[MaNhom] [varchar](10) NULL,
	[NgayDangKy] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[TienDo] [tinyint] NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[NhanXet] [nvarchar](500) NULL,
	[YeuCau] [nvarchar](500) NULL,
	[SVThamGia] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NOT NULL,
	[Diem] [float] NULL,
	[MaHoiDong] [varchar](8) NULL,
	[Diem1] [float] NULL,
	[Diem2] [float] NULL,
	[Diem3] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHIEMVU]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHIEMVU](
	[MaNhiemVu]  AS (('NV'+right('000000'+right([MaLuanVan],(6)),(6)))+right('00'+CONVERT([varchar](2),[DemNhiemVu]),(2))) PERSISTED,
	[MaLuanVan] [varchar](10) NOT NULL,
	[TuaDe] [nvarchar](200) NULL,
	[MoTa] [nvarchar](500) NULL,
	[TienDo] [tinyint] NULL,
	[NhanXet] [nvarchar](500) NULL,
	[DemNhiemVu] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSV]  AS ('SV'+right('000000'+CONVERT([varchar](6),[Id]),(6))) PERSISTED,
	[HoTen] [nvarchar](50) NOT NULL,
	[Cmnd] [varchar](15) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Sdt] [varchar](10) NOT NULL,
	[Diachi] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[MaNhom] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGBAO]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGBAO](
	[MaNhom] [varchar](10) NULL,
	[TieuDe] [nvarchar](200) NOT NULL,
	[NoiDung] [nvarchar](500) NULL,
	[NgayGui] [datetime] NOT NULL,
	[MaGV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[NgayGui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEUCAUDANGKY]    Script Date: 5/13/2024 1:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUCAUDANGKY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaYeuCau]  AS ('YC'+right('00000000'+CONVERT([varchar](8),[Id]),(8))) PERSISTED,
	[MaDeTai] [varchar](10) NOT NULL,
	[TenDeTai] [nvarchar](200) NOT NULL,
	[CongNghe] [nvarchar](200) NOT NULL,
	[LinhVuc] [nvarchar](100) NOT NULL,
	[MaNhom] [varchar](10) NULL,
	[MaGV] [varchar](10) NOT NULL,
	[NgayDangKy] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[NhanXet] [nvarchar](500) NULL,
	[TrangThai] [nvarchar](15) NOT NULL,
	[YeuCau] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DETAI] ON 

INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (26, N'Xử lý giá trị thiếu trong khai phá dữ liệu', N'Python', N'Data', N'Mô tả xử lý giá trị thiếu trong khai phá dữ liệu', N'Yêu cầu xử lý giá trị thiếu trong khai phá dữ liệu', 3, N'Đã được đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (29, N'Phát hiện xe đỗ sai quy định dựa vào kỹ thuật xử lý ảnh', N'Python', N'AI', N'Mô tả Phát hiện xe đỗ sai quy định dựa vào kỹ thuật xử lý ảnh', N'Yêu cầu Phát hiện xe đỗ sai quy định dựa vào kỹ thuật xử lý ảnh', 2, N'Đã được đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (32, N'test', N'test', N'Website', N'test', N'test', 1, N'Đã được đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (34, N'Xây dựng hệ thống wifi cho thành phố', N'Cisco, WireShark, C', N'Security', N'Mô tả xây dựng hệ thống wifi cho thành phố', N'Yêu cầu Mô tả xây dựng hệ thống wifi cho thành phố', 2, N'Có thể đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (35, N'Xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác học trên nền web', N'Java, NodeJS, HTML, CSS', N'Website', N'Mô tả xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web', N'Yêu cầu xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web', 1, N'Đã được đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (36, N'đề tài', N'Python', N'Architecture', N'mô tả đề tài', N'yêu cầu đề tài', 1, N'Đã được đăng ký', N'GV000001')
INSERT [dbo].[DETAI] ([Id], [TenDeTai], [CongNghe], [LinhVuc], [MoTa], [YeuCau], [SoluongSV], [TrangThai], [MaGV]) VALUES (37, N'Nhận diện khuôn mặt', N'Python', N'AI', N'Mô tả đề tài nhận diện khuôn mặt', N'Yêu cầu đề tài nhận diện khuôn mặt', 3, N'Có thể đăng ký', N'GV000001')
SET IDENTITY_INSERT [dbo].[DETAI] OFF
GO
SET IDENTITY_INSERT [dbo].[GIANGVIEN] ON 

INSERT [dbo].[GIANGVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau]) VALUES (1, N'Nguyễn Thị Bình', N'079566372487', N'Nữ', CAST(N'1978-12-19' AS Date), N'0976543765', N'TPHCM', N'thib@gmail.com', N'1234')
INSERT [dbo].[GIANGVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau]) VALUES (3, N'Trần Quang Khải', N'012150235253', N'Nam', CAST(N'1994-02-23' AS Date), N'0258283342', N'Đồng Nai', N'quangkhai@gmail.com', N'1234')
INSERT [dbo].[GIANGVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau]) VALUES (4, N'Mỹ Diệu', N'023848238482', N'Nữ', CAST(N'2000-05-30' AS Date), N'0238472843', N'Bình Dương', N'mydieu@gmail.com', N'1234')
INSERT [dbo].[GIANGVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau]) VALUES (5, N'Đô Tốc Độ', N'014882387385', N'Nam', CAST(N'1978-08-24' AS Date), N'0234732676', N'Thủ Đức', N'do@gmail.com', N'1234')
SET IDENTITY_INSERT [dbo].[GIANGVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[HOIDONG] ON 

INSERT [dbo].[HOIDONG] ([Id], [GVThamGia1], [GVThamGia2], [GVThamGia3], [SoLuong]) VALUES (6, N'GV000001', N'GV000003', N'GV000004', NULL)
INSERT [dbo].[HOIDONG] ([Id], [GVThamGia1], [GVThamGia2], [GVThamGia3], [SoLuong]) VALUES (7, N'GV000001', N'GV000003', N'GV000004', NULL)
INSERT [dbo].[HOIDONG] ([Id], [GVThamGia1], [GVThamGia2], [GVThamGia3], [SoLuong]) VALUES (8, N'GV000001', N'GV000003', N'GV000005', NULL)
SET IDENTITY_INSERT [dbo].[HOIDONG] OFF
GO
INSERT [dbo].[HOITHOAI] ([MaNhiemVu], [NguoiGui], [NoiDung], [ThoiGian]) VALUES (N'NV00102509', N'Nguyễn Thị Bình', N'hello                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2024-05-09T10:58:03.000' AS DateTime))
INSERT [dbo].[HOITHOAI] ([MaNhiemVu], [NguoiGui], [NoiDung], [ThoiGian]) VALUES (N'NV00102509', N'Nguyễn Văn An', N'hello                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2024-05-09T10:58:29.000' AS DateTime))
INSERT [dbo].[HOITHOAI] ([MaNhiemVu], [NguoiGui], [NoiDung], [ThoiGian]) VALUES (N'NV00102510', N'Nguyễn Văn An', N'HELLO                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2024-05-09T10:58:43.000' AS DateTime))
INSERT [dbo].[HOITHOAI] ([MaNhiemVu], [NguoiGui], [NoiDung], [ThoiGian]) VALUES (N'NV00102509', N'Nguyễn Văn An', N'Các bạn hoàn thành deadline đúng hạn nhé                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', CAST(N'2024-05-13T12:49:22.000' AS DateTime))
INSERT [dbo].[HOITHOAI] ([MaNhiemVu], [NguoiGui], [NoiDung], [ThoiGian]) VALUES (N'NV00102509', N'Nguyễn Văn An', N'23h59 14/5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', CAST(N'2024-05-13T12:50:43.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[LUANVAN] ON 

INSERT [dbo].[LUANVAN] ([Id], [MaDeTai], [MaGV], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [NgayDangKy], [NgayKetThuc], [TienDo], [MoTa], [NhanXet], [YeuCau], [SVThamGia], [TrangThai], [Diem], [MaHoiDong], [Diem1], [Diem2], [Diem3]) VALUES (1025, N'DT00000035', N'GV000001', N'Xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác học trên nền web', N'Java, NodeJS, HTML, CSS', N'Website', NULL, CAST(N'2024-05-09T03:40:52.000' AS DateTime), CAST(N'2024-05-23T03:40:52.000' AS DateTime), 100, N'Mô tả xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web', N'', N'Yêu cầu xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web', NULL, N'DaDangKy', NULL, N'HD000006', NULL, NULL, NULL)
INSERT [dbo].[LUANVAN] ([Id], [MaDeTai], [MaGV], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [NgayDangKy], [NgayKetThuc], [TienDo], [MoTa], [NhanXet], [YeuCau], [SVThamGia], [TrangThai], [Diem], [MaHoiDong], [Diem1], [Diem2], [Diem3]) VALUES (1026, N'DT00000033', N'GV000004', N'test', N'test', N'Website', NULL, CAST(N'2024-05-07T08:57:51.000' AS DateTime), CAST(N'2024-05-08T08:57:51.000' AS DateTime), 0, N'test', N'được tôi chấp nhận em', N'test', NULL, N'ChuaDangKy', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LUANVAN] ([Id], [MaDeTai], [MaGV], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [NgayDangKy], [NgayKetThuc], [TienDo], [MoTa], [NhanXet], [YeuCau], [SVThamGia], [TrangThai], [Diem], [MaHoiDong], [Diem1], [Diem2], [Diem3]) VALUES (1027, N'DT00000036', N'GV000001', N'đề tài', N'Python', N'Architecture', NULL, CAST(N'2024-05-09T09:05:40.000' AS DateTime), CAST(N'2024-05-23T09:05:40.000' AS DateTime), 100, N'mô tả đề tài', N'đc', N'yêu cầu đề tài', NULL, N'ChuaDangKy', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LUANVAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHIEMVU] ON 

INSERT [dbo].[NHIEMVU] ([MaLuanVan], [TuaDe], [MoTa], [TienDo], [NhanXet], [DemNhiemVu]) VALUES (N'LV00001025', N'Xây dựng database bằng diagram cho chương trình', N'Mô tả xây dựng database bằng diagram cho chương trình', 50, N'đã xây dựng được một nửa', 9)
INSERT [dbo].[NHIEMVU] ([MaLuanVan], [TuaDe], [MoTa], [TienDo], [NhanXet], [DemNhiemVu]) VALUES (N'LV00001025', N'Mô phỏng UI bằng canva', N'Mô tả mô phỏng UI bằng canva', 49, N'', 10)
SET IDENTITY_INSERT [dbo].[NHIEMVU] OFF
GO
SET IDENTITY_INSERT [dbo].[SINHVIEN] ON 

INSERT [dbo].[SINHVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau], [MaNhom]) VALUES (1, N'Nguyễn Văn An', N'088476356276', N'Nam', CAST(N'2004-08-05' AS Date), N'0786537242', N'Tiền Giang', N'vana@gmail.com', N'1234', N'LV00001025')
INSERT [dbo].[SINHVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau], [MaNhom]) VALUES (2, N'Nguyễn Mạnh Bảo', N'098472746264', N'Nam', CAST(N'2004-05-02' AS Date), N'0194837727', N'Hậu Giang', N'manhb@gmail.com', N'1234', N'LV00001026')
INSERT [dbo].[SINHVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau], [MaNhom]) VALUES (3, N'Đỗ Thị Châu', N'023428348842', N'Nữ', CAST(N'2004-04-03' AS Date), N'0234828523', N'Kiên Giang', N'thic@gmail.com', N'1234', N'LV00001026')
INSERT [dbo].[SINHVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau], [MaNhom]) VALUES (4, N'Trần Ngọc Dương', N'014941834823', N'Nữ', CAST(N'2004-03-12' AS Date), N'0148288258', N'An Giang', N'ngocd@gmail.com', N'1234', N'LV00001027')
INSERT [dbo].[SINHVIEN] ([Id], [HoTen], [Cmnd], [GioiTinh], [NgaySinh], [Sdt], [Diachi], [Email], [MatKhau], [MaNhom]) VALUES (5, N'Hùng Văn Quang', N'023129492499', N'Nam', CAST(N'2002-04-21' AS Date), N'0231239284', N'Bình Dương', N'cauvang@gmail.com', N'1234', N'YC00001047')
SET IDENTITY_INSERT [dbo].[SINHVIEN] OFF
GO
INSERT [dbo].[THONGBAO] ([MaNhom], [TieuDe], [NoiDung], [NgayGui], [MaGV]) VALUES (N'LV00001025', N'Hẹn meeting lần 1', N'7h tối chủ nhật các bạn vào đường link sau họp nhé!', CAST(N'2024-05-09T04:47:21.000' AS DateTime), N'GV000001')
INSERT [dbo].[THONGBAO] ([MaNhom], [TieuDe], [NoiDung], [NgayGui], [MaGV]) VALUES (N'LV00001025', N'Hẹn meeting lần 2', N'15/5 7h meeting', CAST(N'2024-05-09T11:00:06.000' AS DateTime), N'GV000001')
INSERT [dbo].[THONGBAO] ([MaNhom], [TieuDe], [NoiDung], [NgayGui], [MaGV]) VALUES (N'LV00001025', N'hẹn meeting lần 3', N'17h 14/5 meeting lần 3 nhé các bạn', CAST(N'2024-05-13T12:54:12.000' AS DateTime), N'GV000001')
GO
SET IDENTITY_INSERT [dbo].[YEUCAUDANGKY] ON 

INSERT [dbo].[YEUCAUDANGKY] ([Id], [MaDeTai], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [MaGV], [NgayDangKy], [NgayKetThuc], [MoTa], [NhanXet], [TrangThai], [YeuCau]) VALUES (1043, N'DT00000035', N'Xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác học trên nền web', N'Java, NodeJS, HTML, CSS', N'Website', NULL, N'GV000001', CAST(N'2024-05-09T03:40:52.000' AS DateTime), CAST(N'2024-05-23T03:40:52.000' AS DateTime), N'Mô tả xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web', N'', N'Đã duyệt', N'Yêu cầu xây dựng chương trình hỗ trợ đăng ký kế hoạch công tác năm học trên nền web')
INSERT [dbo].[YEUCAUDANGKY] ([Id], [MaDeTai], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [MaGV], [NgayDangKy], [NgayKetThuc], [MoTa], [NhanXet], [TrangThai], [YeuCau]) VALUES (1045, N'DT00000033', N'test', N'test', N'Website', NULL, N'GV000004', CAST(N'2024-05-09T08:57:51.000' AS DateTime), CAST(N'2024-05-23T08:57:51.000' AS DateTime), N'test', N'được tôi chấp nhận em', N'Đã duyệt', N'test')
INSERT [dbo].[YEUCAUDANGKY] ([Id], [MaDeTai], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [MaGV], [NgayDangKy], [NgayKetThuc], [MoTa], [NhanXet], [TrangThai], [YeuCau]) VALUES (1046, N'DT00000036', N'đề tài', N'Python', N'Architecture', NULL, N'GV000001', CAST(N'2024-05-09T09:05:40.000' AS DateTime), CAST(N'2024-05-23T09:05:40.000' AS DateTime), N'mô tả đề tài', N'đc', N'Đã duyệt', N'yêu cầu đề tài')
INSERT [dbo].[YEUCAUDANGKY] ([Id], [MaDeTai], [TenDeTai], [CongNghe], [LinhVuc], [MaNhom], [MaGV], [NgayDangKy], [NgayKetThuc], [MoTa], [NhanXet], [TrangThai], [YeuCau]) VALUES (1047, N'DT00000034', N'Xây dựng hệ thống wifi cho thành phố', N'Cisco, WireShark, C', N'Security', NULL, N'GV000001', CAST(N'2024-05-13T12:37:39.000' AS DateTime), CAST(N'2024-05-27T12:37:39.000' AS DateTime), N'Mô tả xây dựng hệ thống wifi cho thành phố', NULL, N'Chưa duyệt', N'Yêu cầu Mô tả xây dựng hệ thống wifi cho thành phố')
SET IDENTITY_INSERT [dbo].[YEUCAUDANGKY] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tmp_ms_x__B1BC11717D26A781]    Script Date: 5/13/2024 1:57:51 PM ******/
ALTER TABLE [dbo].[GIANGVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Cmnd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tmp_ms_x__B1BC1171F6A4D8B5]    Script Date: 5/13/2024 1:57:51 PM ******/
ALTER TABLE [dbo].[SINHVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Cmnd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tmp_ms_x__CA1E34AD02AE2960]    Script Date: 5/13/2024 1:57:51 PM ******/
ALTER TABLE [dbo].[SINHVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LUANVAN] ADD  DEFAULT ('ChuaDangKy') FOR [TrangThai]
GO
USE [master]
GO
ALTER DATABASE [EssayManagement] SET  READ_WRITE 
GO
