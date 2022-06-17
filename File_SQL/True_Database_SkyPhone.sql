CREATE DATABASE SkyPhone;
go
USE SkyPhone;
go

CREATE TABLE TaiKhoan(
	[email] [varchar](20) PRIMARY KEY NOT NULL,
	[password][varchar](35) NOT NULL,
	[ho_ten] [nvarchar](20) NOT NULL,
	[sdt] [varchar](11) NOT NULL UNIQUE,
	[cmnd] [varchar](12) NOT NULL UNIQUE,
	[vai_tro] [int] NOT NULL,
	[hinh] [nvarchar](50) NOT NULL,
)

CREATE TABLE NhanHang(
	[id] [int] PRIMARY KEY IDENTITY NOT NULL,
	[ten_nhan_hang] [nvarchar](100) NOT NULL
)

CREATE TABLE DienThoai(
	[id_dt] [varchar](255) PRIMARY KEY NOT NULL DEFAULT(NEWID()),
	[ten_dt] [nvarchar](50) NOT NULL,
	[dung_luong] [varchar](20) NOT NULL,
	[mau] [nvarchar](20) NOT NULL,
	[tra_gop] [nvarchar](20) NULL,
	[nha_sx] [nvarchar](20) NULL,
	[gia] [float] NOT NULL,
	[mo_ta] [nvarchar](MAX) NULL,
	[bao_hanh] [nvarchar](MAX) NULL,
	[hoat_dong] [bit] NULL DEFAULT ((0)),
	[so_luong][int] NOT NULL,
	[id_nhan_hang] [int] NOT NULL FOREIGN KEY REFERENCES NhanHang (id)
)


CREATE TABLE HoaDon(
	[id_hd] [varchar](255) PRIMARY KEY NOT NULL DEFAULT(NEWID()),
	[nguoi_thanh_toan] [nvarchar](20) NULL,
	[so_luong_don] [int] NOT NULL,
	[tong_gia] [float] NOT NULL,
	[dia_chi_gui] [nvarchar](MAX) NOT NULL,
	[ten_nguoi_nhan] [nvarchar](20) NOT NULL,
	[sdt_nguoi_nhan] [nvarchar](11) NOT NULL,
	[dia_chi_nhan] [nvarchar](MAX) NOT NULL,
	[ngay_tao_don] [date] NOT NULL DEFAULT(GETDATE()),
	[tinh_trang] [int] NOT NULL
)

CREATE TABLE HDChiTiet(
	[stt] [int] PRIMARY KEY NOT NULL IDENTITY,
	[so_luong_don] [int] NOT NULL,
	[tong_gia_dct] [money] NOT NULL,
	[sdt_nguoi_nhan] [nvarchar](11) NOT NULL,
	[id_hd] [varchar](255) NOT NULL FOREIGN KEY REFERENCES HoaDon (id_hd),
	[id_dt] [varchar](255) NOT NULL FOREIGN KEY REFERENCES DienThoai (id_dt)
)
CREATE TABLE DanhGia(
	[stt] [int] PRIMARY KEY NOT NULL IDENTITY,
	[sdt] [nvarchar](11) NOT NULL,
	[noi_dung] [nvarchar](MAX) NOT NULL,
	[trang_thai] [bit] default(0),
	[id_dt] [varchar](255) NOT NULL FOREIGN KEY REFERENCES DienThoai (id_dt)
)