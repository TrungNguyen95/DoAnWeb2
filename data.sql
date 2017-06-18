USE [master]
GO
/****** Object:  Database [web2-mobishop]    Script Date: 06/16/2017 22:32:05 ******/
CREATE DATABASE [web2-mobishop] ON  PRIMARY 
( NAME = N'web2-mobishop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\web2-mobishop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'web2-mobishop_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\web2-mobishop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [web2-mobishop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web2-mobishop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web2-mobishop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [web2-mobishop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [web2-mobishop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [web2-mobishop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [web2-mobishop] SET ARITHABORT OFF
GO
ALTER DATABASE [web2-mobishop] SET AUTO_CLOSE ON
GO
ALTER DATABASE [web2-mobishop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [web2-mobishop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [web2-mobishop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [web2-mobishop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [web2-mobishop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [web2-mobishop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [web2-mobishop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [web2-mobishop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [web2-mobishop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [web2-mobishop] SET  DISABLE_BROKER
GO
ALTER DATABASE [web2-mobishop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [web2-mobishop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [web2-mobishop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [web2-mobishop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [web2-mobishop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [web2-mobishop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [web2-mobishop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [web2-mobishop] SET  READ_WRITE
GO
ALTER DATABASE [web2-mobishop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [web2-mobishop] SET  MULTI_USER
GO
ALTER DATABASE [web2-mobishop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [web2-mobishop] SET DB_CHAINING OFF
GO
USE [web2-mobishop]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Apple', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Asus', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX04', N'Dell', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX05', N'HP', N'0')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Điện thoại', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Laptop', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Macbook', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP04', N'Máy tính bảng', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP05', N'Phụ kiện chính hãng', N'0')
/****** Object:  Table [dbo].[GioHang]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](500) NULL,
	[MaSanPham] [nvarchar](50) NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
	[HinhChinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IDGH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (30, N'65f9aacf-1c0e-4935-aef4-2075a4916863                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'IP', N'iPhone 7 Plus 128GB', 5, 23990000, 119950000, N'IP.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (31, N'787e1c05-9999-4890-b9d5-741807a9bbe3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ip6s', N'iPhone 6s 128GB', 5, 18890000, 94450000, N'ip6s.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (32, N'787e1c05-9999-4890-b9d5-741807a9bbe3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ltphppro', N'HP Probook 450', 1, 15000000, 15000000, N'ltphppro.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (33, N'eedaba4a-4f71-4fda-841b-b284afb3cf75                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ss8s', N'Samsung Galaxy S8', 9, 18200000, 163800000, N'ss8s.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (34, N'65f9aacf-1c0e-4935-aef4-2075a4916863                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'sp01', N'test', 4, 9999, 39996, N'sp01.png')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'65f9aacf-1c0e-4935-aef4-2075a4916863', N'admin@gmail.com', 0, N'ACkLx/Ve5TKXO9KPcPLC8pn5+5ayfU4XSFmAsPnb9ZC+HqCAIWX2JdLlFh7GngoCbQ==', N'3d7ef185-9e5a-4328-9242-c0da7fc47381', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'787e1c05-9999-4890-b9d5-741807a9bbe3', N'nguyentrung6626@gmail.com', 0, N'AOBQNbw6Ml71JiN0rCAJ3ST3D2QncLeeJctT1d/aRwOgaEPR3BmXygDz9/bhzHiH5A==', N'8ea19554-b7fd-4b39-ab68-70bf95c4464e', NULL, 0, 0, NULL, 1, 0, N'nguyentrung6626@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'eedaba4a-4f71-4fda-841b-b284afb3cf75', N'abc@gmail.com', 0, N'AEHamJU4e3TKM5PQusjLEyCAO0liw4UUQLGWjLYZMXA3p/K0NdEs3h1QjR6nB7FISQ==', N'79871949-568b-4bf7-baca-468ecb7ce0bb', NULL, 0, 0, NULL, 1, 0, N'abc@gmail.com')
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0ad19520-43cf-4af6-b0c8-e9e2acd63fba', N'Admin')
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705241211035_InitialCreate', N'ShopOnline.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0C30B0C8E2A962B148168BC5FEF3F73FA6DF3F07BEF584E38484F4CC3E9A1CDA16A66EE811BA3AB353B6FCF683FDFD777FFFDBF4D20B9EAD9F0ABA134E072D6972663F32169D3A4EE23EE200259380B87198844B3671C3C0415EE81C1F1EFEDB393A723040D8806559D34F296524C0D9077CCE42EAE288A5C8BF093DEC27A21C6AE619AA758B029C44C8C567F6FC318CEEA84F289EE4C4B675EE130482CCB1BFB42D4469C81003314F3F2778CEE290AEE6111420FFE125C240B7447E8285F8A71579DF9E1C1EF39E3855C302CA4D13160603018F4E846A1CB9F95A0AB64BD581F22E41C9EC85F73A53E0997DEDE1ACE853E883026486A7333FE6C467F64DC9E23C896E319B140D2739E4550C70BF86F1D7491DF1C0EADDEEA034A5E3C921FF7760CD529FA5313EA3386531F20FACFB74E113F7BFF8E521FC8AE9D9C9D16279F2E1DD7BE49DBCFF173E7957EF29F415E81A0550741F87118E4136BC2CFB6F5B4EB39D23372C9BD5DAE45A015B8259615B37E8F923A62BF608F3E5F8836D5D9167EC1525C2B83E530293081AB13885CFDBD4F7D1C2C765BDD3CA93FFDFC2F5F8DDFB51B8DEA227B2CA865EE20F13278679F509FB596DF248A27C7A35C6FB8B20BB8AC3807F37ED2BAFFD320FD3D8E59D098D240F285E61D6946EEA54C6DBCBA439D4F8665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BCAFCBB7B7C59D47110C5E665A5C236D06A7EC5513A9F1815591548673D4D7702874E8AFBC0E5E0688F8232C843DB8800BB2247180CB5EFE1082D9213A58E67B9424B00E78FF41C9638BE8F0E708A2CFB19BC6609E738682E8D5B9DD3F8614DFA6C1825BFDF6788D36340FBF8657C865617C4979AB8DF13E86EED7306597D4BB400C7F666E01C83F1F48D01F601471CE5D1727C9151833F6662178D805E0356527C783E1F8FAB46B4764E62312E83D116925FD529056DE889E42F1480C643AAFA44DD48FE18AD07EA216A46651738A4E5105D9505139583F4905A559D08CA053CE9C6A343F2F1BA1F11DBD0C76FF3DBDCD366FD35A5053E31C5648FC23A6388665CCBB478CE1985623D067DDD885B3900D1F67FAEA7B53C6E927E4A763B35A6B36648BC0F8B32183DDFFD9908909C54FC4E35E498FE34F410CF0BDE8F527ABEE392749B6EDE9D0E8E6B6996F670D304D97F324095D92CD024DE04B842D9AF2830F6775C730F2DEC87110E818183AE15B1E9440DF6CD9A8EEE805F631C3D6B99B070667287191A7AA113AE40D10ACD851358255F190A670FF547882A5E3983742FC1094C04C2594A9D382509744C8EFD492D4B2E716C6FB5EF2906B2E70842967D8A9893ECCF5E10F2E40C9471A942E0D4D9D9AC5B51BA2C16B358D79970B5B8DBB1295D88A4D76F8CE06BB14FEDBAB1866BBC6B6609CED2AE923803194B70B03156795BE06201F5CF6CD40A51393C140854BB515036D6A6C0706DA54C99B33D0FC88DA77FCA5F3EABE9967F3A0BCFD6DBD555D3BB0CD863EF6CC3473DF13DA30688163D53C2F16BC123F33CDE10CE414E7B344B8BAB28970F03966CD904DE5EF6AFD50A71D4436A236C0CAD03A40C525A002A44CA801C215B1BC56E984173100B688BBB5C28AB55F82ADD9808A5DBF0CAD119AAF4C65E3EC75FA287B565A8362E4BD0E0B351C8D41C88B57B3E33D94628ACBAA8AE9E30B0FF1866B1D1383D1A2A00ECFD5A0A4A233A36BA930CD6E2DE91CB2212ED9465A92DC2783968ACE8CAE2561A3DD4AD2380503DC828D54D4DCC2479A6C45A4A3DC6DCABAA993A7488982A963C8A59ADEA028227455CBAD1225D63C4FAC9A7D3B1F9E7214E4188E9B68328F4A694B4E2C8CD10A4BB5C01A24BD2271C22E10430BC4E33C332F50C8B47BAB61F92F58D6B74F75108B7DA0A0E67F8B9B55E5EABEB1D5AABE8880B8820E06DCA1C9A2E89AE1D737B778AA1BF251AC09DCCF423F0DA8D9BF32B7CEAFEFEAEDF3121561EA48F22BFE93A22CC5CB6D6ABED7B8A873629C312ABD97F5C7C90C61D276E17BD6F56DF247CD284578AA8E620A59ED6CDC4C6ECC90B1921DC4E143D589F03AB34A64A5D40144D1408C5A62830256ABEB8FDACC3DA963366BFA234A09267548A96A8094F534928690F58AB5F00C1AD553F4E7A0268ED4D1D5DAFEC89A14923AB4A67A0D6C8DCC725D7F544D96491D5853DD1FBB4A3991D7D03DDEB78CC7967537AEFC60BBD9CE65C0789D05719C8DAF767F5F07AA150FC41237F40A9828DF4B63329EEED635A63C9CB199311930CCEB4EE3E2BBB9ECB4DED69B311BB7D98DA5BDED36DF8C37CC645FD53094B39D4C52722FCF78D2596E2ACE55DD8F679483564E625B851AC19C5E128683092798CC7FF1673EC17C112F086E10254B9CB03C83C38673E007E901CEFE3C867192C4F335E752D38B98E6986D21198B3EA1D87D44B19A1AB1C183910A54893A5F530F3F9FD9FFCB5A9D66010CFE57567C605D279F29F925858A8738C5D66F6AAAE73809F4ED27AC3D7DEED05FABD73F7FC99B1E587731CC9853EB50D2E53A23DC7C0431489ABCE906D2ACFD34E2ED4EA8C6CB032DAA3421D67F68B0206C9447068594DF04E8F91F4345D33E24D80851F358602CBC5154687A0CB00E96F12180079F2C7B0830ACB3FA8701EB88667C1440E87030F94940FF65A868B9C3AD467324DAC69294E9B933A57AA3FCCA5DEF4D4AE6F546135DCDAE1E00B74106F51A96F1C6928F47DB1D35B9C5A361EFD2B45F3DA1785F7288ABEC8EDDA60E6F335BB8E54EE82F9524BC07696D9A349DDDA7026FDBD64C61DC3DCFA71C96F0BB67C62692B7769FD6BB6D63338579F7DCD80625EFEE99ADED6AFFDCB1A5F5DE42779E8AAB661519AE6374B1E0AE54DB3C700E27FC450846907B94F90B497D6E575B5E6A07C38AC4CCD49C54263356268EC257A168673BACAF62C36FEDACA069676B48C56CE32DD6FF56DE82A69DB721C1711749C2DA14435DE276C73AD69601F59692821B3DE9C841EFF2595BEFD6DF520EF0284A69CC1EC31DF1DB49F91D4525634E9D0129BEEA752FEC9DB55F5484FD3B21AB0A82FFBE22C56E63D72C69AEE9322C366F49A282448AD0DC60863CD852CF634696C86550CD63CCD913EF2C6EC76F3A16D8BBA677298B52065DC6C1C26F04BCB813D0C63FCB636ECA3CBD8BB25F2B19A30B2026E1B1F93BFA434A7CAF94FB4A1313324070EF424474F958321ED95DBD9448B721ED0924D4573A450F38887C004BEEE81C3DE1756403F3FB8857C87DA922802690EE8168AA7D7A41D02A46412230AAF6F00936EC05CFDFFD1FA052997058540000, N'6.1.3-40302')
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[ChiTietCauHinh] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'asux', N'LSP02', N'NSX03', N'Asus UX410UA-GV063', N'<p><strong><span style="color:#c0392b">Bộ xử l&yacute;</span></strong><br />
H&atilde;ng CPU :&nbsp;&nbsp; &nbsp;Intel<br />
C&ocirc;ng nghệ CPU :&nbsp;&nbsp; &nbsp;Core i5<br />
Loại CPU :&nbsp;&nbsp; &nbsp;7200U<br />
Tốc độ CPU :&nbsp;&nbsp; &nbsp;2.50 GHz<br />
Bộ nhớ đệm :&nbsp;&nbsp; &nbsp;3 MB Cache<br />
Tốc độ tối đa :&nbsp;&nbsp; &nbsp;3.10 GHz<br />
<span style="color:#c0392b"><strong>Bo mạch</strong></span><br />
Hỗ trợ RAM tối đa :&nbsp;&nbsp; &nbsp;12 GB<br />
<span style="color:#c0392b"><strong>RAM</strong></span><br />
Dung lượng RAM :&nbsp;&nbsp; &nbsp;4 GB<br />
Loại RAM :&nbsp;&nbsp; &nbsp;DDR4<br />
Tốc độ BUS RAM :&nbsp;&nbsp; &nbsp;2133 MHz<br />
Số lượng khe RAM :&nbsp;&nbsp; &nbsp;1<br />
<span style="color:#c0392b"><strong>Đĩa cứng</strong></span><br />
Loại ổ đĩa :&nbsp;&nbsp; &nbsp;HDD<br />
Dung lượng ổ đĩa :&nbsp;&nbsp; &nbsp;500 GB<br />
Khe cắm ổ SSD :&nbsp;&nbsp; &nbsp;C&oacute;<br />
<span style="color:#c0392b"><strong>Đồ họa</strong></span><br />
Chipset đồ họa :&nbsp;&nbsp; &nbsp;Intel HD Graphics 620<br />
Bộ nhớ đồ họa :&nbsp;&nbsp; &nbsp;Share<br />
Kiểu thiết kế đồ họa :&nbsp;&nbsp; &nbsp;T&iacute;ch hợp<br />
<span style="color:#c0392b"><strong>M&agrave;n h&igrave;nh</strong></span><br />
K&iacute;ch thước m&agrave;n h&igrave;nh :&nbsp;&nbsp; &nbsp;14 inch<br />
Độ ph&acirc;n giải (W x H) :&nbsp;&nbsp; &nbsp;1920 x 1080 pixels<br />
C&ocirc;ng nghệ m&agrave;n h&igrave;nh :&nbsp;&nbsp; &nbsp;Anti-Glare Panel with 72% NTSC with IPS<br />
Cảm ứng :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
<span style="color:#c0392b"><strong>&Acirc;m thanh</strong></span><br />
K&ecirc;nh &acirc;m thanh :&nbsp;&nbsp; &nbsp;2.0<br />
Th&ocirc;ng tin th&ecirc;m :&nbsp;&nbsp; &nbsp;Sonic Master<br />
<span style="color:#c0392b"><strong>Đĩa quang</strong></span><br />
C&oacute; sẵn đĩa quang :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Loại đĩa quang :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
T&iacute;nh năng mở rộng &amp; cổng giao tiếp<br />
Cổng giao tiếp :&nbsp;&nbsp; &nbsp;2x USB 2.0, USB 3.0, USB-C, HDMI<br />
T&iacute;nh năng mở rộng :&nbsp;&nbsp; &nbsp;Multi TouchPad<br />
<span style="color:#c0392b"><strong>Giao tiếp mạng</strong></span><br />
LAN :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Chuẩn Wi-Fi :&nbsp;&nbsp; &nbsp;IEEE 802.11ac<br />
<strong><span style="color:#c0392b">Card Reader</span></strong><br />
Đọc thẻ nhớ :&nbsp;&nbsp; &nbsp;3 -in-1<br />
Khe đọc thẻ nhớ :&nbsp;&nbsp; &nbsp;SD/ SDHC/ SDXC<br />
<span style="color:#c0392b"><strong>Webcam</strong></span><br />
Độ ph&acirc;n giải :&nbsp;&nbsp; &nbsp;0.3 MP<br />
Th&ocirc;ng tin th&ecirc;m :&nbsp;&nbsp; &nbsp;VGA Webcam<br />
Hệ điều h&agrave;nh, phầm mềm c&oacute; sẵn<br />
Hệ điều h&agrave;nh :&nbsp;&nbsp; &nbsp;Free DOS<br />
Phần mềm c&oacute; sẵn :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
<span style="color:#c0392b"><strong>PIN/Battery</strong></span><br />
Loại pin :&nbsp;&nbsp; &nbsp;3 Cell<br />
Kiểu pin :&nbsp;&nbsp; &nbsp;Liền<br />
<span style="color:#1abc9c"><strong>Th&ocirc;ng tin kh&aacute;c</strong></span><br />
Cảm biến v&acirc;n tay :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Đ&egrave;n b&agrave;n ph&iacute;m :&nbsp;&nbsp; &nbsp;C&oacute;<br />
B&agrave;n ph&iacute;m số :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Phụ kiện k&egrave;m theo :&nbsp;&nbsp; &nbsp;Sạc, S&aacute;ch HDSD<br />
<span style="color:#27ae60">K&iacute;ch thước &amp; trọng lượng</span><br />
K&iacute;ch Thước :&nbsp;&nbsp; &nbsp;323 x 223 x 18,95 cm<br />
Trọng lượng :&nbsp;&nbsp; &nbsp;1.4 Kg<br />
Chất liệu :&nbsp;&nbsp; &nbsp;Nh&ocirc;m<br />
<span style="color:#9b59b6"><strong>Bảo h&agrave;nh</strong></span><br />
Thời gian bảo h&agrave;nh :&nbsp;&nbsp; &nbsp;24 Th&aacute;ng</p>
', N'<p>H&atilde;ng CPU :&nbsp;&nbsp; &nbsp;Intel<br />
C&ocirc;ng nghệ CPU :&nbsp;&nbsp; &nbsp;Core i5<br />
Loại CPU :&nbsp;&nbsp; &nbsp;7200U<br />
Tốc độ CPU :&nbsp;&nbsp; &nbsp;2.50 GHz<br />
Bộ nhớ đệm :&nbsp;&nbsp; &nbsp;3 MB Cache<br />
Tốc độ tối đa :&nbsp;&nbsp; &nbsp;3.10 GHz</p>
', N'asux.png', N'asux_1.png', N'asux_2.png', N'asux_3.png', N'asux_4.png', 9690000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'IP', N'LSP01', N'NSX01', N'iPhone 7 Plus 128GB', N'<p><span style="color:#c0392b"><strong>M&agrave;n h&igrave;nh</strong></span><br />
C&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;&nbsp; &nbsp;LED-backlit IPS LCD<br />
Độ ph&acirc;n giải&nbsp;&nbsp; &nbsp;Full HD (1080 x 1920 pixels)<br />
M&agrave;n h&igrave;nh rộng&nbsp;&nbsp; &nbsp;5.5&quot;<br />
Mặt k&iacute;nh cảm ứng&nbsp;&nbsp; &nbsp;K&iacute;nh oleophobic (ion cường lực)<br />
<span style="color:#c0392b"><strong>Camera sau</strong></span><br />
Độ ph&acirc;n giải&nbsp;&nbsp; &nbsp;Hai camera 12 MP<br />
Quay phim&nbsp;&nbsp; &nbsp;Quay phim 4K 2160p@30fps<br />
Đ&egrave;n Flash&nbsp;&nbsp; &nbsp;4 đ&egrave;n LED (2 t&ocirc;ng m&agrave;u)<br />
Chụp ảnh n&acirc;ng cao&nbsp;&nbsp; &nbsp;Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)<br />
<span style="color:#c0392b"><strong>Camera trước</strong></span><br />
Độ ph&acirc;n giải&nbsp;&nbsp; &nbsp;7 MP<br />
Videocall&nbsp;&nbsp; &nbsp;Hỗ trợ VideoCall th&ocirc;ng qua ứng dụng<br />
Th&ocirc;ng tin kh&aacute;c&nbsp;&nbsp; &nbsp;Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt<br />
Hệ điều h&agrave;nh - CPU<br />
Hệ điều h&agrave;nh&nbsp;&nbsp; &nbsp;iOS 10<br />
Chipset (h&atilde;ng SX CPU)&nbsp;&nbsp; &nbsp;Apple A10 Fusion 4 nh&acirc;n 64-bit<br />
Tốc độ CPU&nbsp;&nbsp; &nbsp;2.3 GHz<br />
Chip đồ họa (GPU)&nbsp;&nbsp; &nbsp;Chip đồ họa 6 nh&acirc;n<br />
Bộ nhớ &amp; Lưu trữ<br />
RAM&nbsp;&nbsp; &nbsp;3 GB<br />
Bộ nhớ trong&nbsp;&nbsp; &nbsp;128 GB<br />
Bộ nhớ c&ograve;n lại (khả dụng)&nbsp;&nbsp; &nbsp;Khoảng 120.59 GB<br />
Thẻ nhớ ngo&agrave;i&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Kết nối<br />
Mạng di động&nbsp;&nbsp; &nbsp;3G, 4G LTE Cat 9<br />
SIM&nbsp;&nbsp; &nbsp;1 Nano SIM<br />
Wifi&nbsp;&nbsp; &nbsp;Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot<br />
GPS&nbsp;&nbsp; &nbsp;A-GPS, GLONASS<br />
Bluetooth&nbsp;&nbsp; &nbsp;v4.2, A2DP, LE<br />
C&ocirc;̉ng k&ecirc;́t n&ocirc;́i/sạc&nbsp;&nbsp; &nbsp;Lightning<br />
Jack tai nghe&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Kết nối kh&aacute;c&nbsp;&nbsp; &nbsp;NFC, Air Play, OTG, HDMI<br />
Thiết kế &amp; Trọng lượng<br />
Thiết kế&nbsp;&nbsp; &nbsp;Nguy&ecirc;n khối, mặt k&iacute;nh cong 2.5D<br />
Chất liệu&nbsp;&nbsp; &nbsp;Hợp kim Nh&ocirc;m + Magie<br />
K&iacute;ch thước&nbsp;&nbsp; &nbsp;D&agrave;i 158.2 mm - Ngang 77.9 mm - D&agrave;y 7.3 mm<br />
Trọng lượng&nbsp;&nbsp; &nbsp;188 g<br />
Th&ocirc;ng tin pin &amp; Sạc<br />
Dung lượng pin&nbsp;&nbsp; &nbsp;2900 mAh<br />
Loại pin&nbsp;&nbsp; &nbsp;Pin chuẩn Li-Ion<br />
C&ocirc;ng nghệ pin&nbsp;&nbsp; &nbsp;Tiết kiệm pin<br />
Tiện &iacute;ch<br />
Bảo mật n&acirc;ng cao&nbsp;&nbsp; &nbsp;Mở kh&oacute;a bằng v&acirc;n tay<br />
T&iacute;nh năng đặc biệt&nbsp;&nbsp; &nbsp;Chống nước, chống bụi<br />
3D Touch<br />
Ghi &acirc;m&nbsp;&nbsp; &nbsp;C&oacute;, microphone chuy&ecirc;n dụng chống ồn<br />
Radio&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Xem phim&nbsp;&nbsp; &nbsp;H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid<br />
Nghe nhạc&nbsp;&nbsp; &nbsp;Lossless, Midi, MP3, WAV, WMA, AAC, AAC++<br />
&nbsp;</p>
', N'<p>Th&ocirc;ng số kỹ thuật<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LED-backlit IPS LCD, 5.5&quot;, Retina HD<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS 10<br />
Camera sau:&nbsp;&nbsp; &nbsp;Hai camera 12 MP<br />
Camera trước:&nbsp;&nbsp; &nbsp;7 MP<br />
CPU:&nbsp;&nbsp; &nbsp;Apple A10 Fusion 4 nh&acirc;n 64-bit<br />
RAM:&nbsp;&nbsp; &nbsp;3 GB<br />
Bộ nhớ trong:&nbsp;&nbsp; &nbsp;128 GB<br />
Thẻ nhớ:&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Thẻ SIM:&nbsp;&nbsp; &nbsp;1 Nano SIM, hỗ trợ 4G<br />
Dung lượng pin:&nbsp;&nbsp; &nbsp;2900 mAh</p>
', N'IP.png', N'IP_1.png', N'IP_2.png', N'IP_3.png', N'IP_4.png', 23990000, 8, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ip5s', N'LSP01', N'NSX01', N'Iphone 5S 16GB', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LED-backlit IPS LCD, 4&quot;, DVGA<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS 10<br />
Camera sau:&nbsp;&nbsp; &nbsp;8 MP<br />
Camera trước:&nbsp;&nbsp; &nbsp;1.2 MP<br />
CPU:&nbsp;&nbsp; &nbsp;Apple A7 2 nh&acirc;n 64-bit<br />
RAM:&nbsp;&nbsp; &nbsp;1 GB<br />
Bộ nhớ trong:&nbsp;&nbsp; &nbsp;16 GB<br />
Thẻ nhớ:&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Thẻ SIM:&nbsp;&nbsp; &nbsp;1 Nano SIM, hỗ trợ 4G<br />
Dung lượng pin:&nbsp;&nbsp; &nbsp;1560 mAh</p>
', N'ip5s.png', N'ip5s_1.png', N'ip5s_2.png', N'ip5s_3.png', N'ip5s_4.png', 5990000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ip6s', N'LSP01', N'NSX01', N'iPhone 6s 128GB', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LED-backlit IPS LCD, 4.7&quot;, Retina HD<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS 9<br />
Camera sau:&nbsp;&nbsp; &nbsp;12 MP<br />
Camera trước:&nbsp;&nbsp; &nbsp;5 MP<br />
CPU:&nbsp;&nbsp; &nbsp;Apple A9 2 nh&acirc;n 64-bit<br />
RAM:&nbsp;&nbsp; &nbsp;2 GB<br />
Bộ nhớ trong:&nbsp;&nbsp; &nbsp;128 GB<br />
Thẻ nhớ:&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Thẻ SIM:&nbsp;&nbsp; &nbsp;1 Nano SIM<br />
Dung lượng pin:&nbsp;&nbsp; &nbsp;1715 mAh</p>
', N'ip6s.png', N'ip6s_1.png', N'ip6s_2.png', N'ip6s_3.png', N'ip6s_4.png', 18890000, 2, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ltphpenvy', N'LSP02', N'NSX05', N'Laptop HP Envy 13', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
CPU:&nbsp;&nbsp; &nbsp;Intel Core i5 Kabylake, 7200U, 2.50 GHz<br />
RAM:&nbsp;&nbsp; &nbsp;4 GB, DDR3, 1866 MHz<br />
Ổ cứng:&nbsp;&nbsp; &nbsp;SSD: 128 GB<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;13.3 inch, QHD+ (3200 x 1800)<br />
Card m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Card đồ họa t&iacute;ch hợp, Intel&reg; HD Graphics 620<br />
Cổng kết nối:&nbsp;&nbsp; &nbsp;2 x USB 3.0, HDMI, USB Type-C<br />
Đặc biệt:&nbsp;&nbsp; &nbsp;C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;Windows 10<br />
Thiết kế:&nbsp;&nbsp; &nbsp;Vỏ kim loại, PIN liền<br />
K&iacute;ch thước:&nbsp;&nbsp; &nbsp;D&agrave;y 13.9 mm, 1.43 kg</p>
', N'ltphpenvy.png', N'ltphpenvy_1.png', N'ltphpenvy_2.png', N'ltphpenvy_3.png', N'ltphpenvy_4.png', 19900000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ltphppro', N'LSP02', N'NSX05', N'HP Probook 450', NULL, N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>RAM<br />
Dung lượng RAM :&nbsp;&nbsp; &nbsp;4 GB<br />
Loại RAM :&nbsp;&nbsp; &nbsp;DDR4<br />
Tốc độ BUS RAM :&nbsp;&nbsp; &nbsp;2133 MHz<br />
Số lượng khe RAM :&nbsp;&nbsp; &nbsp;2<br />
Đĩa cứng<br />
Loại ổ đĩa :&nbsp;&nbsp; &nbsp;HDD<br />
Dung lượng ổ đĩa :&nbsp;&nbsp; &nbsp;500 GB<br />
Khe cắm ổ SSD :&nbsp;&nbsp; &nbsp;C&oacute; M2<br />
Đĩa quang<br />
Loại đĩa quang :&nbsp;&nbsp; &nbsp;DVD RW<br />
PIN/Battery<br />
Loại pin :&nbsp;&nbsp; &nbsp;4 cell<br />
Kiểu pin :&nbsp;&nbsp; &nbsp;Rời<br />
Th&ocirc;ng tin kh&aacute;c<br />
Cảm biến v&acirc;n tay :&nbsp;&nbsp; &nbsp;C&oacute;<br />
Đ&egrave;n b&agrave;n ph&iacute;m :&nbsp;&nbsp; &nbsp;C&oacute;<br />
B&agrave;n ph&iacute;m số :&nbsp;&nbsp; &nbsp;C&oacute;<br />
Phụ kiện k&egrave;m theo :&nbsp;&nbsp; &nbsp;D&acirc;y sạc, Adapter, S&aacute;ch<br />
K&iacute;ch thước &amp; trọng lượng<br />
Chất liệu :&nbsp;&nbsp; &nbsp;Nh&ocirc;m<br />
Bảo h&agrave;nh<br />
Thời gian bảo h&agrave;nh :&nbsp;&nbsp; &nbsp;12 Th&aacute;ng</p>
', N'ltphppro.png', N'ltphppro_1.png', N'ltphppro_2.png', N'ltphppro_3.png', N'ltphppro_4.png', 15000000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'MB', N'LSP03', N'NSX01', N'Macbook 12" MMGL2', NULL, N'<h2>Th&ocirc;ng số kỹ thuật</h2>

<ul>
	<li>CPU:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/suc-manh-cua-cpu-core-m-thoi-bay-quat-tan-nhiet-tr-629329" target="_blank">Intel Core M</a>, -, 1.10 GHz</li>
	<li>RAM: 8 GB,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ram-laptop-599009#ramddr3" target="_blank">DDR3</a>, 1866 MHz</li>
	<li>Ổ cứng: SSD: 256 GB</li>
	<li>M&agrave;n h&igrave;nh: 12 inch,&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-retina-la-gi-905780" target="_blank">Retina (2304 x 1440)</a></li>
	<li>Card m&agrave;n h&igrave;nh:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/card-do-hoa-tich-hop-la-gi-950047" target="_blank">Card đồ họa t&iacute;ch hợp</a>,&nbsp;<a href="https://www.thegioididong.com/hoi-dap/intel-hd-graphics-515-868296" target="_blank">Intel&reg; HD Graphics 515</a></li>
	<li>Cổng kết nối:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/usb-type-c-chua-n-mu-c-co-ng-ke-t-no-i-mo-i-723760" target="_blank">USB Type-C</a></li>
	<li>Đặc biệt: C&oacute; đ&egrave;n b&agrave;n ph&iacute;m</li>
	<li>Hệ điều h&agrave;nh:&nbsp;<a href="https://www.thegioididong.com/hoi-dap/mac-os-la-gi-838020" target="_blank">Mac OS</a></li>
	<li>Thiết kế: Vỏ kim loại nguy&ecirc;n khối, PIN liền</li>
	<li>K&iacute;ch thước: D&agrave;y 13.1 mm, 0.9 kg</li>
</ul>
', N'MB.png', N'MB_1.png', N'MB_2.png', N'MB_3.png', N'MB_4.png', 31490000, 5, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'mb15pro', N'LSP03', N'NSX01', N'MB Pro 15 Touch Bar', NULL, N'<p>Th&ocirc;ng số kỹ thuật</p>

<p>Bộ xử l&yacute;<br />
H&atilde;ng CPU :&nbsp;&nbsp; &nbsp;Intel<br />
C&ocirc;ng nghệ CPU :&nbsp;&nbsp; &nbsp;Core i7<br />
Loại CPU :&nbsp;&nbsp; &nbsp;Quad - core<br />
Tốc độ CPU :&nbsp;&nbsp; &nbsp;2.7Ghz<br />
Bộ nhớ đệm :&nbsp;&nbsp; &nbsp;8MB L3 cache<br />
Tốc độ tối đa :&nbsp;&nbsp; &nbsp;3.6 GHz<br />
Bo mạch<br />
Chipset :&nbsp;&nbsp; &nbsp;Intel Chipset<br />
Tốc độ Bus :&nbsp;&nbsp; &nbsp;2133 MHz<br />
Hỗ trợ RAM tối đa :&nbsp;&nbsp; &nbsp;16 GB<br />
RAM<br />
Dung lượng RAM :&nbsp;&nbsp; &nbsp;16 GB<br />
Loại RAM :&nbsp;&nbsp; &nbsp;LPDDR3<br />
Tốc độ BUS RAM :&nbsp;&nbsp; &nbsp;2133 MHz<br />
Đĩa cứng<br />
Loại ổ đĩa :&nbsp;&nbsp; &nbsp;SSD<br />
Dung lượng ổ đĩa :&nbsp;&nbsp; &nbsp;512 GB<br />
Đồ họa<br />
Chipset đồ họa :&nbsp;&nbsp; &nbsp;Radeon Pro 455 and automatic graphics switching Intel HD Graphics 530<br />
Bộ nhớ đồ họa :&nbsp;&nbsp; &nbsp;2GB DDR5<br />
M&agrave;n h&igrave;nh<br />
K&iacute;ch thước m&agrave;n h&igrave;nh :&nbsp;&nbsp; &nbsp;15.4 inch<br />
Độ ph&acirc;n giải (W x H) :&nbsp;&nbsp; &nbsp;2880 x 1800 pixels<br />
C&ocirc;ng nghệ m&agrave;n h&igrave;nh :&nbsp;&nbsp; &nbsp;LED-backlit<br />
Cảm ứng :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
&Acirc;m thanh<br />
K&ecirc;nh &acirc;m thanh :&nbsp;&nbsp; &nbsp;Stereo speakers<br />
Th&ocirc;ng tin th&ecirc;m :&nbsp;&nbsp; &nbsp;High dynamic range<br />
Đĩa quang<br />
C&oacute; sẵn đĩa quang :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
T&iacute;nh năng mở rộng &amp; cổng giao tiếp<br />
Cổng giao tiếp :&nbsp;&nbsp; &nbsp;4xThunderbolt 3(USB-C), 1xHeadphone, 3xMicrophone<br />
Giao tiếp mạng<br />
LAN :&nbsp;&nbsp; &nbsp;Kh&ocirc;ng<br />
Chuẩn Wi-Fi :&nbsp;&nbsp; &nbsp;802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible<br />
Hệ điều h&agrave;nh, phầm mềm c&oacute; sẵn<br />
Hệ điều h&agrave;nh :&nbsp;&nbsp; &nbsp;macOS Sierra<br />
PIN/Battery<br />
Loại pin :&nbsp;&nbsp; &nbsp;lithium-polymer<br />
K&iacute;ch thước &amp; trọng lượng<br />
Trọng lượng :&nbsp;&nbsp; &nbsp;1.83 Kg<br />
Bảo h&agrave;nh<br />
Thời gian bảo h&agrave;nh :&nbsp;&nbsp; &nbsp;12 Th&aacute;ng</p>
', N'mb15pro.png', N'mb15pro_1.png', N'mb15pro_2.png', N'mb15pro_3.png', N'mb15pro_4.png', 65000000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'mb15promf', N'LSP03', N'NSX01', N'Macbook Pro MF839ZP', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
CPU:&nbsp;&nbsp; &nbsp;Intel, Intel Core i5 Broadwell, 5257U, 2.70 GHz<br />
RAM:&nbsp;&nbsp; &nbsp;8 GB, DDR3L(On board), 1866 MHz<br />
Ổ cứng:&nbsp;&nbsp; &nbsp;SSD: 128 GB, SSD<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;13.3 inch, Retina (2560 x 1600)<br />
Card m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Card đồ họa t&iacute;ch hợp, Intel HD Graphics 6100<br />
Cổng kết nối:&nbsp;&nbsp; &nbsp;MagSafe 2, 2 x USB 3.0, HDMI, 2 x Thunderbolt 2<br />
Đặc biệt:&nbsp;&nbsp; &nbsp;C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;Mac OS<br />
Thiết kế:&nbsp;&nbsp; &nbsp;Vỏ kim loại nguy&ecirc;n khối, PIN liền<br />
K&iacute;ch thước:&nbsp;&nbsp; &nbsp;D&agrave;y 18 mm, 1.58 kg</p>
', N'mb15promf.png', N'mb15promf_1.png', N'mb15promf_2.png', N'mb15promf_3.png', N'mb15promf_4.png', 30500000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'mbprotouc', N'LSP03', N'NSX01', N'Macbook Pro Touch', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
CPU:&nbsp;&nbsp; &nbsp;Intel Core i7 Skylake, 6700HQ, 2.60 GHz<br />
RAM:&nbsp;&nbsp; &nbsp;16 GB, DDR4 (On board), 2133 MHz<br />
Ổ cứng:&nbsp;&nbsp; &nbsp;SSD: 256 GB<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;15.4 inch, Retina (2880 x 1800)<br />
Card m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Card đồ họa rời, AMD Radeon Pro 450, 2 GB<br />
Cổng kết nối:&nbsp;&nbsp; &nbsp;4 x Thunderbolt 3 (USB-C)<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;Mac OS<br />
Thiết kế:&nbsp;&nbsp; &nbsp;Vỏ kim loại nguy&ecirc;n khối, PIN liền<br />
K&iacute;ch thước:&nbsp;&nbsp; &nbsp;D&agrave;y 15.5 mm, 1.83 Kg</p>
', N'mbprotouc.png', N'mbprotouc_1.png', N'mbprotouc_2.png', N'mbprotouc_3.png', N'mbprotouc_4.png', 56990000, 9, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'sp01', N'LSP01', N'NSX01', N'test', N'<p>chi tiết</p>
', N'<p>cấu h&igrave;nh</p>
', N'sp01.png', N'sp01_1.png', N'sp01_2.png', N'sp01_3.png', N'sp01_4.png', 9999, 0, 0, N'0         ', N'new')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ss8s', N'LSP01', N'NSX02', N'Samsung Galaxy S8', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Super AMOLED, 5.8&quot;, Quad HD (2K)<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 7.0<br />
Camera sau:&nbsp;&nbsp; &nbsp;12 MP<br />
Camera trước:&nbsp;&nbsp; &nbsp;8 MP<br />
CPU:&nbsp;&nbsp; &nbsp;Exynos 8895 8 nh&acirc;n 64-bit<br />
RAM:&nbsp;&nbsp; &nbsp;4 GB<br />
Bộ nhớ trong:&nbsp;&nbsp; &nbsp;64 GB<br />
Thẻ nhớ:&nbsp;&nbsp; &nbsp;MicroSD, hỗ trợ tối đa 256 GB<br />
Thẻ SIM:&nbsp;&nbsp; &nbsp;2 SIM Nano (SIM 2 chung khe thẻ nhớ), hỗ trợ 4G<br />
Dung lượng pin:&nbsp;&nbsp; &nbsp;3000 mAh, c&oacute; sạc nhanh</p>
', N'ss8s.png', N'ss8s_1.png', N'ss8s_2.png', N'ss8s_3.png', N'ss8s_4.png', 18200000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'ssj7pri', N'LSP01', N'NSX02', N'Samsung Galaxy J7 Pr', NULL, N'<p>Th&ocirc;ng số kỹ thuật<br />
M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;PLS TFT LCD, 5.5&quot;, Full HD<br />
Hệ điều h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 6.0 (Marshmallow)<br />
Camera sau:&nbsp;&nbsp; &nbsp;13 MP<br />
Camera trước:&nbsp;&nbsp; &nbsp;8 MP<br />
CPU:&nbsp;&nbsp; &nbsp;Exynos 7870 8 nh&acirc;n 64-bit<br />
RAM:&nbsp;&nbsp; &nbsp;3 GB<br />
Bộ nhớ trong:&nbsp;&nbsp; &nbsp;32 GB<br />
Thẻ nhớ:&nbsp;&nbsp; &nbsp;MicroSD, hỗ trợ tối đa 256 GB<br />
Thẻ SIM:&nbsp;&nbsp; &nbsp;2 Nano SIM, hỗ trợ 4G<br />
Dung lượng pin:&nbsp;&nbsp; &nbsp;3300 mAh</p>
', N'ssj7pri.png', N'ssj7pri_1.png', N'ssj7pri_2.png', N'ssj7pri_3.png', N'ssj7pri_4.png', 5990000, 5, 0, N'0         ', N'New')
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'65f9aacf-1c0e-4935-aef4-2075a4916863', N'0ad19520-43cf-4af6-b0c8-e9e2acd63fba')
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/16/2017 22:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF_NhaSanXuat_TinhTrang]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
/****** Object:  Default [DF_LoaiSanPham_TinhTrang]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
/****** Object:  Default [DF_SanPham_Gia]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
/****** Object:  Default [DF_SanPham_SoLuongDaBan]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
/****** Object:  Default [DF_SanPham_LuongView]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuongView]  DEFAULT ((0)) FOR [LuotView]
GO
/****** Object:  Default [DF_SanPham_TinhTrang]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
/****** Object:  Default [DF_SanPham_GhiChu]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New') FOR [GhiChu]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham1]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat1]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat1] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat1]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 06/16/2017 22:32:09 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
