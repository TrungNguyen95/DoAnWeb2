USE [web2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 17/06/2017 14:26:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705241211035_InitialCreate', N'ShopOnline.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0C30B0C8E2A962B148168BC5FEF3F73FA6DF3F07BEF584E38484F4CC3E9A1CDA16A66EE811BA3AB353B6FCF683FDFD777FFFDBF4D20B9EAD9F0ABA134E072D6972663F32169D3A4EE23EE200259380B87198844B3671C3C0415EE81C1F1EFEDB393A723040D8806559D34F296524C0D9077CCE42EAE288A5C8BF093DEC27A21C6AE619AA758B029C44C8C567F6FC318CEEA84F289EE4C4B675EE130482CCB1BFB42D4469C81003314F3F2778CEE290AEE6111420FFE125C240B7447E8285F8A71579DF9E1C1EF39E3855C302CA4D13160603018F4E846A1CB9F95A0AB64BD581F22E41C9EC85F73A53E0997DEDE1ACE853E883026486A7333FE6C467F64DC9E23C896E319B140D2739E4550C70BF86F1D7491DF1C0EADDEEA034A5E3C921FF7760CD529FA5313EA3386531F20FACFB74E113F7BFF8E521FC8AE9D9C9D16279F2E1DD7BE49DBCFF173E7957EF29F415E81A0550741F87118E4136BC2CFB6F5B4EB39D23372C9BD5DAE45A015B8259615B37E8F923A62BF608F3E5F8836D5D9167EC1525C2B83E530293081AB13885CFDBD4F7D1C2C765BDD3CA93FFDFC2F5F8DDFB51B8DEA227B2CA865EE20F13278679F509FB596DF248A27C7A35C6FB8B20BB8AC3807F37ED2BAFFD320FD3D8E59D098D240F285E61D6946EEA54C6DBCBA439D4F8665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BCAFCBB7B7C59D47110C5E665A5C236D06A7EC5513A9F1815591548673D4D7702874E8AFBC0E5E0688F8232C843DB8800BB2247180CB5EFE1082D9213A58E67B9424B00E78FF41C9638BE8F0E708A2CFB19BC6609E738682E8D5B9DD3F8614DFA6C1825BFDF6788D36340FBF8657C865617C4979AB8DF13E86EED7306597D4BB400C7F666E01C83F1F48D01F601471CE5D1727C9151833F6662178D805E0356527C783E1F8FAB46B4764E62312E83D116925FD529056DE889E42F1480C643AAFA44DD48FE18AD07EA216A46651738A4E5105D9505139583F4905A559D08CA053CE9C6A343F2F1BA1F11DBD0C76FF3DBDCD366FD35A5053E31C5648FC23A6388665CCBB478CE1985623D067DDD885B3900D1F67FAEA7B53C6E927E4A763B35A6B36648BC0F8B32183DDFFD9908909C54FC4E35E498FE34F410CF0BDE8F527ABEE392749B6EDE9D0E8E6B6996F670D304D97F324095D92CD024DE04B842D9AF2830F6775C730F2DEC87110E818183AE15B1E9440DF6CD9A8EEE805F631C3D6B99B070667287191A7AA113AE40D10ACD851358255F190A670FF547882A5E3983742FC1094C04C2594A9D382509744C8EFD492D4B2E716C6FB5EF2906B2E70842967D8A9893ECCF5E10F2E40C9471A942E0D4D9D9AC5B51BA2C16B358D79970B5B8DBB1295D88A4D76F8CE06BB14FEDBAB1866BBC6B6609CED2AE923803194B70B03156795BE06201F5CF6CD40A51393C140854BB515036D6A6C0706DA54C99B33D0FC88DA77FCA5F3EABE9967F3A0BCFD6DBD555D3BB0CD863EF6CC3473DF13DA30688163D53C2F16BC123F33CDE10CE414E7B344B8BAB28970F03966CD904DE5EF6AFD50A71D4436A236C0CAD03A40C525A002A44CA801C215B1BC56E984173100B688BBB5C28AB55F82ADD9808A5DBF0CAD119AAF4C65E3EC75FA287B565A8362E4BD0E0B351C8D41C88B57B3E33D94628ACBAA8AE9E30B0FF1866B1D1383D1A2A00ECFD5A0A4A233A36BA930CD6E2DE91CB2212ED9465A92DC2783968ACE8CAE2561A3DD4AD2380503DC828D54D4DCC2479A6C45A4A3DC6DCABAA993A7488982A963C8A59ADEA028227455CBAD1225D63C4FAC9A7D3B1F9E7214E4188E9B68328F4A694B4E2C8CD10A4BB5C01A24BD2271C22E10430BC4E33C332F50C8B47BAB61F92F58D6B74F75108B7DA0A0E67F8B9B55E5EABEB1D5AABE8880B8820E06DCA1C9A2E89AE1D737B778AA1BF251AC09DCCF423F0DA8D9BF32B7CEAFEFEAEDF3121561EA48F22BFE93A22CC5CB6D6ABED7B8A873629C312ABD97F5C7C90C61D276E17BD6F56DF247CD284578AA8E620A59ED6CDC4C6ECC90B1921DC4E143D589F03AB34A64A5D40144D1408C5A62830256ABEB8FDACC3DA963366BFA234A09267548A96A8094F534928690F58AB5F00C1AD553F4E7A0268ED4D1D5DAFEC89A14923AB4A67A0D6C8DCC725D7F544D96491D5853DD1FBB4A3991D7D03DDEB78CC7967537AEFC60BBD9CE65C0789D05719C8DAF767F5F07AA150FC41237F40A9828DF4B63329EEED635A63C9CB199311930CCEB4EE3E2BBB9ECB4DED69B311BB7D98DA5BDED36DF8C37CC645FD53094B39D4C52722FCF78D2596E2ACE55DD8F679483564E625B851AC19C5E128683092798CC7FF1673EC17C112F086E10254B9CB03C83C38673E007E901CEFE3C867192C4F335E752D38B98E6986D21198B3EA1D87D44B19A1AB1C183910A54893A5F530F3F9FD9FFCB5A9D66010CFE57567C605D279F29F925858A8738C5D66F6AAAE73809F4ED27AC3D7DEED05FABD73F7FC99B1E587731CC9853EB50D2E53A23DC7C0431489ABCE906D2ACFD34E2ED4EA8C6CB032DAA3421D67F68B0206C9447068594DF04E8F91F4345D33E24D80851F358602CBC5154687A0CB00E96F12180079F2C7B0830ACB3FA8701EB88667C1440E87030F94940FF65A868B9C3AD467324DAC69294E9B933A57AA3FCCA5DEF4D4AE6F546135DCDAE1E00B74106F51A96F1C6928F47DB1D35B9C5A361EFD2B45F3DA1785F7288ABEC8EDDA60E6F335BB8E54EE82F9524BC07696D9A349DDDA7026FDBD64C61DC3DCFA71C96F0BB67C62692B7769FD6BB6D63338579F7DCD80625EFEE99ADED6AFFDCB1A5F5DE42779E8AAB661519AE6374B1E0AE54DB3C700E27FC450846907B94F90B497D6E575B5E6A07C38AC4CCD49C54263356268EC257A168673BACAF62C36FEDACA069676B48C56CE32DD6FF56DE82A69DB721C1711749C2DA14435DE276C73AD69601F59692821B3DE9C841EFF2595BEFD6DF520EF0284A69CC1EC31DF1DB49F91D4525634E9D0129BEEA752FEC9DB55F5484FD3B21AB0A82FFBE22C56E63D72C69AEE9322C366F49A282448AD0DC60863CD852CF634696C86550CD63CCD913EF2C6EC76F3A16D8BBA677298B52065DC6C1C26F04BCB813D0C63FCB636ECA3CBD8BB25F2B19A30B2026E1B1F93BFA434A7CAF94FB4A1313324070EF424474F958321ED95DBD9448B721ED0924D4573A450F38887C004BEEE81C3DE1756403F3FB8857C87DA922802690EE8168AA7D7A41D02A46412230AAF6F00936EC05CFDFFD1FA052997058540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0ad19520-43cf-4af6-b0c8-e9e2acd63fba', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'65f9aacf-1c0e-4935-aef4-2075a4916863', N'0ad19520-43cf-4af6-b0c8-e9e2acd63fba')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'65f9aacf-1c0e-4935-aef4-2075a4916863', N'admin@gmail.com', 0, N'ACkLx/Ve5TKXO9KPcPLC8pn5+5ayfU4XSFmAsPnb9ZC+HqCAIWX2JdLlFh7GngoCbQ==', N'3d7ef185-9e5a-4328-9242-c0da7fc47381', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'787e1c05-9999-4890-b9d5-741807a9bbe3', N'nguyentrung6626@gmail.com', 0, N'AOBQNbw6Ml71JiN0rCAJ3ST3D2QncLeeJctT1d/aRwOgaEPR3BmXygDz9/bhzHiH5A==', N'8ea19554-b7fd-4b39-ab68-70bf95c4464e', NULL, 0, 0, NULL, 1, 0, N'nguyentrung6626@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd40b0aea-791a-4811-bb5f-867f2571c642', N'ktran3091@gmail.com', 0, N'ALdQtnzGt5NUXOF1eNZEmANhjFDJxCOCZD3T8Zfdbx6ds5AaVdceDiN7OafM4q51Kw==', N'b48f7f6a-9137-41f5-9fc0-948d1ce5a57c', NULL, 0, 0, NULL, 1, 0, N'ktran3091@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'eedaba4a-4f71-4fda-841b-b284afb3cf75', N'abc@gmail.com', 0, N'AEHamJU4e3TKM5PQusjLEyCAO0liw4UUQLGWjLYZMXA3p/K0NdEs3h1QjR6nB7FISQ==', N'79871949-568b-4bf7-baca-468ecb7ce0bb', NULL, 0, 0, NULL, 1, 0, N'abc@gmail.com')
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (30, N'65f9aacf-1c0e-4935-aef4-2075a4916863                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'IP', N'iPhone 7 Plus 128GB', 5, 23990000, 119950000, N'IP.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (31, N'787e1c05-9999-4890-b9d5-741807a9bbe3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ip6s', N'iPhone 6s 128GB', 5, 18890000, 94450000, N'ip6s.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (32, N'787e1c05-9999-4890-b9d5-741807a9bbe3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ltphppro', N'HP Probook 450', 1, 15000000, 15000000, N'ltphppro.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (33, N'eedaba4a-4f71-4fda-841b-b284afb3cf75                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ss8s', N'Samsung Galaxy S8', 9, 18200000, 163800000, N'ss8s.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (34, N'65f9aacf-1c0e-4935-aef4-2075a4916863                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'sp01', N'test', 4, 9999, 39996, N'sp01.png')
INSERT [dbo].[GioHang] ([IDGH], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien], [HinhChinh]) VALUES (35, N'd40b0aea-791a-4811-bb5f-867f2571c642                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N'ip5s', N'Iphone 5S 16GB', 3, 5990000, 17970000, N'ip5s.png')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Điện thoại', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Laptop', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Macbook', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP04', N'Máy tính bảng', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP05', N'Phụ kiện chính hãng', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Apple', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Asus', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX04', N'Dell', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX05', N'HP', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A1', N'LSP01', N'NSX02', N'SAMSUNG GALAXY A5', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>GALAXY A5 2017 SM-A520F</p>

<p>M&agrave;u sắc:</p>

<p>V&agrave;ng</p>

<p>Nh&agrave; sản xuất:</p>

<p>Samsung</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>12 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Hệ điều h&agrave;nh &amp; CPU</h2>

<p>Hệ điều h&agrave;nh:</p>

<p>Android</p>

<p>CPU:</p>

<p>Octa Core 1.9GHz</p>

<h2>Bộ nhớ &amp; Lưu trữ</h2>

<p>RAM:</p>

<p>3GB</p>

<p>Bộ nhớ trong:</p>

<p>32GB</p>

<p>Hỗ trợ thẻ nhớ ngo&agrave;i:</p>

<p>l&ecirc;n đến 256GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Cảm ứng:</p>

<p>C&oacute;</p>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>Full HD</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>5.2 inches</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1920 x 1080 pixels</p>

<h2>Camera</h2>

<p>Camera trước:</p>

<p>16 MP</p>

<p>Camera sau:</p>

<p>16 MP</p>

<p>Đ&egrave;n Flash:</p>

<p>C&oacute;</p>

<p>Video:</p>

<p>C&oacute;</p>

<h2>Kết nối</h2>

<p>Mạng 3G:</p>

<p>C&oacute;</p>

<p>Mạng 4G:</p>

<p>C&oacute;</p>

<p>Loại SIM:</p>

<p>Nano SIM</p>

<p>Số khe SIM:</p>

<p>2 SIM</p>

<p>WIFI:</p>

<p>C&oacute;</p>

<p>Bluetooth:</p>

<p>C&oacute;</p>

<p>NFC:</p>

<p>C&oacute;</p>

<p>GPS:</p>

<p>C&oacute;</p>

<p>USB:</p>

<p>C&oacute;</p>

<p>Loa ngo&agrave;i:</p>

<p>C&oacute;</p>

<p>Jack 3.5mm:</p>

<p>C&oacute;</p>

<h2>Pin</h2>

<p>Dung lượng Pin:</p>

<p>3000 mAh</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Ghi &acirc;m:</p>

<p>C&oacute;</p>

<p>Radio:</p>

<p>C&oacute;</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>146.1x71.4x7.9 mm</p>

<p>Khối lượng th&ugrave;ng (g):</p>

<p>157 gram</p>
', N'<p>M&agrave;n h&igrave;nh: Full HD, 5.2 inches</p>

<p>HĐH: Android 6.0</p>

<p>CPU: Octa Core 1.9 GHz</p>

<p>Camera: 16MP, 16MP</p>

<p>Pin: 3000 mAh</p>
', N'A1.png', N'A1_1.png', N'A1_2.png', N'A1_3.png', N'A1_4.png', 7990000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A10', N'LSP02', N'NSX03', N'ASUS K401UB FR028D', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>K401UB FR028D</p>

<p>M&agrave;u sắc:</p>

<p>Xanh đen</p>

<p>Nh&agrave; sản xuất:</p>

<p>Asus</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>24 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Bộ vi xử l&yacute;</h2>

<p>CPU:</p>

<p>Intel Core i5</p>

<p>Loại CPU:</p>

<p>6200U</p>

<p>Tốc độ CPU:</p>

<p>2.30 GHz</p>

<p>Bộ nhớ đệm:</p>

<p>3 MB Cache</p>

<p>Tốc độ CPU tối đa:</p>

<p>2.80 GHz</p>

<h2>Bộ nhớ</h2>

<p>Loại RAM:</p>

<p>SDRAM DDR3</p>

<p>Dung lượng RAM:</p>

<p>4 GB</p>

<p>Tốc độ Bus RAM:</p>

<p>1600 MHz</p>

<h2>Đĩa cứng</h2>

<p>Loại ổ đĩa cứng:</p>

<p>SATA</p>

<p>Dung lượng :</p>

<p>500 GB</p>

<h2>Đĩa quang</h2>

<p>T&iacute;ch hợp đĩa quang:</p>

<p>Kh&ocirc;ng</p>

<p>Loại đĩa quang:</p>

<p>Kh&ocirc;ng</p>

<h2>Đồ họa</h2>

<p>Bộ xử l&yacute; đồ họa:</p>

<p>NVIDIA GeForce</p>

<p>Chipset card đồ họa:</p>

<p>GT 940M</p>

<p>Dung lượng card đồ họa:</p>

<p>2GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>Full HD</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>14.0 inch</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1920 x 1080 Pixels</p>

<h2>&Acirc;m thanh</h2>

<p>C&ocirc;ng nghệ &acirc;m thanh:</p>

<p>SonicMaster</p>

<p>Chuẩn &acirc;m thanh:</p>

<p>ICESound support</p>

<h2>Kết nối</h2>

<p>Chuẩn WiFi:</p>

<p>IEEE 802.11 b/g/n</p>

<p>Chuẩn LAN:</p>

<p>10 / 100 Mbps</p>

<p>Cổng USB:</p>

<p>C&oacute;</p>

<p>Cổng HDMI:</p>

<p>C&oacute;</p>

<p>Khe đọc thẻ nhớ:</p>

<p>C&oacute;</p>

<p>Kết nối kh&aacute;c laptop:</p>

<p>Kh&ocirc;ng</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Camera:</p>

<p>VGA</p>

<p>T&iacute;nh năng mở rộng:</p>

<p>Kh&ocirc;ng</p>

<h2>Hệ điều h&agrave;nh</h2>

<p>HĐH k&egrave;m theo m&aacute;y:</p>

<p>Free DOS</p>

<h2>Pin</h2>

<p>Loại Pin Laptop :</p>

<p>3-Cell Li-Ion</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>343x241x20.9 mm</p>

<p>Khối lượng th&ugrave;ng (kg):</p>

<p>1.65 kg</p>
', N'<p>CPU: Intel Core i5 SkyLake</p>

<p>RAM/HDD: 4GB/500GB</p>

<p>M&agrave;n h&igrave;nh: Full HD 14inch</p>

<p>Card MH: GeForce GT940M 2GB</p>

<p>HĐH: Free DOS</p>
', N'A10.png', N'A10_1.png', N'A10_2.png', N'A10_3.png', N'A10_4.png', 13900000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A11', N'LSP02', N'NSX02', N'Asus UX410UQ-GV066', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5307609256865</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>Asus UX410UQ-GV066</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/asus.html">Asus</a></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>1500</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>1.4kg</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ xử l&yacute;</strong></td>
		</tr>
		<tr>
			<td>Tốc độ chip (GHz)</td>
			<td>2.5GHz up to 3.1GHz</td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>Intel Core i5 7200U</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Free DOS</td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>14 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>Full HD (1920 x 1080)</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đồ họa</strong></td>
		</tr>
		<tr>
			<td>Card đồ họa</td>
			<td>NVIDIA GeForce 940MX 2GB DDR3 + Intel HD Graphics 620</td>
		</tr>
		<tr>
			<td>Bộ nhớ đồ họa</td>
			<td>Share</td>
		</tr>
		<tr>
			<td>Thiết kế card</td>
			<td>Card đồ họa rời</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đĩa cứng</strong></td>
		</tr>
		<tr>
			<td>Dung lượng ổ cứng</td>
			<td>500GB</td>
		</tr>
		<tr>
			<td>Loại ổ đĩa</td>
			<td>HDD (x1 slot SSD M.2)</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>4GB</td>
		</tr>
		<tr>
			<td>Chuẩn bộ nhớ RAM</td>
			<td>DDR4</td>
		</tr>
		<tr>
			<td>Bus</td>
			<td>2133MHz</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Webcam</strong></td>
		</tr>
		<tr>
			<td>Camera</td>
			<td>HD</td>
		</tr>
		<tr>
			<td colspan="2"><strong>&Acirc;m thanh</strong></td>
		</tr>
		<tr>
			<td>C&ocirc;ng nghệ &acirc;m thanh</td>
			<td>ASUS SonicMaster Technology</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Ổ đĩa</strong></td>
		</tr>
		<tr>
			<td>Ổ đĩa quang</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Cổng giao tiếp</strong></td>
		</tr>
		<tr>
			<td>Cổng kết nối</td>
			<td>USB 2.0 USB 3.0 HDMI</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giao tiếp mạng</strong></td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>802.11ac</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>Bluetooth 4.1</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>3 Cells 48 Whrs</td>
		</tr>
	</tbody>
</table>
', N'<p>Chip: Intel Core i5 7200U</p>

<p>RAM: 4GB DDR4 2133MHz</p>

<p>Ổ cứng: HDD 500GB-5400rpm, x1 slot SSD M.2</p>

<p>Chipset đồ họa: NVIDIA GeForce 940MX 2GB DDR3 + Intel HD Graphics 620</p>

<p>M&agrave;n h&igrave;nh: 14 inch Full HD (1920 x 1080 pixels) 60Hz Anti-Glare Panel with 72% NTSC with IPS</p>

<p>Hệ điều h&agrave;nh: Free DOS</p>

<p>Pin: 3 Cells 48 Whrs (6 giờ)</p>
', N'A11.png', N'A11_1.png', N'A11_2.png', N'A11_3.png', N'A11_4.png', 15150000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A115', N'LSP03', N'NSX01', N'Macbook Pro 2017 ', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5302444240215</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/apple.html">Apple</a></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>1400</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>1.37kg</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>30.41 x 21.24 x 1.49 cm</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ xử l&yacute;</strong></td>
		</tr>
		<tr>
			<td>Tốc độ chip (GHz)</td>
			<td>2.9Ghz - Up to 3.3Ghz</td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>Intel Core i5</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Mac OS</td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>13.3 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>2560 x 1600 pixels</td>
		</tr>
		<tr>
			<td>Loại m&agrave;n h&igrave;nh (C&ocirc;ng nghệ m&agrave;n h&igrave;nh)</td>
			<td>LED-backlit</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đồ họa</strong></td>
		</tr>
		<tr>
			<td>Card đồ họa</td>
			<td>Intel Iris Graphics 550</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đĩa cứng</strong></td>
		</tr>
		<tr>
			<td>Dung lượng ổ cứng</td>
			<td>256GB</td>
		</tr>
		<tr>
			<td>Loại ổ đĩa</td>
			<td>SSD</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>8GB</td>
		</tr>
		<tr>
			<td>Chuẩn bộ nhớ RAM</td>
			<td>LPDDR3</td>
		</tr>
		<tr>
			<td>Bus</td>
			<td>2133MHz</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Webcam</strong></td>
		</tr>
		<tr>
			<td>Camera</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>&Acirc;m thanh</strong></td>
		</tr>
		<tr>
			<td>C&ocirc;ng nghệ &acirc;m thanh</td>
			<td>Stereo speakers; High dynamic range</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Ổ đĩa</strong></td>
		</tr>
		<tr>
			<td>Ổ đĩa quang</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Cổng giao tiếp</strong></td>
		</tr>
		<tr>
			<td>Cổng kết nối</td>
			<td>4xThunderbolt 3(USB-C), Headphone, 3xMicrophone</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giao tiếp mạng</strong></td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>IEEE 802.11a/b/g/n</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>V 4.2</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>Lithium-polymer</td>
		</tr>
	</tbody>
</table>
', N'<p>Chip: Intel Core i5 (2.9Ghz - Up to 3.3Ghz)</p>

<p>RAM: LPDDR3 8 GB 2133 MHz</p>

<p>Ổ cứng: SSD 256 GB</p>

<p>Chipset đồ họa: Intel Iris Graphics 550</p>

<p>M&agrave;n h&igrave;nh: 13.3 Inches (2560 x 1600 pixels)</p>

<p>Hệ điều h&agrave;nh: Mac OS</p>
', N'A115.png', N'A115_1.png', N'A115_2.png', N'A115_3.png', N'A115_4.png', 41410000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A12', N'LSP02', N'NSX04', N'Dell Inspiron N7460', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5301174494769</td>
		</tr>
		<tr>
			<td>Model</td>
			<td>Dell N4I5259W</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/dell.html">Dell</a></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>2000</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>1.7 kg</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>18.95 x 323.3 x 227.1 mm</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>V&agrave;ng</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ xử l&yacute;</strong></td>
		</tr>
		<tr>
			<td>Loại l&otilde;i chip</td>
			<td>Intel Core i5</td>
		</tr>
		<tr>
			<td>Tốc độ chip (GHz)</td>
			<td>2.5GHz, 3MB Cache</td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>7200U</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Windows 10</td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>14 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>Full HD (1920 x 1080)</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đồ họa</strong></td>
		</tr>
		<tr>
			<td>Card đồ họa</td>
			<td>Geforce 940MX 2GB</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Đĩa cứng</strong></td>
		</tr>
		<tr>
			<td>Loại ổ đĩa</td>
			<td>HDD, SSD</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>4GB</td>
		</tr>
		<tr>
			<td>Chuẩn bộ nhớ RAM</td>
			<td>DDR4</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Webcam</strong></td>
		</tr>
		<tr>
			<td colspan="2"><strong>&Acirc;m thanh</strong></td>
		</tr>
		<tr>
			<td colspan="2"><strong>Ổ đĩa</strong></td>
		</tr>
		<tr>
			<td>Ổ đĩa quang</td>
			<td>Kh&ocirc;ng</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Cổng giao tiếp</strong></td>
		</tr>
		<tr>
			<td>Cổng kết nối</td>
			<td>HDMI, USB, giắc 3.5 mm,...</td>
		</tr>
		<tr>
			<td>Card Reader</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giao tiếp mạng</strong></td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>802.11 ac</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>4</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>3 Cell</td>
		</tr>
	</tbody>
</table>
', N'<p>Chip: Intel Core i5-7200U (2.5GHz, 3MB Cache)</p>

<p>RAM: 4GB DDR4</p>

<p>Ổ cứng: 128GB SSD + 500GB HDD</p>

<p>Chipset đồ họa: Geforce 940MX 2GB</p>

<p>M&agrave;n h&igrave;nh: 14 inches, Full HD (1920 x 1080 pixels)</p>

<p>Hệ điều h&agrave;nh: Windows 10</p>

<p>Pin: 3 Cell</p>
', N'A12.png', N'A12_1.png', N'A12_2.png', N'A12_3.png', N'A12_4.png', 17790000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A14', N'LSP02', N'NSX05', N'HP Probook 450 G3 ', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td>SKU</td>
			<td>5308956604538</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/hp.html">HP</a></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>2700</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>2.5kg</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>Khoảng 378 x 264.3 x 24.8 mm</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>X&aacute;m</td>
		</tr>
		<tr>
			<td>Loại l&otilde;i chip</td>
			<td>Intel Core i3</td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>i3-6100U</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Dos</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>15.6 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>1366 x 768 pixel</td>
		</tr>
		<tr>
			<td>Card đồ họa</td>
			<td>Intel HD Graphics</td>
		</tr>
		<tr>
			<td>Dung lượng ổ cứng</td>
			<td>500GB</td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>4GB</td>
		</tr>
	</tbody>
</table>
', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td>SKU</td>
			<td>5308956604538</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/hp.html">HP</a></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>2700</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>2.5kg</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>Khoảng 378 x 264.3 x 24.8 mm</td>
		</tr>
		<tr>
			<td>M&agrave;u</td>
			<td>X&aacute;m</td>
		</tr>
	</tbody>
</table>
', N'A14.png', N'A14_1.png', N'A14_2.png', N'A14_3.png', N'A14_4.png', 11340000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A2', N'LSP01', N'NSX02', N'SAMSUNG GALAXY C9 ', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>C9 Pro</p>

<p>M&agrave;u sắc:</p>

<p>Đen</p>

<p>Nh&agrave; sản xuất:</p>

<p>Samsung</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Hệ điều h&agrave;nh &amp; CPU</h2>

<p>Hệ điều h&agrave;nh:</p>

<p>Android 6.0</p>

<p>Chipset:</p>

<p>Qualcomm Snapdragon 653</p>

<p>CPU:</p>

<p>4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</p>

<h2>Bộ nhớ &amp; Lưu trữ</h2>

<p>RAM:</p>

<p>6 GB</p>

<p>Bộ nhớ trong:</p>

<p>64GB</p>

<p>Hỗ trợ thẻ nhớ ngo&agrave;i:</p>

<p>l&ecirc;n đến 256GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Cảm ứng:</p>

<p>C&oacute;</p>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>Full HD</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>6 inches</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1920 x 1080 pixels</p>

<h2>Camera</h2>

<p>Camera trước:</p>

<p>16 MP</p>

<p>Camera sau:</p>

<p>16 MP</p>

<p>Đ&egrave;n Flash:</p>

<p>C&oacute;</p>

<p>Video:</p>

<p>1080p@30fps</p>

<h2>Kết nối</h2>

<p>Mạng 3G:</p>

<p>C&oacute;</p>

<p>Mạng 4G:</p>

<p>C&oacute;</p>

<p>Loại SIM:</p>

<p>Nano SIM</p>

<p>Số khe SIM:</p>

<p>2 SIM</p>

<p>WIFI:</p>

<p>C&oacute;</p>

<p>Bluetooth:</p>

<p>C&oacute;</p>

<p>NFC:</p>

<p>C&oacute;</p>

<p>GPS:</p>

<p>C&oacute;</p>

<p>USB:</p>

<p>C&oacute;</p>

<p>Loa ngo&agrave;i:</p>

<p>C&oacute;</p>

<p>Jack 3.5mm:</p>

<p>C&oacute;</p>

<h2>Pin</h2>

<p>Dung lượng Pin:</p>

<p>Li-Ion 4000 mAh</p>

<p>Thời gian chờ:</p>

<p>Đang cập nhật</p>

<p>Thời gian đ&agrave;m thoại:</p>

<p>Đang cập nhật</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Radio:</p>

<p>Đang cập nhật</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>162.9x80.7x6.9 mm</p>

<p>Khối lượng th&ugrave;ng (g):</p>

<p>189 gram</p>
', N'<p>M&agrave;n h&igrave;nh: FHD, 6.0 inches</p>

<p>HĐH: Android 6.0</p>

<p>CPU: Octa Core (4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz)</p>

<p>Camera: trước 16MP, sau 16MP</p>

<p>Pin: 4000 mAh</p>
', N'A2.png', N'A2_1.png', N'A2_2.png', N'A2_3.png', N'A2_4.png', 10490000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A3', N'LSP01', N'NSX02', N'SAMSUNG GALAXY J1', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>GALAXY J1 MINI SM-J105B</p>

<p>M&agrave;u sắc:</p>

<p>V&agrave;ng</p>

<p>Nh&agrave; sản xuất:</p>

<p>Samsung</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>12 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Hệ điều h&agrave;nh &amp; CPU</h2>

<p>Hệ điều h&agrave;nh:</p>

<p>Android</p>

<p>CPU:</p>

<p>Dual Core 1.2GHz</p>

<h2>Bộ nhớ &amp; Lưu trữ</h2>

<p>RAM:</p>

<p>750 MB</p>

<p>Bộ nhớ trong:</p>

<p>8GB</p>

<p>Hỗ trợ thẻ nhớ ngo&agrave;i:</p>

<p>l&ecirc;n đến 128GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Cảm ứng:</p>

<p>C&oacute;</p>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>TFT</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>4 inches</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>800 x 480 pixels</p>

<h2>Camera</h2>

<p>Camera trước:</p>

<p>VGA</p>

<p>Camera sau:</p>

<p>5 MP</p>

<p>Đ&egrave;n Flash:</p>

<p>Kh&ocirc;ng</p>

<p>Video:</p>

<p>C&oacute;</p>

<h2>Kết nối</h2>

<p>Mạng 3G:</p>

<p>C&oacute;</p>

<p>Mạng 4G:</p>

<p>Kh&ocirc;ng</p>

<p>Loại SIM:</p>

<p>Micro SIM</p>

<p>Số khe SIM:</p>

<p>2 SIM</p>

<p>WIFI:</p>

<p>C&oacute;</p>

<p>Bluetooth:</p>

<p>C&oacute;</p>

<p>NFC:</p>

<p>Kh&ocirc;ng</p>

<p>GPS:</p>

<p>C&oacute;</p>

<p>USB:</p>

<p>C&oacute;</p>

<p>Loa ngo&agrave;i:</p>

<p>C&oacute;</p>

<p>Jack 3.5mm:</p>

<p>C&oacute;</p>

<h2>Pin</h2>

<p>Dung lượng Pin:</p>

<p>1500 mAh</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>127x63x11 mm</p>

<p>Khối lượng th&ugrave;ng (g):</p>

<p>123 gram</p>
', N'<p>M&agrave;n h&igrave;nh: TFT, 4 inches</p>

<p>CPU: Quad-core 1.2 GHz</p>

<p>Kết nối: Wifi, 3G</p>

<p>Dung lượng Pin: 1500 mAh</p>

<p>Hỗ trợ thẻ nhớ l&ecirc;nđến 128 GB</p>
', N'A3.png', N'A3_1.png', N'A3_2.png', N'A3_3.png', N'A3_4.png', 17000000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A4', N'LSP01', N'NSX02', N'SAMSUNG GALAXY A3', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>A3 2017</p>

<p>M&agrave;u sắc:</p>

<p>Đen</p>

<p>Nh&agrave; sản xuất:</p>

<p>Samsung</p>

<p>Xuất xứ:</p>

<p>Việt Nam</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>12 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Hệ điều h&agrave;nh &amp; CPU</h2>

<p>Hệ điều h&agrave;nh:</p>

<p>Android</p>

<p>Chipset:</p>

<p>Exynos 7870</p>

<p>CPU:</p>

<p>Octa Core 1.6GHz</p>

<h2>Bộ nhớ &amp; Lưu trữ</h2>

<p>RAM:</p>

<p>2GB</p>

<p>Bộ nhớ trong:</p>

<p>16GB</p>

<p>Hỗ trợ thẻ nhớ ngo&agrave;i:</p>

<p>l&ecirc;n đến 256GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Cảm ứng:</p>

<p>C&oacute;</p>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>Super AMOLED</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>4.7 inches</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1280 x 720 pixels</p>

<h2>Camera</h2>

<p>Camera trước:</p>

<p>8 MP</p>

<p>Camera sau:</p>

<p>13 MP</p>

<p>Đ&egrave;n Flash:</p>

<p>C&oacute;</p>

<p>Video:</p>

<p>C&oacute;</p>

<h2>Kết nối</h2>

<p>Mạng 3G:</p>

<p>C&oacute;</p>

<p>Mạng 4G:</p>

<p>C&oacute;</p>

<p>Loại SIM:</p>

<p>Nano SIM</p>

<p>Số khe SIM:</p>

<p>2 SIM</p>

<p>WIFI:</p>

<p>C&oacute;</p>

<p>Bluetooth:</p>

<p>C&oacute;</p>

<p>NFC:</p>

<p>C&oacute;</p>

<p>GPS:</p>

<p>C&oacute;</p>

<p>USB:</p>

<p>C&oacute;</p>

<p>Loa ngo&agrave;i:</p>

<p>C&oacute;</p>

<p>Jack 3.5mm:</p>

<p>C&oacute;</p>

<h2>Pin</h2>

<p>Dung lượng Pin:</p>

<p>2350 mAh</p>

<p>Thời gian đ&agrave;m thoại:</p>

<p>Lến đến 17 h</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Ghi &acirc;m:</p>

<p>C&oacute;</p>

<p>Radio:</p>

<p>C&oacute;</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>135.4x66.2x7.9 mm</p>

<p>Khối lượng th&ugrave;ng (g):</p>

<p>138 gram</p>
', N'<p>M&agrave;n h&igrave;nh: HD, 4.7 inches</p>

<p>HĐH: Android 6.0</p>

<p>CPU: Octa Core 1.6GHz</p>

<p>Camera: 13MP, 8MP</p>

<p>Pin: 2350 mAh</p>
', N'A4.png', N'A4_1.png', N'A4_2.png', N'A4_3.png', N'A4_4.png', 6490000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A5', N'LSP01', N'NSX03', N'Asus Zenfone 3 ', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>General</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5804096660118</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/asus.html">Asus</a></td>
		</tr>
		<tr>
			<td>Model</td>
			<td>Zenfone 3 Ultra</td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>Loại m&agrave;n h&igrave;nh (C&ocirc;ng nghệ m&agrave;n h&igrave;nh)</td>
			<td>IPS LCD</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>6.4 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>Full HD (1920 x 1080)</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Chụp h&igrave;nh &amp; Quay phim</strong></td>
		</tr>
		<tr>
			<td>Camera trước</td>
			<td>8MP</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>23MP</td>
		</tr>
		<tr>
			<td>Đ&egrave;n Flash</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ &amp; Lưu trữ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>4GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong (ROM)</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ nhớ ngo&agrave;i</td>
			<td>MicroSD</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ tối đa</td>
			<td>200 GB</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Thiết kế &amp; Trọng lượng</strong></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>300</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>233g</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>D&agrave;i 18.64cm x Rộng 9.39cm x D&agrave;y 0.68cm</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Hệ điều h&agrave;nh - CPU</strong></td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>Snapdragon 652 l&otilde;i 8 nh&acirc;n</td>
		</tr>
		<tr>
			<td>Tốc độ chip (GHz)</td>
			<td>1.8 GHz</td>
		</tr>
		<tr>
			<td>Chip đồ họa (GPU)</td>
			<td>Adreno 510</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 6.0 Marshmallow</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Dung lượng pin (mAh)</td>
			<td>4600 mAh</td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>Pin chuẩn Li-Ion</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kết nối</strong></td>
		</tr>
		<tr>
			<td>Băng tần 2G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Băng tần 3G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>H&ocirc;̃ trợ 4G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Loại Sim</td>
			<td>Nano-SIM</td>
		</tr>
		<tr>
			<td>Số khe sim</td>
			<td>2 SIM 2 S&oacute;ng</td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>802.11a/b/g/n/ac</td>
		</tr>
		<tr>
			<td>GPS</td>
			<td>GPS/A-GPS</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>Bluetooth V4.2/A2DP/EDR</td>
		</tr>
		<tr>
			<td>NFC</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Cổng sạc</td>
			<td>Micro USB Type-C</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giải tr&iacute; &amp; Ứng dụng</strong></td>
		</tr>
		<tr>
			<td>FM radio</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bảo h&agrave;nh</strong></td>
		</tr>
		<tr>
			<td>Phụ kiện đi k&egrave;m</td>
			<td>Sạc, s&aacute;ch hướng dẫn</td>
		</tr>
		<tr>
			<td>C&oacute; thuế VAT</td>
			<td>C&oacute;</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
', N'<p>M&agrave;n h&igrave;nh: IPS 6.8&quot; Full HD</p>

<p>Camera trước/sau: 8MP/23MP</p>

<p>RAM: 4GB - ROM: 64GB</p>

<p>Pin: 4600mAh</p>

<p>Số SIM: 2 SIM 2 s&oacute;ng</p>
', N'A5.png', N'A5_1.png', N'A5_2.png', N'A5_3.png', N'A5_4.png', 7950000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A6', N'LSP01', N'NSX03', N'ZenFone 3 ZE552KL', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>General</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5808392264636</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/asus.html">Asus</a></td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>Loại m&agrave;n h&igrave;nh (C&ocirc;ng nghệ m&agrave;n h&igrave;nh)</td>
			<td>IPS LCD</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>5.5 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>1920 x 1080 pixels</td>
		</tr>
		<tr>
			<td>Hiển thị m&agrave;u sắc</td>
			<td>Hơn 16 triệu m&agrave;u</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Chụp h&igrave;nh &amp; Quay phim</strong></td>
		</tr>
		<tr>
			<td>Camera trước</td>
			<td>8 MP</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>16 MP</td>
		</tr>
		<tr>
			<td>Đ&egrave;n Flash</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ &amp; Lưu trữ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>4GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong (ROM)</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ nhớ ngo&agrave;i</td>
			<td>MicroSD (T-Flash)</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ tối đa</td>
			<td>l&ecirc;n đến 128 GB</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Thiết kế &amp; Trọng lượng</strong></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>200</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>155 g</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>152.59 x 77.38 x 7.69 mm</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Hệ điều h&agrave;nh - CPU</strong></td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>Qualcomm Snapdragon 625 MSM8953</td>
		</tr>
		<tr>
			<td>Chip đồ họa (GPU)</td>
			<td>Adreno 506</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 6.0 Marshmallow</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Dung lượng pin (mAh)</td>
			<td>3000 mAh</td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>Polymer</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kết nối</strong></td>
		</tr>
		<tr>
			<td>Băng tần 2G</td>
			<td>GSM 850/900/1800/1900</td>
		</tr>
		<tr>
			<td>Băng tần 3G</td>
			<td>WCDMA 850/ 2100 GHz</td>
		</tr>
		<tr>
			<td>H&ocirc;̃ trợ 4G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Số khe sim</td>
			<td>2 SIM 2 S&oacute;ng (hoặc 1 SIM 1 Thẻ nhớ)</td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>Wi-Fi 802.11 ac</td>
		</tr>
		<tr>
			<td>GPS</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>v4.2</td>
		</tr>
		<tr>
			<td>Cổng sạc</td>
			<td>USB Type-C</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giải tr&iacute; &amp; Ứng dụng</strong></td>
		</tr>
		<tr>
			<td>FM radio</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bảo h&agrave;nh</strong></td>
		</tr>
		<tr>
			<td>Phụ kiện đi k&egrave;m</td>
			<td>Sạc, s&aacute;ch hướng dẫn</td>
		</tr>
		<tr>
			<td>C&oacute; thuế VAT</td>
			<td>C&oacute;</td>
		</tr>
	</tbody>
</table>
', N'<p>M&agrave;n h&igrave;nh: IPS LCD 5.5&quot; Full HD</p>

<p>Camera trước/sau: 8MP/16MP</p>

<p>RAM: 4 GB</p>

<p>ROM: 64 GB</p>

<p>Pin: 3000 mAh</p>

<p>Số SIM: 2 SIM 2 s&oacute;ng</p>
', N'A6.png', N'A6_1.png', N'A6_2.png', N'A6_3.png', N'A6_4.png', 8190000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A7', N'LSP01', N'NSX03', N'Asus ZenFone 3 Max Z', N'<table cellspacing="0" id="chi-tiet">
	<tbody>
		<tr>
			<td colspan="2"><strong>General</strong></td>
		</tr>
		<tr>
			<td>SKU</td>
			<td>5800095707205</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin chi tiết</strong></td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td><a href="http://tiki.vn/thuong-hieu/asus.html">Asus</a></td>
		</tr>
		<tr>
			<td colspan="2"><strong>M&agrave;n h&igrave;nh</strong></td>
		</tr>
		<tr>
			<td>Loại m&agrave;n h&igrave;nh (C&ocirc;ng nghệ m&agrave;n h&igrave;nh)</td>
			<td>IPS LCD</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>
			<td>5.5 inch</td>
		</tr>
		<tr>
			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>
			<td>Full HD (1920 x 1080)</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Chụp h&igrave;nh &amp; Quay phim</strong></td>
		</tr>
		<tr>
			<td>Camera trước</td>
			<td>8MP</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>16MP</td>
		</tr>
		<tr>
			<td>T&iacute;nh năng camera</td>
			<td>lấy n&eacute;t si&ecirc;u nhanh trong 0,03 gi&acirc;y</td>
		</tr>
		<tr>
			<td>Đ&egrave;n Flash</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bộ nhớ &amp; Lưu trữ</strong></td>
		</tr>
		<tr>
			<td>Bộ Nhớ RAM</td>
			<td>3GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong (ROM)</td>
			<td>32 GB</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ nhớ ngo&agrave;i</td>
			<td>MicroSD</td>
		</tr>
		<tr>
			<td>Hỗ trợ thẻ tối đa</td>
			<td>128 GB</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Thiết kế &amp; Trọng lượng</strong></td>
		</tr>
		<tr>
			<td>Trọng lượng vận chuyển (gram)</td>
			<td>300</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>175 g</td>
		</tr>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>151.4 x 76.24 x 8.3 mm</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Hệ điều h&agrave;nh - CPU</strong></td>
		</tr>
		<tr>
			<td>T&ecirc;n chip</td>
			<td>Bộ Vi Xử L&yacute; L&otilde;i T&aacute;m Snapdragon&trade; 430</td>
		</tr>
		<tr>
			<td>Chip đồ họa (GPU)</td>
			<td>Adreno&trade; 505</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 6.0 Marshmallow</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Th&ocirc;ng tin pin</strong></td>
		</tr>
		<tr>
			<td>Dung lượng pin (mAh)</td>
			<td>4100 mAh</td>
		</tr>
		<tr>
			<td>Loại pin</td>
			<td>Pin chuẩn Li-Ion</td>
		</tr>
		<tr>
			<td>Pin c&oacute; thể th&aacute;o rời</td>
			<td>kh&ocirc;ng</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Kết nối</strong></td>
		</tr>
		<tr>
			<td>Băng tần 2G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Băng tần 3G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>H&ocirc;̃ trợ 4G</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td>Loại Sim</td>
			<td>Micro-SIM v&agrave; Nano-SIM</td>
		</tr>
		<tr>
			<td>Số khe sim</td>
			<td>2 SIM 2 S&oacute;ng</td>
		</tr>
		<tr>
			<td>Wifi</td>
			<td>802.11b/g/n</td>
		</tr>
		<tr>
			<td>Bluetooth</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Giải tr&iacute; &amp; Ứng dụng</strong></td>
		</tr>
		<tr>
			<td>FM radio</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2"><strong>Bảo h&agrave;nh</strong></td>
		</tr>
		<tr>
			<td>M&ocirc; tả bảo h&agrave;nh</td>
			<td>Hotline: 18006588. Địa điểm bảo h&agrave;nh: 28 Nguyễn Thị Diệu ,Q. 3 ,TP. Hồ Ch&iacute; Minh</td>
		</tr>
		<tr>
			<td>Phụ kiện đi k&egrave;m</td>
			<td>Sạc, s&aacute;ch hướng dẫn</td>
		</tr>
		<tr>
			<td>C&oacute; thuế VAT</td>
			<td>C&oacute;</td>
		</tr>
	</tbody>
</table>
', N'<p>M&agrave;n h&igrave;nh: IPS 5.5&quot; Full HD</p>

<p>Camera trước/sau: 8MP/16MP</p>

<p>RAM: 3GB</p>

<p>ROM: 32GB</p>

<p>Pin: 4100mAh</p>

<p>Số SIM: 2 SIM 2 s&oacute;ng</p>
', N'A7.png', N'A7_1.png', N'A7_2.png', N'A7_3.png', N'A7_4.png', 4240000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'A8', N'LSP02', N'NSX03', N'ASUS A556UR-DM263D', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>A556UR-DM263D</p>

<p>M&agrave;u sắc:</p>

<p>V&agrave;ng</p>

<p>Nh&agrave; sản xuất:</p>

<p>Asus</p>

<p>Xuất xứ:</p>

<p>Trung Quốc</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>24 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Bộ vi xử l&yacute;</h2>

<p>CPU:</p>

<p>Intel Core i5</p>

<p>Loại CPU:</p>

<p>7200U</p>

<p>Tốc độ CPU:</p>

<p>2.50 GHz</p>

<p>Bộ nhớ đệm:</p>

<p>3 MB Cache</p>

<p>Tốc độ CPU tối đa:</p>

<p>3.10 GHz</p>

<h2>Bộ nhớ</h2>

<p>Loại RAM:</p>

<p>SDRAM DDR3</p>

<p>Dung lượng RAM:</p>

<p>4 GB</p>

<p>Tốc độ Bus RAM:</p>

<p>2133 MHz</p>

<h2>Đĩa cứng</h2>

<p>Loại ổ đĩa cứng:</p>

<p>SATA</p>

<p>Dung lượng :</p>

<p>500 GB</p>

<h2>Đĩa quang</h2>

<p>T&iacute;ch hợp đĩa quang:</p>

<p>C&oacute;</p>

<p>Loại đĩa quang:</p>

<p>SuperMulti DVD</p>

<h2>Đồ họa</h2>

<p>Bộ xử l&yacute; đồ họa:</p>

<p>NVIDIA GeForce</p>

<p>Chipset card đồ họa:</p>

<p>GT 930MX</p>

<p>Dung lượng card đồ họa:</p>

<p>2GB DDR3 VRAM</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>LED Backlit Full HD Anit-Glaire</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>15.6 inch</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1920 x 1080 Pixels</p>

<h2>&Acirc;m thanh</h2>

<p>C&ocirc;ng nghệ &acirc;m thanh:</p>

<p>High Definition Audio</p>

<p>Chuẩn &acirc;m thanh:</p>

<p>Realtek High Definition Audio</p>

<h2>Kết nối</h2>

<p>Chuẩn WiFi:</p>

<p>Wi-Fi 802.11 b/g/n/ac</p>

<p>Chuẩn LAN:</p>

<p>10 / 100 / 1000 Mbps</p>

<p>Cổng USB:</p>

<p>C&oacute;</p>

<p>Cổng HDMI:</p>

<p>C&oacute;</p>

<p>Khe đọc thẻ nhớ:</p>

<p>C&oacute;</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Camera:</p>

<p>VGA</p>

<h2>Hệ điều h&agrave;nh</h2>

<p>HĐH k&egrave;m theo m&aacute;y:</p>

<p>Free DOS</p>

<h2>Pin</h2>

<p>Loại Pin Laptop :</p>

<p>2-Cells Li-Ion</p>

<h2>K&iacute;ch thước &amp; Khối lượng</h2>

<p>K&iacute;ch thước th&ugrave;ng:</p>

<p>382x258x25.5 mm</p>

<p>Khối lượng th&ugrave;ng (kg):</p>

<p>2.3 kg</p>
', N'<p>CPU: Intel Core i5-7200U</p>

<p>RAM/HDD: 4GB/500GB</p>

<p>M&agrave;n h&igrave;nh: Full HD 15.6inch</p>

<p>Card MH: GeForce 930MX 2GB</p>

<p>HĐH: Free DOS</p>
', N'A8.png', N'A8_1.png', N'A8_2.png', N'A8_3.png', N'A8_4.png', 13390000, 0, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [ChiTietCauHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'abc', N'LSP01', N'NSX02', N'SAMSUNG GALAXY J5 ', N'<h2>Th&ocirc;ng tin chung</h2>

<p>Model:</p>

<p>GALAXY J5 PRIME</p>

<p>M&agrave;u sắc:</p>

<p>Đen</p>

<p>Nh&agrave; sản xuất:</p>

<p>Samsung</p>

<p>Thời gian bảo h&agrave;nh:</p>

<p>12 th&aacute;ng</p>

<p>Địa điểm bảo h&agrave;nh:</p>

<p>Nguyễn Kim</p>

<h2>Hệ điều h&agrave;nh &amp; CPU</h2>

<p>Hệ điều h&agrave;nh:</p>

<p>Android</p>

<p>CPU:</p>

<p>Quad Core 1.4GHz</p>

<h2>Bộ nhớ &amp; Lưu trữ</h2>

<p>RAM:</p>

<p>2GB</p>

<p>Bộ nhớ trong:</p>

<p>16GB</p>

<p>Hỗ trợ thẻ nhớ ngo&agrave;i:</p>

<p>l&ecirc;n đến 256GB</p>

<h2>M&agrave;n h&igrave;nh</h2>

<p>Cảm ứng:</p>

<p>C&oacute;</p>

<p>Loại m&agrave;n h&igrave;nh:</p>

<p>TFT LCD</p>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh:</p>

<p>5 inches</p>

<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh:</p>

<p>1280 x 720 pixels</p>

<h2>Camera</h2>

<p>Camera trước:</p>

<p>5 MP</p>

<p>Camera sau:</p>

<p>13 MP</p>

<p>Video:</p>

<p>C&oacute;</p>

<h2>Kết nối</h2>

<p>Mạng 3G:</p>

<p>C&oacute;</p>

<p>Mạng 4G:</p>

<p>C&oacute;</p>

<p>Loại SIM:</p>

<p>Nano SIM</p>

<p>Số khe SIM:</p>

<p>2 SIM</p>

<p>WIFI:</p>

<p>C&oacute;</p>

<p>Bluetooth:</p>

<p>C&oacute;</p>

<p>NFC:</p>

<p>Kh&ocirc;ng</p>

<p>GPS:</p>

<p>C&oacute;</p>

<p>USB:</p>

<p>C&oacute;</p>

<p>Loa ngo&agrave;i:</p>

<p>C&oacute;</p>

<p>Jack 3.5mm:</p>

<p>C&oacute;</p>

<h2>Pin</h2>

<p>Dung lượng Pin:</p>

<p>2400 mAh</p>

<p>Thời gian đ&agrave;m thoại:</p>

<p>L&ecirc;n đến 16h (3G)</p>

<h2>T&iacute;nh năng kh&aacute;c</h2>

<p>Ghi &acirc;m:</p>

<p>C&oacute;</p>

<p>Tiện &iacute;ch kh&aacute;c ĐTDĐ:</p>

<p>Hỗ trợ Gear</p>
', N'<p>M&agrave;n h&igrave;nh: 5.0&quot; HD</p>

<p>HĐH: Android</p>

<p>CPU: 4 nh&acirc;n, Ram 2 GB</p>

<p>Camera: 13MP, 5MP</p>

<p>Pin: 2400 mAh</p>
', N'abc.png', N'abc_1.png', N'abc_2.png', N'abc_3.png', N'abc_4.png', 44900000, 0, 0, N'0         ', N'New')
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
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuongView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New') FOR [GhiChu]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat1] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat1]
GO
