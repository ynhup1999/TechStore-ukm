CREATE DATABASE SHOPBANANA111
Go
USE [ShopBanana111]
GO
/****** Object:  Table [dbo].[BanBe]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanBe](
	[MaBB] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaSP] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayGui] [datetime] NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_BanBe] PRIMARY KEY CLUSTERED 
(
	[MaBB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[MaKH] [nvarchar](50) NULL,
	[NgayBL] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[MaBlog] [int] IDENTITY(1,1) NOT NULL,
	[TenBlog] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[MaLoaiBlog] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[MaBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaCT] [int] IDENTITY(0,1) NOT NULL,
	[MaHD] [int] NULL,
	[MaSP] [int] NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaNV] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[CachThanhToan] [nvarchar](50) NULL,
	[CachVanChuyen] [nvarchar](50) NULL,
	[PhiVanChuyen] [float] NULL,
	[MaTrangThai] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[TenNgNhan] [nvarchar](50) NULL,
	[DTNgNhan] [nvarchar](50) NULL,
	[DiaChiNgNhan] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
	[MaOnline] [varchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoiDap]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDap](
	[MaHDap] [int] NOT NULL,
	[CauHoi] [nvarchar](50) NULL,
	[TraLoi] [nvarchar](50) NULL,
	[NgayDua] [datetime] NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoiDap] PRIMARY KEY CLUSTERED 
(
	[MaHDap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[HieuLuc] [bit] NULL,
	[VaiTro] [int] NULL,
	[RandomKey] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[KhachHang] ADD [AuthyId] [varchar](50) NULL
ALTER TABLE [dbo].[KhachHang] ADD [PhoneNumber] [varchar](50) NULL
ALTER TABLE [dbo].[KhachHang] ADD [PhoneNumberConfirmed] [bit] NULL
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKho] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_KhoHang] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[codeKM] [nvarchar](50) NULL,
	[LoaiKM] [nvarchar](50) NULL,
	[MaKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaGY] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayGY] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[MaGY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[TenLoaiAlias] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiBlog]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBlog](
	[MaLoaiBlog] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiBlog] [nvarchar](max) NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiBlog] PRIMARY KEY CLUSTERED 
(
	[MaLoaiBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[Logo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaPC] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaPB] [varchar](7) NULL,
	[NgayPC] [datetime] NULL,
	[HieuLuc] [bit] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [int] IDENTITY(1,1) NOT NULL,
	[MaPB] [varchar](7) NULL,
	[MaTrang] [int] NULL,
	[Them] [bit] NULL,
	[Sua] [bit] NULL,
	[Xoa] [bit] NULL,
	[Xem] [bit] NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](7) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaHieu] [int] NULL,
	[TenSP] [nvarchar](max) NULL,
	[TenAlias] [nvarchar](max) NULL,
	[MaLoai] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[DonGia] [float] NULL,
	[Hinh] [nvarchar](max) NULL,
	[Hinh2] [nvarchar](max) NULL,
	[GiaCu] [float] NULL,
	[MaNCC] [nvarchar](50) NULL,
	[SpHot] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenHieu] [nvarchar](50) NULL,
	[Hinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [int] NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangWeb]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangWeb](
	[MaTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTrang] [nvarchar](50) NULL,
	[URL] [nvarchar](250) NULL,
 CONSTRAINT [PK_TrangWeb] PRIMARY KEY CLUSTERED 
(
	[MaTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 10-Jan-21 12:01:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[MaYT] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[MaKH] [nvarchar](50) NULL,
	[NgayChon] [datetime] NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_YeuThich] PRIMARY KEY CLUSTERED 
(
	[MaYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaKH], [NgayBL], [HoTen], [Email], [NoiDung]) VALUES (5, 3, N'LeMinhTu', CAST(N'2018-12-20 13:25:04.563' AS DateTime), N'Bùi Phương Dung', N'LeMinhTu', N' ahihi')
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaKH], [NgayBL], [HoTen], [Email], [NoiDung]) VALUES (6, 4, N'LeMinhTu', CAST(N'2018-12-20 13:27:10.527' AS DateTime), N'Bùi Phương Dung', N'LeMinhTu', N'Hàng dỏm ')
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaKH], [NgayBL], [HoTen], [Email], [NoiDung]) VALUES (7, 5, N'LeMinhTu', CAST(N'2018-12-20 13:29:13.780' AS DateTime), N'Bùi Phương Dung', N'LeMinhTu', N'Đẹp')
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaKH], [NgayBL], [HoTen], [Email], [NoiDung]) VALUES (10, 24, N'TranMinhTri', CAST(N'2018-12-21 13:56:00.227' AS DateTime), N'Lee Min Ho', N'lee@gmail.com', N' ok')
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaKH], [NgayBL], [HoTen], [Email], [NoiDung]) VALUES (11, 7, N'TranMinhTri', CAST(N'2018-12-21 13:56:09.717' AS DateTime), N'Lee Min Ho', N'lee@gmail.com', N' k')
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHD] ON 

INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaSP], [DonGia], [SoLuong], [GiamGia]) VALUES (10, 15, 15, 9900000, 1, NULL)
INSERT [dbo].[ChiTietHD] ([MaCT], [MaHD], [MaSP], [DonGia], [SoLuong], [GiamGia]) VALUES (11, 16, 4, 12900000, 1, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietHD] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [MaNV], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [GhiChu], [DienThoai], [TenNgNhan], [DTNgNhan], [DiaChiNgNhan], [TongTien], [MaOnline]) VALUES (15, N'dat123', CAST(N'2021-01-09 23:42:38.023' AS DateTime), NULL, NULL, N'Như', N'HCM', NULL, NULL, 0, 0, NULL, NULL, N'Như', NULL, N'HCM', 0, NULL)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [MaNV], [HoTen], [DiaChi], [CachThanhToan], [CachVanChuyen], [PhiVanChuyen], [MaTrangThai], [GhiChu], [DienThoai], [TenNgNhan], [DTNgNhan], [DiaChiNgNhan], [TongTien], [MaOnline]) VALUES (16, N'dat123', CAST(N'2021-01-09 23:44:54.347' AS DateTime), NULL, NULL, N'Như', N'TPHCM', N'Online', NULL, 0, 1, NULL, NULL, N'Như', NULL, N'HCM', 12900000, N'')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'bao', N'bao', N'Châu Thái Bảo', 1, CAST(N'1998-12-12' AS Date), N'TPHCM', N'12356789', N'bao@gmail.com', 0, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'dat123', N'AQB5k3X69oq9miE2OzFJLtPa0yHHZ2K92dqthqkxuc4L1e/gvo96cE/TovuzL7T2pw==', N'Như', 0, CAST(N'2020-12-29' AS Date), N'HCM', NULL, NULL, NULL, NULL, NULL, NULL, N'0910909302', 0)
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'LeMinhTu', N'LeMinhTu', N'Bùi Phương Dung', 0, CAST(N'1997-04-04' AS Date), N'TPHCM', N'123456789', N'dung@gmail.com', 0, 0, NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'nhu', N'AR6o5tdP7z7pX89EjleCnZD05k58zIi41EyUz54+GlDfPQsKViQogZfd1PF1e35Vjg==', N'Như', 0, CAST(N'2021-01-04' AS Date), N'HCM', NULL, NULL, NULL, NULL, NULL, NULL, N'0910909302', 0)
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'nhu11', N'AduM7H/tRF3ENLKhWGiM0ZwWK9zo+WkiunHcRQ2JaeVfAPkbDSb0I1kdd3QE4aWOOA==', N'Như', 0, CAST(N'2020-12-28' AS Date), N'HCM', NULL, NULL, NULL, NULL, NULL, NULL, N'0910909302', 0)
INSERT [dbo].[KhachHang] ([MaKH], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [HieuLuc], [VaiTro], [RandomKey], [AuthyId], [PhoneNumber], [PhoneNumberConfirmed]) VALUES (N'TranMinhTri', N'lee', N'Lee Min Ho', 1, CAST(N'1990-02-10' AS Date), N'TPHCM', N'896798261', N'lee@gmail.com', 0, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[KhoHang] ON 

INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (1, 1, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (2, 2, 97)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (3, 3, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (4, 4, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (5, 5, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (6, 6, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (7, 7, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (8, 8, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (9, 9, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (10, 10, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (11, 11, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (12, 12, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (13, 13, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (14, 14, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (15, 15, 99)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (16, 16, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (17, 17, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (18, 18, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (19, 19, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (20, 20, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (21, 21, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (22, 22, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (23, 23, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (24, 24, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (39, 31, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (40, 32, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (41, 33, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (42, 35, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (43, 36, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (44, 37, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (45, 38, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (46, 39, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (47, 40, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (50, 43, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (53, 46, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (56, 49, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (58, 51, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (59, 52, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (61, 54, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (62, 55, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (63, 56, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (64, 57, 100)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (65, 58, 0)
INSERT [dbo].[KhoHang] ([MaKho], [MaSP], [SoLuong]) VALUES (66, 59, 100)
SET IDENTITY_INSERT [dbo].[KhoHang] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([MaGY], [TieuDe], [NoiDung], [NgayGY], [HoTen], [Email], [DienThoai]) VALUES (1, N's', N's', CAST(N'2018-12-19 00:08:09.453' AS DateTime), N'a', N's', N's')
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa]) VALUES (1, N'Điện thoại', N'dien-thoai', N'0')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [TenLoaiAlias], [MoTa]) VALUES (2, N'LAPTOP', N'lap-top', N'0')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[LoaiBlog] ON 

INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (1, N'Review đồ điện tử ', N'2')
INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (2, N'Review đồ gia dụng', N'2')
INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (3, N'Review dụng cụ nhà bếp', N'2')
INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (4, N'Review Đồng hồ', N'3')
INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (5, N'Review giá cả', N'3')
INSERT [dbo].[LoaiBlog] ([MaLoaiBlog], [TenLoaiBlog], [MoTa]) VALUES (6, N'Review thái độ nhân viên', N'3')
SET IDENTITY_INSERT [dbo].[LoaiBlog] OFF
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [Email], [MatKhau]) VALUES (N'1', N'Dung', N'dung', N'123')

SET IDENTITY_INSERT [dbo].[SanPham] ON 
INSERT [dbo].[SanPham] ([MaSP], [MaHieu], [TenSP], [TenAlias], [MaLoai], [MoTa], [DonGia], [Hinh], [Hinh2], [GiaCu], [MaNCC], [SpHot]) VALUES 
(1, 1, N'Samsung Galaxy Z Fold2 5G', NULL, 1, N'Samsung Galaxy Z Fold2 5G Mới sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4900000, N'samsung-galaxy-z-fold-2-den.jpg', N'samsung-galaxy-z-fold-2-den.jpg', 5990000, NULL, NULL),
(2, 1, N'Samsung Galaxy Z Fold2 5G Đặc biết', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7500000, N'samsung-galaxy-z-fold-2-vang-600x600-600x600.jpg', N'samsung-galaxy-z-fold-2-vang-600x600-600x600.jpg', 8000000, NULL, NULL),
(3, 1, N'Samsung Galaxy Z Flip', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4899000, N'samsung-galaxy-z-flip-600x600-1-600x600.jpg', N'samsung-galaxy-z-flip-600x600-1-600x600.jpg', 4990000, NULL, NULL),
(4, 1, N'Samsung Galaxy Note 20 Ultra 5G', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 5400000, N'sam-sung-note-20-ultra-vang-dong-600x600.jpg', N'sam-sung-note-20-ultra-vang-dong-600x600.jpg', 5500000, NULL, NULL),
(5, 1, N'Samsung Galaxy S20+', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 10000000, N'samsung-galaxy-s20-plus-xanh-600x600-600x600.jpg', N'samsung-galaxy-s20-plus-xanh-600x600-600x600.jpg', 10900000, NULL, NULL),
(6, 1, N'Samsung Galaxy S20', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 5000000, N'samsung-galaxy-s20-hong-600x600-600x600.jpg', N'samsung-galaxy-s20-hong-600x600-600x600.jpg', 5790000, NULL, NULL),
(7, 1, N'Samsung Galaxy S10 Lite', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4000000, N'samsung-galaxy-s10-lite-xanhduong-600x600-600x600.jpg', N'samsung-galaxy-s10-lite-xanhduong-600x600-600x600.jpg', 4400000, NULL, NULL),
(8, 1, N'Samsung Galaxy A71', NULL, 1, N'Sữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7190000, N'samsung-galaxy-a71-bac-inox-new-600x600-600x600.jpg', N'samsung-galaxy-a71-bac-inox-new-600x600-600x600.jpg', 7490000, NULL,NULL ),
(9, 1, N'Samsung Galaxy A20s 64GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 18000000, N'samsung-galaxy-a20s-den-600x600.jpg', N'samsung-galaxy-a20s-den-600x600.jpg', 18990000, NULL, NULL),
(10, 1, N'Samsung Galaxy A50s', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9390000, N'samsung-galaxy-a50s-xanh-600x600.jpg', N'samsung-galaxy-a50s-xanh-600x600.jpg', 9490000, NULL, NULL),
(11, 2, N'iPhone 12 Pro Max 512GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 50000000, N'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', N'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 50100000, NULL, NULL),
(12, 2, N'iPhone 12 Pro Max 256GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 51000000, N'iphone-12-pro-max-xam-new-600x600-600x600.jpg', N'iphone-12-pro-max-xam-new-600x600-600x600.jpg', 51100000, NULL, 1),
(13, 2, N'iPhone 12 256GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 10070000, N'iphone-12-trang-new-600x600-600x600.jpg', N'iphone-12-trang-new-600x600-600x600.jpg', 12590000, NULL, 1),
(14, 2, N'iPhone 11 256GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 8490000, N'iphone-11-256gb-black-400x400.jpg', N'iphone-11-256gb-black-400x400.jpg', 9090000, NULL, 1),
(15, 2, N'iPhone 12 mini 128GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 18400000, N'iphone-12-mini-128gb-(2).jpg', N'iphone-12-mini-128gb-(2).jpg', 19900000, NULL, 1),
(16, 2, N'iPhone 11 128GB', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 12240000, N'iphone-11-128gb-(8).jpg', N'iphone-11-128gb-(8).jpg', 15990000, NULL, 1),
(17, 3, N'OPPO Find X2', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7990000, N'oppo-find-x2-black-600x600-2-600x600.jpg', N'oppo-find-x2-black-600x600-2-600x600.jpg', 8490000, NULL, NULL),
(18, 3, N'OPPO Reno3 Pro', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 3890000, N'oppo-reno3-pro-(10).jpg', N'oppo-reno3-pro-(10).jpg', 4590000, NULL, NULL),
(19, 3, N'OPPO Reno4 Pro', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 8790000, N'oppo-reno4-pro-trang-600x600.jpg', N'oppo-reno4-pro-trang-600x600.jpg', 11490000, NULL, NULL),
(20, 3, N'OPPO Reno5', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9200000, N'oppo-reno5-trang-600x600-1-600x600.jpg', N'oppo-reno5-trang-600x600-1-600x600.jpg', 10290000, NULL, NULL),
(21, 3, N'OPPO A93', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4990000, N'oppo-a93-trang-14-600x600.jpg', N'oppo-a93-trang-14-600x600.jpg', 5990000, NULL, NULL),
(22, 4, N'Xiaomi Mi 10T Pro 5G', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 3490000, N'xiaomi-mi-10t-pro-den-600x600.jpg', N'xiaomi-mi-10t-pro-den-600x600.jpg', 4990000, NULL, NULL),
(23, 4, N'Xiaomi Redmi Note 9 Pro (6GB/128GB)', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 5760000, N'xiaomi-redmi-note-9-pro-white-600x600.jpg', N'xiaomi-redmi-note-9-pro-white-600x600.jpg', 6950000, NULL, NULL),
(24, 4, N'Xiaomi Redmi Note 9 Pro (6GB/64GB)', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9390000, N'xiaomi-redmi-note-9-pro-xam-600x600.jpg', N'xiaomi-redmi-note-9-pro-xam-600x600.jpg', 9490000, NULL, NULL),
(25, 4, N'Xiaomi Redmi Note 8 (4GB/128GB)', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7490000, N'xiaomi-redmi-note-8-128gb-den-600x600.jpg', N'xiaomi-redmi-note-8-128gb-den-600x600.jpg', 8490000, NULL, NULL),
(26, 4, N'Xiaomi Redmi Note 8 (4GB/64GB)', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 1806000, N'xiaomi-redmi-note-8-white-1-600x600.jpg', N'xiaomi-redmi-note-8-white-1-600x600.jpg', 2580000, NULL, NULL),
(27, 5, N'Huawei Nova 7i', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 8490000, N'huawei-nova-7i-pink-600x600-1-600x600.jpg', N'huawei-nova-7i-pink-600x600-1-600x600.jpg', 8690000, NULL, 1),
(28, 5, N'Huawei Y6p', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9390000, N'huawei-y6p-xanh-new-600x600-600x600.jpg', N'huawei-y6p-xanh-new-600x600-600x600.jpg', 9990000, NULL, NULL),
(29, 6, N'Vivo X50 Pro', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4590000, N'vivo-x50-pro-14-600x600.jpg', N'vivo-x50-pro-14-600x600.jpg', 4690000, NULL, NULL),
(30, 6, N'Vivo V19', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 3990000, N'vivo-v19-xanh-new-600x600-600x600.jpg', N'vivo-v19-xanh-new-600x600-600x600.jpg', 4190000, NULL, NULL),
(31, 6, N'Vivo V19 Neo', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 5990000, N'vivo-v19-neo-den-600x600.jpg', N'vivo-v19-neo-den-600x600.jpg', 6990000, NULL, NULL),
(32, 6, N'Vivo V20 SE', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 4950000, N'vivo-v20-se-600x600-600x600.jpg', N'vivo-v20-se-600x600-600x600.jpg', 4990000, NULL, NULL),
(33, 6, N'Vivo Y51 (2020)', NULL, 1, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9390000, N'vivo-y51-bac-600x600-600x600.jpg', N'vivo-y51-bac-600x600-600x600.jpg', 9990000, NULL, NULL),
(34, 7, N'MacBook Air 2017 128GB (MQD32SA/A)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 19890000, N'apple-macbook-air-mqd32sa-a-i5-5350u-400x400.jpg', N'apple-macbook-air-mqd32sa-a-i5-5350u-400x400.jpg', 23990000, NULL, NULL),
(35, 8, N'Apple MacBook Air 2020 i3 256GB (MWTJ2SA/A)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 20990000, N'apple-macbook-air-2020-mgnd3saa-400x400.jpg', N'apple-macbook-air-2020-mgnd3saa-400x400.jpg', 23990000, NULL, NULL),
(36, 7, N'MacBook Air M1 2020 256GB (MGN93SA/A)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 17390000, N'apple-macbook-air-2020-mgn93saa-1-400x400.jpg', N'apple-macbook-air-2020-mgn93saa-1-400x400.jpg', 21490000, NULL, NULL),
(37, 9, N'Asus VivoBook A415EA i5 1135G7 (EB355T)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 16490000, N'asus-vivobook-a415ea-i5-eb355t-400x400.jpg', N'asus-vivobook-a415ea-i5-eb355t-400x400.jpg', 17990000, NULL, NULL),
(38, 9, N'Asus VivoBook A415EA i5 1135G7 (EB354T)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 13890000, N'asus-vivobook-a415ea-i5-eb354t-400x400.jpg', N'asus-vivobook-a415ea-i5-eb354t-400x400.jpg', 14990000, NULL, NULL),
(39, 9, N'Asus VivoBook X509JP i5 1035G1 (EJ023T)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 11190000, N'asus-vivobook-x509jp-i5-ej023t-2gb-221617-400x400.jpg', N'asus-vivobook-x509jp-i5-ej023t-2gb-221617-400x400.jpg', 11490000, NULL, NULL),
(40, 9, N'Asus VivoBook X509MA N5030 (EJ256T)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 8490000, N'asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400.jpg', N'asus-vivobook-x509ma-n5030-ej256t-171120-051158-400x400.jpg', 10490000, NULL, NULL),
(41, 10, N'Acer Aspire 3 A315 56 58EB i5 1035G1', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7190000, N'acer-aspire-3-a315-56-i5-nxhs5sv00b-usb-224584-400x400.jpg', N'acer-aspire-3-a315-56-i5-nxhs5sv00b-usb-224584-400x400.jpg', 9290000, NULL, NULL),
(42, 10, N'Acer Nitro 5 AN515 55 5206 i5 10300H (NH.Q7NSV.007)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7890000, N'acer-nitro-5-an515-55-5206-i5-nhq7nsv007-400x400.jpg', N'acer-nitro-5-an515-55-5206-i5-nhq7nsv007-400x400.jpg', 8390000, NULL, NULL),
(43, 10, N'Acer Aspire A514 53G 513J i5 1035G1 (NX.HYWSV.001)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 8390000, N'acer-aspire-a514-53g-513j-i5-nxhywsv001-223658-1-400x400.jpg', N'acer-aspire-a514-53g-513j-i5-nxhywsv001-223658-1-400x400.jpg', 8690000, NULL, NULL),
(44, 10, N'Acer Nitro 5 A515 55 72R2 i7 10870H (NH.Q7NSV.005)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 7190000, N'acer-nitro-5-a515-55-72r2-i7-nhq7nsv005-174520-064552-400x400.jpg', N'acer-nitro-5-a515-55-72r2-i7-nhq7nsv005-174520-064552-400x400.jpg', 7490000, NULL, NULL),
(45, 11, N'Dell Vostro 5502 i5 1135G7 (70231340)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 18990000, N'dell-vostro-5502-i5-70231340-065721-095700-400x400.jpg', N'dell-vostro-5502-i5-70231340-065721-095700-400x400.jpg', 21990000, NULL, NULL),
(46, 11, N'Dell Vostro 3590 i7 10510U (GRMGK2)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 12290000, N'dell-vostro-3590-i7-grmgk2-220718-220718-400x400.jpg', N'dell-vostro-3590-i7-grmgk2-220718-220718-400x400.jpg', 12290000, NULL, NULL),
(47, 11, N'Dell Inspiron 5593 i5 1035G1 (7WGNV1)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 9390000, N'dell-inspiron-5593-i5-7wgnv1-213535-400x400.jpg', N'dell-inspiron-5593-i5-7wgnv1-213535-400x400.jpg', 9490000, NULL, NULL),
(48, 11, N'Dell Inspiron 5406 i5 1135G7 (70232602)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 25000000, N'dell-inspiron-5406-i5-70232602-061521-101532-400x400.jpg', N'dell-inspiron-5406-i5-70232602-061521-101532-400x400.jpg', 50100000, NULL, NULL),
(49, 11, N'Dell Inspiron 5502 i5 1135G7 (1XGR11)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 41990000, N'dell-inspiron-5502-i5-1xgr11-400x400.jpg', N'dell-inspiron-5502-i5-1xgr11-400x400.jpg', 42990000, NULL, NULL),
(50, 12, N'LG Gram 15 i5 1035G7 (15Z90N-V.AR55A5)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 25990000, N'lg-gram-15-i5-15z90n-var55a5-153920-033925-400x400.jpg', N'lg-gram-15-i5-15z90n-var55a5-153920-033925-400x400.jpg', 36100000, NULL, NULL),
(51, 12, N'LG Gram 14 i5 1035G7 (14Z90N-V.AR52A5)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 29990000, N'lg-gram-14-i5-14z90n-var52a5-310320-040353-400x400.jpg', N'lg-gram-14-i5-14z90n-var52a5-310320-040353-400x400.jpg', 32900000, NULL, NULL),
(52, 12, N'LG Gram 17 i7 1065G7 (17Z90N-V.AH75A5)', NULL, 2, N'Sở hữu thiết kế hiện đại, đón đầu xu thế mới với màn hình rộng 6.7 inch, cùng công nghệ màn hình LTPS, 120Hz', 28990000, N'lg-gram-17-i7-17z90n-vah75a5-142120-022156-400x400.jpg', N'lg-gram-17-i7-17z90n-vah75a5-142120-022156-400x400.jpg', 32900000, NULL, NULL)

SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (1, N'SamSung', N'Samsung42-b_25.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (2, N'IPHONE', N'iPhone-(Apple)42-b_52.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (3, N'OPPO', N'OPPO42-b_5.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (4, N'XIAOMI', N'Xiaomi42-b_45.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (5, N'HUAWEI', N'Xiaomi42-b_45.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (6, N'VIVO', N'Vivo42-b_50.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (7, N'MACBOOK', N'MacBook44-b_27.png')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (8, N'APPLE', N'Vivo42-b_50.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (9, N'ASUS', N'Asus44-b_1.png')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (10, N'ACCER', N'Acer44-b_25.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (11, N'DELL', N'Dell44-b_2.jpg')
INSERT [dbo].[ThuongHieu] ([MaHieu], [TenHieu], [Hinh]) VALUES (12, N'LG', N'LG44-b_32.jpg')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF

INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (0, N'Chờ xác nhận', N'')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (1, N'Đang chuẩn bị hàng', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (2, N'Đang giao hàng', NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai], [MoTa]) VALUES (3, N'Đã giao hàng', NULL)
SET IDENTITY_INSERT [dbo].[YeuThich] ON 

INSERT [dbo].[YeuThich] ([MaYT], [MaSP], [MaKH], [NgayChon], [MoTa]) VALUES (33, 13, N'LeMinhTu', CAST(N'2018-12-21 09:00:31.517' AS DateTime), NULL)
INSERT [dbo].[YeuThich] ([MaYT], [MaSP], [MaKH], [NgayChon], [MoTa]) VALUES (34, 1, N'LeMinhTu', CAST(N'2018-12-21 09:02:17.490' AS DateTime), NULL)
INSERT [dbo].[YeuThich] ([MaYT], [MaSP], [MaKH], [NgayChon], [MoTa]) VALUES (36, 43, N'LeMinhTu', CAST(N'2018-12-21 13:45:12.523' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[YeuThich] OFF
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_BanBe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_BanBe_KhachHang]
GO
ALTER TABLE [dbo].[BanBe]  WITH CHECK ADD  CONSTRAINT [FK_BanBe_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BanBe] CHECK CONSTRAINT [FK_BanBe_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_KhachHang]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_LoaiBlog] FOREIGN KEY([MaLoaiBlog])
REFERENCES [dbo].[LoaiBlog] ([MaLoaiBlog])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_LoaiBlog]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChuDe]  WITH CHECK ADD  CONSTRAINT [FK_ChuDe_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChuDe] CHECK CONSTRAINT [FK_ChuDe_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TrangThai] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TrangThai]
GO
ALTER TABLE [dbo].[HoiDap]  WITH CHECK ADD  CONSTRAINT [FK_HoiDap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoiDap] CHECK CONSTRAINT [FK_HoiDap_NhanVien]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_KhachHang]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_PhongBan]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_PhongBan]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TrangWeb] FOREIGN KEY([MaTrang])
REFERENCES [dbo].[TrangWeb] ([MaTrang])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TrangWeb]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Loai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[ThuongHieu]  WITH CHECK ADD  CONSTRAINT [FK_ThuongHieu_ThuongHieu] FOREIGN KEY([MaHieu])
REFERENCES [dbo].[ThuongHieu] ([MaHieu])
GO
ALTER TABLE [dbo].[ThuongHieu] CHECK CONSTRAINT [FK_ThuongHieu_ThuongHieu]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_KhachHang]
GO
