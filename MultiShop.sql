USE [master]
GO
/****** Object:  Database [MultiShop]    Script Date: 11/9/2019 5:03:44 PM ******/
CREATE DATABASE [MultiShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MultiShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MultiShop.mdf' , SIZE = 4416KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MultiShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MultiShop_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MultiShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MultiShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MultiShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MultiShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MultiShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MultiShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MultiShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MultiShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MultiShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MultiShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MultiShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MultiShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MultiShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MultiShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MultiShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MultiShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MultiShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MultiShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MultiShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MultiShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MultiShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MultiShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MultiShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MultiShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MultiShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MultiShop] SET  MULTI_USER 
GO
ALTER DATABASE [MultiShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MultiShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MultiShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MultiShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MultiShop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MultiShop', N'ON'
GO
USE [MultiShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/9/2019 5:03:47 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/9/2019 5:03:47 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameVN] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif'),
	[Activated] [bit] NULL CONSTRAINT [DF_Customers_Active]  DEFAULT ((0)),
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)),
	[Quantity] [int] NOT NULL CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)),
	[Discount] [float] NOT NULL CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)),
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()),
	[RequireDate] [datetime] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Amount] [float] NOT NULL CONSTRAINT [DF__Orders__Amount__381A47C8]  DEFAULT ((0)),
	[Result] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebActionId] [int] NOT NULL,
	[RoleId] [nvarchar](128) NULL,
	[Allowable] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[UnitBrief] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)),
	[Image] [nvarchar](50) NOT NULL CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif'),
	[ProductDate] [datetime] NOT NULL CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()),
	[Available] [bit] NOT NULL CONSTRAINT [DF_Products_Available]  DEFAULT ((1)),
	[Description] [nvarchar](2000) NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [nvarchar](50) NOT NULL CONSTRAINT [DF_Products_SupplierId]  DEFAULT (N'NK'),
	[Quantity] [int] NOT NULL CONSTRAINT [DF__Products__Quanti__145C0A3F]  DEFAULT ((100)),
	[Discount] [float] NOT NULL CONSTRAINT [DF_Products_Discount]  DEFAULT (rand()),
	[Special] [bit] NOT NULL CONSTRAINT [DF_Products_Special]  DEFAULT ((0)),
	[Latest] [bit] NOT NULL CONSTRAINT [DF_Products_New]  DEFAULT ((0)),
	[Views] [int] NOT NULL CONSTRAINT [DF_Products_Views]  DEFAULT ((0)),
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](50) NOT NULL CONSTRAINT [DF_Suppliers_Logo]  DEFAULT (N'Logo.gif'),
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebActions]    Script Date: 11/9/2019 5:03:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebActions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Controller] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WebActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201410130742219_InitialCreate', N'MultiShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB72DB36107DEF4CFF81C3A7A433116DE725F548C938B2DD7A1ADB99D0C96B0626211953126409C895BFAD0FFDA4FE4201DE495C088AD42D2F1E895CEC2E760F16B723FFF7CFBFD30FEB30B09E6142508467F6E9E4C4B620F6221FE1E5CC5ED1C59B77F687F73FFF34BDF2C3B5F5AD907BCBE5584B4C66F613A5F1B9E310EF0986804C42E42511891674E245A103FCC8393B39F9D5393D75205361335D9635FDB2C2148530FDC2BECE23ECC198AE40701BF93020F973F6C64DB55A77208424061E9CD9B7AB8022F7298A2799AC6D5D0408303F5C182C6C0B601C51409997E75F09746912E1A51BB3072078788921935B8080C0DCFBF34ADCB4232767BC234ED570A340D865175927AF5830E80B772FEDE8CCBEF161FAE84B14C0BA2493FD03BE341EB0479F9328860993868BB2BD6D39CD764EBB61D9ACD686BBC0024913967DDBBA05EB4F102FE913C3C5D93BDBBA466BE8174FF2287EC588818535A2C98A7DBD5B0501780C60F9DED1DAE47F3556D9C7E156A74E155E6DD02FE238405E9A52869CC4B63E020273DF18B4264552B2978E5102B9EC3C0028DC7D166F307D7B26894D6D80B8344AE06F10C30450E87F0694C20457CE77652FED183736420A0D2C7D03C16A0BA6EEC0335AA6F16819CDF2FC0506E94BF28462091052CFBE67A2D74914F2112B497F2AF1DD8D5689C7BB1069C51E40B2847443143750FA03970EDEBF91CA87DED06740C8DF51E2FF0EC8D3D68DB9D05B252C7B2E0561BC43ACA7E823E3A2BD807107DA8B4161EAEAA7688970B7ABA998D6D54A42EB6A4DACAFAB5C59B7A75C4AEB6829A0F5B39292B9B951FD48BBBE4911E18DC54222154D6DB0C7CFC86F4FAB8A168530F3A47FA92A3CDB75B96A7573D7E61B31DBBAF161536AAF91AB9B5225037CF090D87445DE634470139BCCC2FB8276E1EFFE609526C5A8CC66929A329BFED181AA9292616A30F87B4C069D5EF646FE0521918752F754B3C177C9BAF20AFB96D920956FA6B269C64A37F67C0BC61ECFEC5F84C0769A296747D59EAD69E1D46E8FC57B7C090348A175E165270273403CE08B4864F1F39B4FD8F08509B70582394B2E4D00C2541CEB087B280681513F5AAD0D57EBDCBBD24EFBCD258C21E6468DF265E280B2AE39A5AD56E8BA2235756A3034476735BC4D502319EB72D064056333688AA542624466E0B090297463C7C0147265625F3E89EE0B97C6455352DDB784CBE3AF984237F681CBA3AD97B5ADBC096664A75872D064C79D1B4253767CB06B6C2A039A2D9A5812284B014CC463E3CB47FE12AEA91052DED085B4792E502DC2A4738210B0A612216C3A8DB5C4F450DBA5B197B2E2DC46AB315F0AF650DB15CBAA58B694D692AC71385F8BD784F53BD636088DD7C6651FE55113EA85F16A58A158D0D9803D13EF19ADDAF64A1F2CC542ADC7524DD1A31C09869112176735B552556304C8044D8A15438F35C37801DA0792EA87CCFA48A9E6B03EB398A2534545350C9664DE1A215AC53EBD9C72AA7B7127BB182F2ED01DC50DFAF416C431C2CBDA8D7AFEC472B3EBF4F91BB7FF057698E9703C22B9C72EBD2D2DD128014BD87ACB4C334FAF5142E825A0E011F0139FB91F0A627D26D8C2647D9E1533584C158534FF9CB568930B9A53B2B8C0CB355CB3FE857C9598DEA84A322F6F6E717E03084022B94F9B47C12AC4EA45ABBA75762B566F9F3D11354C9D96FFC2A2548895B0726A06DE282DCDE130283DED3BFBCD33246F3E38430CAF3E4A97E0E9F5B58465505773898897A01061C0BCDC46C63AE27B43F8E7FBC52BE538E03EBF3EBC304B5B735BE260A89E9A6B6ADE01D7B535DF986B6C5DF4D655B65EED1C04DADC1F5EEA8511D6DCA1EC74788D5010F385C7680993B08F7A674DA1633BA3B6C62AAA2BA93DEEA92BE70D09CAF2E70789827CDB371A0A2437F9BD51A0D0A1ABBE6D24A84EBFD45A5AF7E675651DCC01B5CEC66578A398AB990507828B1157B4F2DBECDEA8E8B7B21D0714C5E17E5D8BEAC07FFB696B6EDF3A2A7BBEAFED53BCF326BD0B34DFAA0A9559B76515236754DE5315F233ED9A071B3BA73C5CDF78EE51FBD5DE8B8BF916B6E46D91126DE5D6BCB5059FE6DBE16EA6BBB03FCE446CABA8536CADF842280C275C60E2FE15CC03C4625809DC028C1690D087E84F886736DBBEBF6BD1E537A0AE3B84F8C121F3D7F13348BC279088249401F4F442E9AB10AC5F8F4539DF2F5977B438555BAA8E586DCAB71DA450CAA91DA4B1B58F1814CD8DB0B2A79F14205E5B3A7F34D0133CC2AF0806A546FCA5C02075E5DCB6FB1CFFF0E4DBD1CA8F945B3B9A760975769730381AC2E968016FF249478EF5A814C7FD10673437BF4329968339397B212D1E17F1C69CA898DDA6EF8333A8BE111E48481B0430C569C5D6495E3F32E1F0904AD8BEF1B58F02668CAF83A95F3D89838704B09C01378CB878741053DD00C931A638C91B1D64AD63B462FB2650421447E4B283A62E4265767C36B3FDC78881205B3A5E90F80E5239DF4B652C43AFD2587E5CAB34266701E98CE5C8D45ACC65F466E5ACA66EDAA6196B536F5BCE64ECE4761A513BF596E5D9DD27FF53C90EEB47F4D4B3468F81E059CFB04898EA4355D4B21E8F85CA391C17BB0EC516C99AC383D1A89B8A4BB3ADB031C52B1E3653D6FEE5119BAF095A562A38890543AF31479632377811157375CBA342A47582720B29F0D9047A9150B4001E65AF3D4848FABBDC9C2473153E42FF06DFAF68BCA2ACCB307C0C1A277A7CCAD7D94F29A74D9FA7F771FACBD631BAC0DC44AC0BF01E7F5CA1C02FFDBE961CF52854F0B5447E4ECD7349F979F5F2A5D4741761434579F8CA25D0030CE3802923F7D805CF50ED5B770C9B119B5E22B04C4048721D557BF695C1CF0FD7EFFF07BC2792AFB44B0000, N'6.0.0-20911')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201410131454139_van', N'MultiShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5D4B73DC3612BEA76AFF038BA7245519CACAC5718D9292256BD7B591E4F238C9D1059198116BF95A12A348BF2D87FD49FB1702F0893701BE664617D78804BA1B8D0F8D46A39BFEFF5FFF5BFFF21C47CE13CC8B304D2EDC37AB33D781899F0661B2BB70F768FBC35BF7979FFFF1CDFA43103F3BBF37ED7E24ED70CFA4B8701F11CADE795EE13FC21814AB38F4F3B448B768E5A7B10782D43B3F3BFBC97BF3C68398848B6939CEFAF33E41610CCB3FF09F5769E2C30CED41749B06302AEAE7F8CDA6A4EADC81181619F0E1857BBB8F50B8794CB355D5D6752EA31060393630DABA0E4892140184A57CF75B0137284F93DD26C30F40F4E52583B8DD164405ACA57FD735371DC8D9391988D7751CA408B71D221EE407AC0CF442C42B077AE17E82791C1644D5743BDCF2DFF08579801F7DCAD30CE6E8E533DCD6BD3F06AEE3B1FD3CBE63DB8DEA4304C0BF12F4E3B9EBDCEDA3083C44B0D517A5D80D4A73F84F98C01C20187C0208C13C2134603910813BC7EB0FF870E91342FD4CF5843EA711EC68E0B9C6A0759D5BF0FC2B4C76E811C3F9FCADEBDC84CF30689ED4747F4B428C71DC09E5FB5E36975194FE49C46A38BD4F316390F4CB7B079EC25DA9339EA45F21E7338CCAD7C5639855085EB5DAF9DAA10083FC264F63325E4A7D7483AF5F40BE83084B98EA5A6DD27DEE5BC8496849A5BCCCB228F4CBA7A48D4A564D3341625D5B99DC6BAF5B37DAD5D4AAE2352E26F2AF6605E09F13AC006C9FB1218D22984FCF4A893D0652D32D94064AFA85D2807310E03824BBCE7B50C05A6F44F2666ECB971369638205C96BC664F10ED28F66FC0BACC911FB84E5FE34D1DAD4721D024AEC18E54A50562F3DA309246DAF2210C6AFD1B2960323CCE637AF84D3EF20DACFC04A6950AA799658126172BF564D3B23226F21D80F45B3494C4729D22B361D647C8B6CED9F4051FC99E6C1BF40F1383BB30DF4F7399EBD0D0271B620D64BF4C9F7CDC168E7DDD79E45612AEAAFE92E546CF13487B29956D4AE855654AAD990C341BFA4A5EBA013B46DA095B36B35EA2C200C7D8811219D4543226D5AF2C08F9FC280DF56153D9AC658127B53D548B6B4B9E286B9347B4667B3331FB7A55AAD5CDD962A59E0A397C4508FDC624534419B5381F66441A6C1B052066104FB58B5D498D9F21F1DA8BA56324C8D06BFC566D02BA535F22F8B22F5C3523C3E32C41C97D9017F4802C7289ED01DA5BA80935346ABC9C10BCB83A1E2F2EBE33EB9861144D0A93A605705143E084474E031057682B5BB6927181557E624FB5E6088572CCC89CA417485C9A11C840912977798F86106221315719D0DFD7332F6960DFFE61A663021C030D184097F26362D0AD2F2E326A74F596B8F029F1E93BA408E0A0046519D0E06427C8AC5C2D96AF546808319B34360CE60F00B20CF402B2652C877C785A0A770535440E8F359E4B1A5CAEBEE85422F1B09D4D810D68CA677104EF5E35800A2FAF9321140E9E62D8DCECEDB31418DC4F5918346660D4DA1297A4EAA88FF51235318C6C2C014E6EAA4AC66E7DF1A43C6C4668EC6E5E95B4C611887C0E5C9DA4B2AB269821959505F0E9AEAF667203465D1D4A5B1A9546875862437DF780A602E7AE7D70FE4257C46824A49C70D44B29BDBEE642A718F05A5B184DAB3898C0E75E6EC2153876D050AEC1ED5434498461D450A281664FB285A116BC2EA5A8AB56B6A41B64F979DF1E68852A0934C307B7B4FB5D5A63EF04BC23472D10E90859860B44C030E143D661CFC42647560A01F6D8E83A825E393B4F5599A1A618D008DB24CCECBB3A94C157916B56572F8B339FE5143922D448DC27A0E7C0AC2536B8B0AA8EA95A5388B589C461423EA8796FEFCD187D2291464822685536CE1164FA7A0432089BE56D66B4AE5A6D9386A8A41359BB4A1B224AED904DA6A22F3AD57D5BE5B7B55A677FD60ED2952C2D7B720CBC26447A588D74F9C4D951F7EF5C3C63E233BAE68783EB333F03E60CB09A539D841EE2D49930CE04D9817E81A20F000C81DCF55100BCD6C7CC886A5E84A8AF3D8F8204D1FF2BBEAC7E7CCD35EA7788EA9FBDFE031C6E43054E651497728B1B34352F6410472490ECD551AEDE3447D3253F766A2F234196DB85E4DAF8917D0A454310435152A2F9C26443D1669AD3D4EBBC2C9509847E1F8C242C30838945F370A378A546A23D868FACE839A2A7F8AEE5F3D31A740E73DD374E8E74733C7D56E386A7AF98B21FB4956A7F64E32CF58F14158C638CA744949AA354DE63A2CFC3C8CC3046029E798A91EFD7E2CC8EFFBEDB782A269357D777C6A1EB99C6656AB569BC7A74C01B36CA06551C00E342DACBF37958991F9B916D325EF3EAB89A97CF8D3323144E631266626354B7B135EA299E99E9A5362D39A696AEC1B738A5CEE324D927B753C06F14456181BD53D3583589FAC279B3049418DF5AC2968CCB36AA94219C649EE1E5BD2AA4B610462F5F3A344411DD79C0C0592E4746B142868E8AC2F8F04D50DA69A0A970A4E13EB498657D364F2BB1963AE4E963F125C4C702AD327685BA3C2CECD9D0614760197B9A78D8D4FF658F63A706B63BCEB2ED6069AC46205CBAC8BC98A9A3332EF2509795E0225C160E194091283F71EB55C7CB0599C6F21E6CC3769D1D6C69EB918F3BA8EF7F67F9B440800574D5CA7B153D8577C29108C57A4C16AF3DFE82A0AB10EBB06B72009B7B0405FD2FFC0E4C23D3F3B7BCB7DE064C0C746BCA208A2E3FDE2484814D05BAC6B59B621F9C848C96754F547F20472FF11E462FD474776D017451EC23ED14EE16B17B34C6475F263F5FF6D0C9EBFB355BAF8110B0B7227F26D0313804EA775234ADC116E949C2752263ED92C74918F09F02FABF41E45505ACD3D8AE2C1B172A08F59CC623885EF578CB39EC2372A46916B5DD0E5E7F8D5977D4F667EA455DD935197146D2F09839329759E4CE1F6BEAC85AE272BAE3D68252D9D8D7D90BAD925CA1AB4C93FAFA52496BD64352CC5EAA97C3D143A7AEEB70F0D90A3A9BEB2AC593D4C259426CF796CCDECE822AB8354A19E56259579E5A995E55900624A79CC2B0C4FC27A195C971CB10DB3AB203D261376687C1DC28019E3EB68EC976525E83101AC2E211C57897A721053A583C831A6B8D69B1C64DC9D5A1B62E70B20F879AD2F43C55B277D656C758F76E1060F2906407538D515CAF18CA873A4C0877A2763A32E8954568656C64E60C4BE96F1BA2CB23B88E4C55A2A66D5625432ABAFA295CCE4253C3A66F542D372ACDBE8D9CA4B92FACB78CDAA78F5BCE56588BDB5BE46A5BE7ACEF2D93D503DB0BCF8575B2526AE59BE28E8440A7D65AB55CC073FB42A162AE05596F7D955EAEACB7E4FA14277381A54B6429E807522B5B8E371B1B42A66ACB61DAF0C66EF542485CD524E2BA63061E78FFA4F98B00B5A84BB8E0449D24EA0CFB87D6D9B8FC9366DDC4F4EA2A60977F5700B1108B04F7899A3700B7C845FFB109B48F229D53A09FC43FC00838FC9FD1E657B84870CE38788B90A235EAC8E7F5933CCCABCBECF4ACF6D8A216031433C04789FBCDF8751D0CA7D23B923519020EE717DC14BE612918BDEDD4B4BE92E4D0C09D5EA6BBDFA2F30CE224CACB84F36E009AA65EBD721ABB1F575087639888B9A46D71FFF89E117C4CF3FFF0DB994DE4D466C0000, N'6.0.0-20911')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'469e3d8f-1713-48bf-b170-a7ec7d66f91b', N'Employee', N'IdentityRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'c69b5296-402a-45cc-a31e-4d13875438d7', N'Supervisor', N'IdentityRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'f6d4fcc9-626a-4b81-89a0-2d9ab577df4a', N'Administration', N'ApplicationRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2a27124d-9192-44eb-bbd4-e917d44a8843', N'f6d4fcc9-626a-4b81-89a0-2d9ab577df4a')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'2a27124d-9192-44eb-bbd4-e917d44a8843', N'Admin', N'AA8/z65vY63/qpGPNNsH9wIlLKsBkFjFeZbE5kxK0ChGoz9pcJoNwrTnm2M88K77Lg==', N'e19b9909-4c68-4ee3-b806-5202e0528751', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'5e63c41b-9699-44ae-94b3-6badca048506', N'nhi', N'AOkQQyO87ltcmqDztzlVA7vCr5DU8dTi16C2sHv3tCM5PUXOphoE9Ye0kqLu3hAwNg==', N'525f4e0e-6cf2-40b7-af79-b0b612e46e06', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'b6f7a784-03a2-407c-921b-b3247faeacee', N'stephanvan1111', N'AEH0+oAE/fYY+qjEbgBZYnVfS6dvegvK4ZROdm2AlASvVZBoaMRLAWR73Y/RWZm/QA==', N'63b6e2d3-a148-4f1c-9632-2036b7b70d63', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'f59e533b-38b3-4681-a52c-4e8e33b1b428', N'yennhi', N'ABNNOC+5WLpUXmPjTPIUmvgq3sUKHr8wT2OILrxw+za6GHyoJ4lwDyvJZQzc6kQCGg==', N'd4d75349-6978-49b7-8db4-ca8840922975', N'ApplicationUser')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1000, N'Đồng hồ đeo tay', N'ĐỒNG HỒ', N'watches.jpg', N'iconwatches.jpg')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1001, N'Máy tính xách tay', N'MÁY TÍNH XÁCH TAY', N'laptop.jpg', N'icon-destop.png')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1002, N'Máy ảnh', N'MÁY ẢNH', N'camera.jpg', N'icon-camera.png')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1003, N'Điện thoại', N'ĐIỆN THOẠI', N'mobile.png', N'icon-mobile.png')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1004, N'Nước hoa', N'NƯỚC HOA', N'perfume.jpg', N'icon-perfume.jpg')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1005, N'Nữ trang', N'NỮ TRANG', N'jewelry.jpg', N'icon-jwelry.jpg')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1006, N'Giày thời trang', N'GIÀY THỜI TRANG', N'shoe.jpg', N'icon-shoe.jpg')
INSERT [dbo].[Categories] ([Id], [NameVN], [Name], [Image], [Icon]) VALUES (1007, N'Túi xách du lịch', N'TÚI XÁCH', N'bag.jpg', N'icon-bag.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ALFKI', N'iloveyou', N'Maria Anders', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ANATR', N'iloveyou', N'Ana Trujillo', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ANTON', N'iloveyou', N'Antonio Moreno', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'AROUT', N'iloveyou', N'Thomas Hardy', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BERGS', N'iloveyou', N'Christina Berglund', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BLAUS', N'iloveyou', N'Hanna Moos', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BLONP', N'iloveyou', N'Frédérique Citeaux', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BOLID', N'iloveyou', N'Martín Sommer', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BONAP', N'iloveyou', N'Laurence Lebihan', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BOTTM', N'iloveyou', N'Elizabeth Lincoln', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'BSBEV', N'iloveyou', N'Victoria Ashworth', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CACTU', N'iloveyou', N'Patricio Simpson', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CENTC', N'iloveyou', N'Francisco Chang', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CHOPS', N'iloveyou', N'Yang Wang', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'COMMI', N'iloveyou', N'Pedro Afonso', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'CONSH', N'iloveyou', N'Elizabeth Brown', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'DRACD', N'iloveyou', N'Sven Ottlieb', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'DUMON', N'iloveyou', N'Janine Labrune', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'EASTC', N'iloveyou', N'Ann Devon', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ERNSH', N'iloveyou', N'Roland Mendel', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FAMIA', N'iloveyou', N'Aria Cruz', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FISSA', N'iloveyou', N'Diego Roel', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FOLIG', N'iloveyou', N'Martine Rancé', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FOLKO', N'iloveyou', N'Maria Larsson', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANK', N'iloveyou', N'Peter Franken', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANR', N'iloveyou', N'Carine Schmitt', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FRANS', N'iloveyou', N'Paolo Accorti', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'FURIB', N'iloveyou', N'Lino Rodriguez', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GALED', N'iloveyou', N'Eduardo Saavedra', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GODOS', N'iloveyou', N'José Pedro Freyre', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GOURL', N'iloveyou', N'André Fonseca', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GREAL', N'iloveyou', N'Howard Snyder', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'GROSR', N'iloveyou', N'Manuel Pereira', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HANAR', N'iloveyou', N'Mario Pontes', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HILAA', N'iloveyou', N'Carlos Hernández', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HUNGC', N'iloveyou', N'Yoshi Latimer', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'HUNGO', N'iloveyou', N'Patricia McKenna', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ISLAT', N'iloveyou', N'Helen Bennett', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'KOENE', N'iloveyou', N'Philip Cramer', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LACOR', N'iloveyou', N'Daniel Tonini', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAMAI', N'iloveyou', N'Annette Roulet', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAUGB', N'iloveyou', N'Yoshi Tannamuri', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LAZYK', N'iloveyou', N'John Steel', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LEHMS', N'iloveyou', N'Renate Messner', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LETSS', N'iloveyou', N'Jaime Yorres', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LILAS', N'iloveyou', N'Carlos González', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LINOD', N'iloveyou', N'Felipe Izquierdo', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'LONEP', N'iloveyou', N'Fran Wilson', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MAGAA', N'iloveyou', N'Giovanni Rovelli', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MAISD', N'iloveyou', N'Catherine Dewey', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MEREP', N'iloveyou', N'Jean Fresnière', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'MORGK', N'iloveyou', N'Alexander Feuer', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'nnghiem', N'songlong4', N'Nguyen Nghiem', N'nghiemn@fpt.edu.vn', N'AVT.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'nnghiem2014', N'songlong', N'Nguyễn Nghiệm', N'nghiemn@fpt.edu.vn', N'nnghiem.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'nnghiem2015', N'songlong', N'Nguyễn Nghiệm', N'nghiemn@fpt.edu.vn', N'nnghiem.jpg', 1)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'NORTS', N'iloveyou', N'Simon Crowther', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OCEAN', N'iloveyou', N'Yvonne Moncada', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OLDWO', N'iloveyou', N'Rene Phillips', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'OTTIK', N'iloveyou', N'Henriette Pfalzheim', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PARIS', N'iloveyou', N'Marie Bertrand', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PERIC', N'iloveyou', N'Guillermo Fernández', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PICCO', N'iloveyou', N'Georg Pipps', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'PRINI', N'iloveyou', N'Isabel de Castro', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUEDE', N'iloveyou', N'Bernardo Batista', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUEEN', N'iloveyou', N'Lúcia Carvalho', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'QUICK', N'iloveyou', N'Horst Kloss', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RANCH', N'iloveyou', N'Sergio Gutiérrez', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RATTC', N'iloveyou', N'Paula Wilson', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'REGGC', N'iloveyou', N'Maurizio Moroni', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RICAR', N'iloveyou', N'Janete Limeira', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'RICSU', N'iloveyou', N'Michael Holz', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'ROMEY', N'iloveyou', N'Alejandra Camino', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SANTG', N'iloveyou', N'Jonas Bergulfsen', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SAVEA', N'iloveyou', N'Jose Pavarotti', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SEVES', N'iloveyou', N'Hari Kumar', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SIMOB', N'iloveyou', N'Jytte Petersen', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SPECD', N'iloveyou', N'Dominique Perrier', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SPLIR', N'iloveyou', N'Art Braunschweiger', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'stephanvan1111', N'hanh612', N'van', N'stephanvan1111@gmail.com', N'stephanvan1111.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'SUPRD', N'iloveyou', N'Pascale Cartrain', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'THEBI', N'iloveyou', N'Liz Nixon', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'THECR', N'iloveyou', N'Liu Wong', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TOMSP', N'iloveyou', N'Karin Josephs', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TORTU', N'iloveyou', N'Miguel Angel Paolino', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TRADH', N'iloveyou', N'Anabela Domingues', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'TRAIH', N'iloveyou', N'Helvetius Nagy', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VAFFE', N'iloveyou', N'Palle Ibsen', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VICTE', N'iloveyou', N'Mary Saveley', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'VINET', N'iloveyou', N'Paul Henriot', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WANDK', N'iloveyou', N'Rita Müller', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WARTH', N'iloveyou', N'Pirkko Koskitalo', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WELLI', N'iloveyou', N'Paula Parente', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WHITC', N'iloveyou', N'Karl Jablonski', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WILMK', N'iloveyou', N'Matti Karttunen', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'WOLZA', N'iloveyou', N'Zbyszek Piestrzeniewicz', N'nnghiem@yahoo.com', N'User.jpg', 0)
INSERT [dbo].[Customers] ([Id], [Password], [Fullname], [Email], [Photo], [Activated]) VALUES (N'yennhi', N'123456', N'yennhi', N'yennhi2443@gmail.com', N'user.jpg', 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100005, 10249, 1051, 42.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100006, 10250, 1041, 7.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100007, 10250, 1051, 42.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100008, 10250, 1065, 16.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100009, 10251, 1022, 16.8, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100010, 10251, 1057, 15.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100011, 10251, 1065, 16.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100012, 10252, 1020, 64.8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100013, 10252, 1033, 2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100014, 10252, 1060, 27.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100015, 10253, 1031, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100016, 10253, 1039, 14.4, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100017, 10253, 1049, 16, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100018, 10254, 1024, 3.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100019, 10254, 1055, 19.2, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100020, 10254, 1074, 8, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100021, 10255, 1002, 15.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100022, 10255, 1016, 13.9, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100023, 10255, 1036, 15.2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100024, 10255, 1059, 44, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100025, 10256, 1053, 26.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100026, 10256, 1077, 10.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100027, 10257, 1027, 35.1, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100028, 10257, 1039, 14.4, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100029, 10257, 1077, 10.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100030, 10258, 1002, 15.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100032, 10258, 1032, 25.6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100033, 10259, 1021, 8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100034, 10259, 1037, 20.8, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100035, 10260, 1041, 7.7, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100036, 10260, 1057, 15.6, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100037, 10260, 1062, 39.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100038, 10260, 1070, 12, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100039, 10261, 1021, 8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100040, 10261, 1035, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100042, 10262, 1007, 24, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100043, 10262, 1056, 30.4, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100044, 10263, 1016, 13.9, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100045, 10263, 1024, 3.6, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100046, 10263, 1030, 20.7, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100047, 10263, 1074, 8, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100048, 10264, 1002, 15.2, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100049, 10264, 1041, 7.7, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100050, 10265, 1017, 31.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100051, 10265, 1070, 12, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100052, 10266, 1012, 30.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100053, 10267, 1040, 14.7, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100054, 10267, 1059, 44, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100055, 10267, 1076, 14.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100056, 10268, 1029, 99, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100058, 10269, 1033, 2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100060, 10270, 1036, 15.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100061, 10270, 1043, 36.8, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100062, 10271, 1033, 2, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100063, 10272, 1020, 64.8, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100064, 10272, 1031, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100066, 10273, 1010, 24.8, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100067, 10273, 1031, 10, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100068, 10273, 1033, 2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100069, 10273, 1040, 14.7, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100070, 10273, 1076, 14.4, 33, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100071, 10274, 1071, 17.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100073, 10275, 1024, 3.6, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100074, 10275, 1059, 44, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100075, 10276, 1010, 24.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100076, 10276, 1013, 4.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100077, 10277, 1028, 36.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100078, 10277, 1062, 39.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100079, 10278, 1044, 15.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100080, 10278, 1059, 44, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100081, 10278, 1063, 35.1, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100082, 10278, 1073, 12, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100083, 10279, 1017, 31.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100084, 10280, 1024, 3.6, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100085, 10280, 1055, 19.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100086, 10280, 1075, 6.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100087, 10281, 1019, 7.3, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100088, 10281, 1024, 3.6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100089, 10281, 1035, 14.4, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100090, 10282, 1030, 20.7, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100091, 10282, 1057, 15.6, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100092, 10283, 1015, 12.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100093, 10283, 1019, 7.3, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100094, 10283, 1060, 27.2, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100096, 10284, 1027, 35.1, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100097, 10284, 1044, 15.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100098, 10284, 1060, 27.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100099, 10284, 1067, 11.2, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100100, 10285, 1001, 14.4, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100101, 10285, 1040, 14.7, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100102, 10285, 1053, 26.2, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100103, 10286, 1035, 14.4, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100104, 10286, 1062, 39.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100105, 10287, 1016, 13.9, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100106, 10287, 1034, 11.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100107, 10287, 1046, 9.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100108, 10288, 1054, 5.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100109, 10288, 1068, 10, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100110, 10289, 1003, 8, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100111, 10289, 1064, 26.6, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100113, 10290, 1029, 99, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100114, 10290, 1049, 16, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100115, 10290, 1077, 10.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100116, 10291, 1013, 4.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100117, 10291, 1044, 15.5, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100118, 10291, 1051, 42.4, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100119, 10292, 1020, 64.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100120, 10293, 1018, 50, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100121, 10293, 1024, 3.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100122, 10293, 1063, 35.1, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100123, 10293, 1075, 6.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100124, 10294, 1001, 14.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100125, 10294, 1017, 31.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100126, 10294, 1043, 36.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100127, 10294, 1060, 27.2, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100128, 10294, 1075, 6.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100129, 10295, 1056, 30.4, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100131, 10296, 1016, 13.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100132, 10296, 1069, 28.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100133, 10297, 1039, 14.4, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100135, 10298, 1002, 15.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100136, 10298, 1036, 15.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100137, 10298, 1059, 44, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100138, 10298, 1062, 39.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100139, 10299, 1019, 7.3, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100140, 10299, 1070, 12, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100141, 10300, 1066, 13.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100142, 10300, 1068, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100143, 10301, 1040, 14.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100144, 10301, 1056, 30.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100145, 10302, 1017, 31.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100146, 10302, 1028, 36.4, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100147, 10302, 1043, 36.8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100148, 10303, 1040, 14.7, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100149, 10303, 1065, 16.8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100150, 10303, 1068, 10, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100151, 10304, 1049, 16, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100152, 10304, 1059, 44, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100153, 10304, 1071, 17.2, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100154, 10305, 1018, 50, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100155, 10305, 1029, 99, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100156, 10305, 1039, 14.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100157, 10306, 1030, 20.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100158, 10306, 1053, 26.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100159, 10306, 1054, 5.9, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100160, 10307, 1062, 39.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100161, 10307, 1068, 10, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100162, 10308, 1069, 28.8, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100163, 10308, 1070, 12, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100164, 10309, 1004, 17.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100165, 10309, 1006, 20, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100167, 10309, 1043, 36.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100168, 10309, 1071, 17.2, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100169, 10310, 1016, 13.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100170, 10310, 1062, 39.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100172, 10311, 1069, 28.8, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100173, 10312, 1028, 36.4, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100174, 10312, 1043, 36.8, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100175, 10312, 1053, 26.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100176, 10312, 1075, 6.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100177, 10313, 1036, 15.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100178, 10314, 1032, 25.6, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100179, 10314, 1058, 10.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100180, 10314, 1062, 39.4, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100181, 10315, 1034, 11.2, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100182, 10315, 1070, 12, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100183, 10316, 1041, 7.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100184, 10316, 1062, 39.4, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100185, 10317, 1001, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100186, 10318, 1041, 7.7, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100187, 10318, 1076, 14.4, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100188, 10319, 1017, 31.2, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100189, 10319, 1028, 36.4, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100190, 10319, 1076, 14.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100191, 10320, 1071, 17.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100192, 10321, 1035, 14.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100193, 10322, 1052, 5.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100194, 10323, 1015, 12.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100195, 10323, 1025, 11.2, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100196, 10323, 1039, 14.4, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100197, 10324, 1016, 13.9, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100198, 10324, 1035, 14.4, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100199, 10324, 1046, 9.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100200, 10324, 1059, 44, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100201, 10324, 1063, 35.1, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100202, 10325, 1006, 20, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100203, 10325, 1013, 4.8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100204, 10325, 1014, 18.6, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100205, 10325, 1031, 10, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100207, 10326, 1004, 17.6, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100208, 10326, 1057, 15.6, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100209, 10326, 1075, 6.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100210, 10327, 1002, 15.2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100212, 10327, 1030, 20.7, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100213, 10327, 1058, 10.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100214, 10328, 1059, 44, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100215, 10328, 1065, 16.8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100216, 10328, 1068, 10, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100217, 10329, 1019, 7.3, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100218, 10329, 1030, 20.7, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100219, 10329, 1038, 210.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100220, 10329, 1056, 30.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100221, 10330, 1026, 24.9, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100223, 10331, 1054, 5.9, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100224, 10332, 1018, 50, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100226, 10332, 1047, 7.6, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100227, 10333, 1014, 18.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100228, 10333, 1021, 8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100229, 10333, 1071, 17.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100230, 10334, 1052, 5.6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100231, 10334, 1068, 10, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100232, 10335, 1002, 15.2, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100233, 10335, 1031, 10, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100234, 10335, 1032, 25.6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100235, 10335, 1051, 42.4, 48, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100236, 10336, 1004, 17.6, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100237, 10337, 1023, 7.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100238, 10337, 1026, 24.9, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100239, 10337, 1036, 15.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100240, 10337, 1037, 20.8, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100242, 10338, 1017, 31.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100243, 10338, 1030, 20.7, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100244, 10339, 1004, 17.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100245, 10339, 1017, 31.2, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100246, 10339, 1062, 39.4, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100247, 10340, 1018, 50, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100248, 10340, 1041, 7.7, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100249, 10340, 1043, 36.8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100250, 10341, 1033, 2, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100251, 10341, 1059, 44, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100252, 10342, 1002, 15.2, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100253, 10342, 1031, 10, 56, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100254, 10342, 1036, 15.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100255, 10342, 1055, 19.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100256, 10343, 1064, 26.6, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100257, 10343, 1068, 10, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100258, 10343, 1076, 14.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100259, 10344, 1004, 17.6, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100260, 10344, 1008, 32, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100261, 10345, 1008, 32, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100262, 10345, 1019, 7.3, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100264, 10346, 1017, 31.2, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100265, 10346, 1056, 30.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100266, 10347, 1025, 11.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100267, 10347, 1039, 14.4, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100268, 10347, 1040, 14.7, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100269, 10347, 1075, 6.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100270, 10348, 1001, 14.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100271, 10348, 1023, 7.2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100272, 10349, 1054, 5.9, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100273, 10350, 1050, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100274, 10350, 1069, 28.8, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100275, 10351, 1038, 210.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100276, 10351, 1041, 7.7, 13, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100277, 10351, 1044, 15.5, 77, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100278, 10351, 1065, 16.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100279, 10352, 1024, 3.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100280, 10352, 1054, 5.9, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100282, 10353, 1038, 210.8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100283, 10354, 1001, 14.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100284, 10354, 1029, 99, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100285, 10355, 1024, 3.6, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100286, 10355, 1057, 15.6, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100287, 10356, 1031, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100288, 10356, 1055, 19.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100289, 10356, 1069, 28.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100290, 10357, 1010, 24.8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100291, 10357, 1026, 24.9, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100292, 10357, 1060, 27.2, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100293, 10358, 1024, 3.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100294, 10358, 1034, 11.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100295, 10358, 1036, 15.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100296, 10359, 1016, 13.9, 56, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100297, 10359, 1031, 10, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100298, 10359, 1060, 27.2, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100299, 10360, 1028, 36.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100300, 10360, 1029, 99, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100301, 10360, 1038, 210.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100302, 10360, 1049, 16, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100303, 10360, 1054, 5.9, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100304, 10361, 1039, 14.4, 54, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100305, 10361, 1060, 27.2, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100306, 10362, 1025, 11.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100307, 10362, 1051, 42.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100308, 10362, 1054, 5.9, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100309, 10363, 1031, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100310, 10363, 1075, 6.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100311, 10363, 1076, 14.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100312, 10364, 1069, 28.8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100313, 10364, 1071, 17.2, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100315, 10366, 1065, 16.8, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100316, 10366, 1077, 10.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100317, 10367, 1034, 11.2, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100318, 10367, 1054, 5.9, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100319, 10367, 1065, 16.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100320, 10367, 1077, 10.4, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100321, 10368, 1021, 8, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100322, 10368, 1028, 36.4, 13, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100323, 10368, 1057, 15.6, 25, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100324, 10368, 1064, 26.6, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100325, 10369, 1029, 99, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100326, 10369, 1056, 30.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100327, 10370, 1001, 14.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100328, 10370, 1064, 26.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100329, 10370, 1074, 8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100330, 10371, 1036, 15.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100331, 10372, 1020, 64.8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100332, 10372, 1038, 210.8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100333, 10372, 1060, 27.2, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100335, 10373, 1058, 10.6, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100336, 10373, 1071, 17.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100337, 10374, 1031, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100338, 10374, 1058, 10.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100339, 10375, 1014, 18.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100340, 10375, 1054, 5.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100341, 10376, 1031, 10, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100342, 10377, 1028, 36.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100343, 10377, 1039, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100344, 10378, 1071, 17.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100345, 10379, 1041, 7.7, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100346, 10379, 1063, 35.1, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100347, 10379, 1065, 16.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100348, 10380, 1030, 20.7, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100349, 10380, 1053, 26.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100350, 10380, 1060, 27.2, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100351, 10380, 1070, 12, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100352, 10381, 1074, 8, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100354, 10382, 1018, 50, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100355, 10382, 1029, 99, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100356, 10382, 1033, 2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100357, 10382, 1074, 8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100358, 10383, 1013, 4.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100359, 10383, 1050, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100360, 10383, 1056, 30.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100361, 10384, 1020, 64.8, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100362, 10384, 1060, 27.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100363, 10385, 1007, 24, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100364, 10385, 1060, 27.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100365, 10385, 1068, 10, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100366, 10386, 1024, 3.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100367, 10386, 1034, 11.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100368, 10387, 1024, 3.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100369, 10387, 1028, 36.4, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100370, 10387, 1059, 44, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100371, 10387, 1071, 17.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100372, 10388, 1045, 7.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100373, 10388, 1052, 5.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100374, 10388, 1053, 26.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100375, 10389, 1010, 24.8, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100376, 10389, 1055, 19.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100377, 10389, 1062, 39.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100378, 10389, 1070, 12, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100379, 10390, 1031, 10, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100380, 10390, 1035, 14.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100381, 10390, 1046, 9.6, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100383, 10391, 1013, 4.8, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100384, 10392, 1069, 28.8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100385, 10393, 1002, 15.2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100386, 10393, 1014, 18.6, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100387, 10393, 1025, 11.2, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100388, 10393, 1026, 24.9, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100389, 10393, 1031, 10, 32, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100390, 10394, 1013, 4.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100391, 10394, 1062, 39.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100392, 10395, 1046, 9.6, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100393, 10395, 1053, 26.2, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100394, 10395, 1069, 28.8, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100395, 10396, 1023, 7.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100396, 10396, 1071, 17.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100398, 10397, 1021, 8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100399, 10397, 1051, 42.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100400, 10398, 1035, 14.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100401, 10398, 1055, 19.2, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100402, 10399, 1068, 10, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100403, 10399, 1071, 17.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100404, 10399, 1076, 14.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100405, 10399, 1077, 10.4, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100406, 10400, 1029, 99, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100407, 10400, 1035, 14.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100408, 10400, 1049, 16, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100409, 10401, 1030, 20.7, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100410, 10401, 1056, 30.4, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100411, 10401, 1065, 16.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100412, 10401, 1071, 17.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100413, 10402, 1023, 7.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100414, 10402, 1063, 35.1, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100415, 10403, 1016, 13.9, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100416, 10403, 1048, 10.2, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100417, 10404, 1026, 24.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100419, 10404, 1049, 16, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100420, 10405, 1003, 8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100421, 10406, 1001, 14.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100422, 10406, 1021, 8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100423, 10406, 1028, 36.4, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100424, 10406, 1036, 15.2, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100425, 10406, 1040, 14.7, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100427, 10407, 1069, 28.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100428, 10407, 1071, 17.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100429, 10408, 1037, 20.8, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100430, 10408, 1054, 5.9, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100431, 10408, 1062, 39.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100432, 10409, 1014, 18.6, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100433, 10409, 1021, 8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100434, 10410, 1033, 2, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100435, 10410, 1059, 44, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100436, 10411, 1041, 7.7, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100437, 10411, 1044, 15.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100438, 10411, 1059, 44, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100439, 10412, 1014, 18.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100440, 10413, 1001, 14.4, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100441, 10413, 1062, 39.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100442, 10413, 1076, 14.4, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100443, 10414, 1019, 7.3, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100444, 10414, 1033, 2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100445, 10415, 1017, 31.2, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100446, 10415, 1033, 2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100447, 10416, 1019, 7.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100448, 10416, 1053, 26.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100449, 10416, 1057, 15.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100450, 10417, 1038, 210.8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100451, 10417, 1046, 9.6, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100452, 10417, 1068, 10, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100453, 10417, 1077, 10.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100454, 10418, 1002, 15.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100455, 10418, 1047, 7.6, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100456, 10418, 1061, 22.8, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100457, 10418, 1074, 8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100458, 10419, 1060, 27.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100459, 10419, 1069, 28.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100460, 10420, 1009, 150, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100461, 10420, 1013, 4.8, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100462, 10420, 1070, 12, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100463, 10420, 1073, 12, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100464, 10421, 1019, 7.3, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100465, 10421, 1026, 24.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100466, 10421, 1053, 26.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100467, 10421, 1077, 10.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100468, 10422, 1026, 24.9, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100469, 10423, 1031, 10, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100470, 10423, 1059, 44, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100471, 10424, 1035, 14.4, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100472, 10424, 1038, 210.8, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100473, 10424, 1068, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100474, 10425, 1055, 19.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100475, 10425, 1076, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100476, 10426, 1056, 30.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100477, 10426, 1064, 26.6, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100478, 10427, 1014, 18.6, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100479, 10428, 1046, 9.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100480, 10429, 1050, 13, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100481, 10429, 1063, 35.1, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100482, 10430, 1017, 31.2, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100483, 10430, 1021, 8, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100484, 10430, 1056, 30.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100485, 10430, 1059, 44, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100486, 10431, 1017, 31.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100487, 10431, 1040, 14.7, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100488, 10431, 1047, 7.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100489, 10432, 1026, 24.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100490, 10432, 1054, 5.9, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100491, 10433, 1056, 30.4, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100493, 10434, 1076, 14.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100494, 10435, 1002, 15.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100495, 10435, 1022, 16.8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100497, 10436, 1046, 9.6, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100498, 10436, 1056, 30.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100499, 10436, 1064, 26.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100500, 10436, 1075, 6.2, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100501, 10437, 1053, 26.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100502, 10438, 1019, 7.3, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100503, 10438, 1034, 11.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100504, 10438, 1057, 15.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100505, 10439, 1012, 30.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100506, 10439, 1016, 13.9, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100507, 10439, 1064, 26.6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100508, 10439, 1074, 8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100509, 10440, 1002, 15.2, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100510, 10440, 1016, 13.9, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100511, 10440, 1029, 99, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100512, 10440, 1061, 22.8, 90, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100513, 10441, 1027, 35.1, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100515, 10442, 1054, 5.9, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100516, 10442, 1066, 13.6, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100518, 10443, 1028, 36.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100519, 10444, 1017, 31.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100520, 10444, 1026, 24.9, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100521, 10444, 1035, 14.4, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100522, 10444, 1041, 7.7, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100523, 10445, 1039, 14.4, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100524, 10445, 1054, 5.9, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100525, 10446, 1019, 7.3, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100526, 10446, 1024, 3.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100527, 10446, 1031, 10, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100528, 10446, 1052, 5.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100529, 10447, 1019, 7.3, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100530, 10447, 1065, 16.8, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100531, 10447, 1071, 17.2, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100532, 10448, 1026, 24.9, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100533, 10448, 1040, 14.7, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100534, 10449, 1010, 24.8, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100535, 10449, 1052, 5.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100536, 10449, 1062, 39.4, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100537, 10450, 1010, 24.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100538, 10450, 1054, 5.9, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100539, 10451, 1055, 19.2, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100540, 10451, 1064, 26.6, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100541, 10451, 1065, 16.8, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100542, 10451, 1077, 10.4, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100543, 10452, 1028, 36.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100544, 10452, 1044, 15.5, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100545, 10453, 1048, 10.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100546, 10453, 1070, 12, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100547, 10454, 1016, 13.9, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100548, 10454, 1033, 2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100549, 10454, 1046, 9.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100550, 10455, 1039, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100551, 10455, 1053, 26.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100552, 10455, 1061, 22.8, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100553, 10455, 1071, 17.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100554, 10456, 1021, 8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100555, 10456, 1049, 16, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100556, 10457, 1059, 44, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100557, 10458, 1026, 24.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100558, 10458, 1028, 36.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100559, 10458, 1043, 36.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100560, 10458, 1056, 30.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100561, 10458, 1071, 17.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100562, 10459, 1007, 24, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100563, 10459, 1046, 9.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100565, 10460, 1068, 10, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100566, 10460, 1075, 6.2, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100567, 10461, 1021, 8, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100568, 10461, 1030, 20.7, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100569, 10461, 1055, 19.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100570, 10462, 1013, 4.8, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100571, 10462, 1023, 7.2, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100572, 10463, 1019, 7.3, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100574, 10464, 1004, 17.6, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100575, 10464, 1043, 36.8, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100576, 10464, 1056, 30.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100577, 10464, 1060, 27.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100578, 10465, 1024, 3.6, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100579, 10465, 1029, 99, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100580, 10465, 1040, 14.7, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100581, 10465, 1045, 7.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100582, 10465, 1050, 13, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100584, 10466, 1046, 9.6, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100585, 10467, 1024, 3.6, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100586, 10467, 1025, 11.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100587, 10468, 1030, 20.7, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100588, 10468, 1043, 36.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100589, 10469, 1002, 15.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100590, 10469, 1016, 13.9, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100591, 10469, 1044, 15.5, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100592, 10470, 1018, 50, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100593, 10470, 1023, 7.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100594, 10470, 1064, 26.6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100595, 10471, 1007, 24, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100596, 10471, 1056, 30.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100597, 10472, 1024, 3.6, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100598, 10472, 1051, 42.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100599, 10473, 1033, 2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100600, 10473, 1071, 17.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100601, 10474, 1014, 18.6, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100602, 10474, 1028, 36.4, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100603, 10474, 1040, 14.7, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100604, 10474, 1075, 6.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100605, 10475, 1031, 10, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100606, 10475, 1066, 13.6, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100607, 10475, 1076, 14.4, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100608, 10476, 1055, 19.2, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100609, 10476, 1070, 12, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100610, 10477, 1001, 14.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100611, 10477, 1021, 8, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100612, 10477, 1039, 14.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100613, 10478, 1010, 24.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100614, 10479, 1038, 210.8, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100615, 10479, 1053, 26.2, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100616, 10479, 1059, 44, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100617, 10479, 1064, 26.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100618, 10480, 1047, 7.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100619, 10480, 1059, 44, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100620, 10481, 1049, 16, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100621, 10481, 1060, 27.2, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100622, 10482, 1040, 14.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100623, 10483, 1034, 11.2, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100624, 10483, 1077, 10.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100625, 10484, 1021, 8, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100626, 10484, 1040, 14.7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100627, 10484, 1051, 42.4, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100628, 10485, 1002, 15.2, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100629, 10485, 1003, 8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100630, 10485, 1055, 19.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100631, 10485, 1070, 12, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100633, 10486, 1051, 42.4, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100634, 10486, 1074, 8, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100635, 10487, 1019, 7.3, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100636, 10487, 1026, 24.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100637, 10487, 1054, 5.9, 24, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100638, 10488, 1059, 44, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100639, 10488, 1073, 12, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100641, 10489, 1016, 13.9, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100642, 10490, 1059, 44, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100643, 10490, 1068, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100644, 10490, 1075, 6.2, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100645, 10491, 1044, 15.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100646, 10491, 1077, 10.4, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100647, 10492, 1025, 11.2, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100649, 10493, 1065, 16.8, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100650, 10493, 1066, 13.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100651, 10493, 1069, 28.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100652, 10494, 1056, 30.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100653, 10495, 1023, 7.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100654, 10495, 1041, 7.7, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100655, 10495, 1077, 10.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100656, 10496, 1031, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100657, 10497, 1056, 30.4, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100659, 10497, 1077, 10.4, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100660, 10498, 1024, 4.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100661, 10498, 1040, 18.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100663, 10499, 1028, 45.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100664, 10499, 1049, 20, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100665, 10500, 1015, 15.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100666, 10500, 1028, 45.6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100667, 10501, 1054, 7.45, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100668, 10502, 1045, 9.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100669, 10502, 1053, 32.8, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100670, 10502, 1067, 14, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100671, 10503, 1014, 23.25, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100672, 10503, 1065, 21.05, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100673, 10504, 1002, 19, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100674, 10504, 1021, 10, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100675, 10504, 1053, 32.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100676, 10504, 1061, 28.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100677, 10505, 1062, 49.3, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100678, 10506, 1025, 14, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100679, 10506, 1070, 15, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100680, 10507, 1043, 46, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100681, 10507, 1048, 12.75, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100682, 10508, 1013, 6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100683, 10508, 1039, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100684, 10509, 1028, 45.6, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100685, 10510, 1029, 123.79, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100686, 10510, 1075, 7.75, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100687, 10511, 1004, 22, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100688, 10511, 1007, 30, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100689, 10511, 1008, 40, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100690, 10512, 1024, 4.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100691, 10512, 1046, 12, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100692, 10512, 1047, 9.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100693, 10512, 1060, 34, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100694, 10513, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100695, 10513, 1032, 32, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100696, 10513, 1061, 28.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100697, 10514, 1020, 81, 39, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100698, 10514, 1028, 45.6, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100699, 10514, 1056, 38, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100700, 10514, 1065, 21.05, 39, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100701, 10514, 1075, 7.75, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100702, 10515, 1009, 150, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100703, 10515, 1016, 17.45, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100704, 10515, 1027, 43.9, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100705, 10515, 1033, 2.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100706, 10515, 1060, 34, 84, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100707, 10516, 1018, 62.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100708, 10516, 1041, 9.65, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100710, 10517, 1052, 7, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100711, 10517, 1059, 55, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100712, 10517, 1070, 15, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100713, 10518, 1024, 4.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100714, 10518, 1038, 263.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100715, 10518, 1044, 19.45, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100716, 10519, 1010, 31, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100717, 10519, 1056, 38, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100718, 10519, 1060, 34, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100719, 10520, 1024, 4.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100720, 10520, 1053, 32.8, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100721, 10521, 1035, 18, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100722, 10521, 1041, 9.65, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100723, 10521, 1068, 12.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100724, 10522, 1001, 18, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100725, 10522, 1008, 40, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100726, 10522, 1030, 25.89, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100727, 10522, 1040, 18.4, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100728, 10523, 1017, 39, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100729, 10523, 1020, 81, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100730, 10523, 1037, 26, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100731, 10523, 1041, 9.65, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100732, 10524, 1010, 31, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100733, 10524, 1030, 25.89, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100734, 10524, 1043, 46, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100735, 10524, 1054, 7.45, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100736, 10525, 1036, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100737, 10525, 1040, 18.4, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100738, 10526, 1001, 18, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100739, 10526, 1013, 6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100740, 10526, 1056, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100741, 10527, 1004, 22, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100742, 10527, 1036, 19, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100744, 10528, 1033, 2.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100746, 10529, 1055, 24, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100747, 10529, 1068, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100748, 10529, 1069, 36, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100749, 10530, 1017, 39, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100750, 10530, 1043, 46, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100751, 10530, 1061, 28.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100752, 10530, 1076, 18, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100753, 10531, 1059, 55, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100754, 10532, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100755, 10532, 1066, 17, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100756, 10533, 1004, 22, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100758, 10533, 1073, 15, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100759, 10534, 1030, 25.89, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100760, 10534, 1040, 18.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100761, 10534, 1054, 7.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100763, 10535, 1040, 18.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100764, 10535, 1057, 19.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100765, 10535, 1059, 55, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100766, 10536, 1012, 38, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100767, 10536, 1031, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100768, 10536, 1033, 2.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100769, 10536, 1060, 34, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100770, 10537, 1031, 12.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100771, 10537, 1051, 53, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100772, 10537, 1058, 13.25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100774, 10537, 1073, 15, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100775, 10538, 1070, 15, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100777, 10539, 1013, 6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100778, 10539, 1021, 10, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100779, 10539, 1033, 2.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100780, 10539, 1049, 20, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100781, 10540, 1003, 10, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100782, 10540, 1026, 31.23, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100783, 10540, 1038, 263.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100784, 10540, 1068, 12.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100785, 10541, 1024, 4.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100786, 10541, 1038, 263.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100787, 10541, 1065, 21.05, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100788, 10541, 1071, 21.5, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100790, 10542, 1054, 7.45, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100791, 10543, 1012, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100792, 10543, 1023, 9, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100793, 10544, 1028, 45.6, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100794, 10544, 1067, 14, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100796, 10546, 1007, 30, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100797, 10546, 1035, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100798, 10546, 1062, 49.3, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100799, 10547, 1032, 32, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100800, 10547, 1036, 19, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100801, 10548, 1034, 14, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100802, 10548, 1041, 9.65, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100803, 10549, 1031, 12.5, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100804, 10549, 1045, 9.5, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100805, 10549, 1051, 53, 48, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100806, 10550, 1017, 39, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100807, 10550, 1019, 9.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100808, 10550, 1021, 10, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100809, 10550, 1061, 28.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100810, 10551, 1016, 17.45, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100811, 10551, 1035, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100812, 10551, 1044, 19.45, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100813, 10552, 1069, 36, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100814, 10552, 1075, 7.75, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100816, 10553, 1016, 17.45, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100817, 10553, 1022, 21, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100818, 10553, 1031, 12.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100819, 10553, 1035, 18, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100820, 10554, 1016, 17.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100821, 10554, 1023, 9, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100822, 10554, 1062, 49.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100823, 10554, 1077, 13, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100824, 10555, 1014, 23.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100825, 10555, 1019, 9.2, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100826, 10555, 1024, 4.5, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100827, 10555, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100828, 10555, 1056, 38, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100830, 10557, 1064, 33.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100831, 10557, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100832, 10558, 1047, 9.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100833, 10558, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100834, 10558, 1052, 7, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100835, 10558, 1053, 32.8, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100836, 10558, 1073, 15, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100837, 10559, 1041, 9.65, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100838, 10559, 1055, 24, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100839, 10560, 1030, 25.89, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100840, 10560, 1062, 49.3, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100841, 10561, 1044, 19.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100842, 10561, 1051, 53, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100843, 10562, 1033, 2.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100844, 10562, 1062, 49.3, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100845, 10563, 1036, 19, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100846, 10563, 1052, 7, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100847, 10564, 1017, 39, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100848, 10564, 1031, 12.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100849, 10564, 1055, 24, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100850, 10565, 1024, 4.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100851, 10565, 1064, 33.25, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100853, 10566, 1018, 62.5, 18, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100854, 10566, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100855, 10567, 1031, 12.5, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100856, 10567, 1051, 53, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100857, 10567, 1059, 55, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100858, 10568, 1010, 31, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100859, 10569, 1031, 12.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100860, 10569, 1076, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100862, 10570, 1056, 38, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100863, 10571, 1014, 23.25, 11, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100865, 10572, 1016, 17.45, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100866, 10572, 1032, 32, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100867, 10572, 1040, 18.4, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100868, 10572, 1075, 7.75, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100869, 10573, 1017, 39, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100870, 10573, 1034, 14, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100871, 10573, 1053, 32.8, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100872, 10574, 1033, 2.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100873, 10574, 1040, 18.4, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100874, 10574, 1062, 49.3, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100875, 10574, 1064, 33.25, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100876, 10575, 1059, 55, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100877, 10575, 1063, 43.9, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100879, 10575, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100880, 10576, 1001, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100881, 10576, 1031, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100882, 10576, 1044, 19.45, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100883, 10577, 1039, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100884, 10577, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100885, 10577, 1077, 13, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100886, 10578, 1035, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100887, 10578, 1057, 19.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100888, 10579, 1015, 15.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100889, 10579, 1075, 7.75, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100890, 10580, 1014, 23.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100891, 10580, 1041, 9.65, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100892, 10580, 1065, 21.05, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100893, 10581, 1075, 7.75, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100894, 10582, 1057, 19.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100895, 10582, 1076, 18, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100896, 10583, 1029, 123.79, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100897, 10583, 1060, 34, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100898, 10583, 1069, 36, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100899, 10584, 1031, 12.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100900, 10585, 1047, 9.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100901, 10586, 1052, 7, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100902, 10587, 1026, 31.23, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100903, 10587, 1035, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100904, 10587, 1077, 13, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100905, 10588, 1018, 62.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100907, 10589, 1035, 18, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100908, 10590, 1001, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100909, 10590, 1077, 13, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100910, 10591, 1003, 10, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100911, 10591, 1007, 30, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100912, 10591, 1054, 7.45, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100913, 10592, 1015, 15.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100914, 10592, 1026, 31.23, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100915, 10593, 1020, 81, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100916, 10593, 1069, 36, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100917, 10593, 1076, 18, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100918, 10594, 1052, 7, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100919, 10594, 1058, 13.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100920, 10595, 1035, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100921, 10595, 1061, 28.5, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100922, 10595, 1069, 36, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100923, 10596, 1056, 38, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100924, 10596, 1063, 43.9, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100925, 10596, 1075, 7.75, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100926, 10597, 1024, 4.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100927, 10597, 1057, 19.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100928, 10597, 1065, 21.05, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100929, 10598, 1027, 43.9, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100930, 10598, 1071, 21.5, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100931, 10599, 1062, 49.3, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100932, 10600, 1054, 7.45, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100933, 10600, 1073, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100934, 10601, 1013, 6, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100935, 10601, 1059, 55, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100936, 10602, 1077, 13, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100937, 10603, 1022, 21, 48, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100938, 10603, 1049, 20, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100939, 10604, 1048, 12.75, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100940, 10604, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100941, 10605, 1016, 17.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100942, 10605, 1059, 55, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100943, 10605, 1060, 34, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100944, 10605, 1071, 21.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100945, 10606, 1004, 22, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100946, 10606, 1055, 24, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100947, 10606, 1062, 49.3, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100948, 10607, 1007, 30, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100949, 10607, 1017, 39, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100950, 10607, 1033, 2.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100951, 10607, 1040, 18.4, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100953, 10608, 1056, 38, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100954, 10609, 1001, 18, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100955, 10609, 1010, 31, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100956, 10609, 1021, 10, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100957, 10610, 1036, 19, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100958, 10611, 1001, 18, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100959, 10611, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100960, 10611, 1060, 34, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100961, 10612, 1010, 31, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100962, 10612, 1036, 19, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100963, 10612, 1049, 20, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100964, 10612, 1060, 34, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100965, 10612, 1076, 18, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100966, 10613, 1013, 6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100967, 10613, 1075, 7.75, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100969, 10614, 1021, 10, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100970, 10614, 1039, 18, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100971, 10615, 1055, 24, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100972, 10616, 1038, 263.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100973, 10616, 1056, 38, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100974, 10616, 1070, 15, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100975, 10616, 1071, 21.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100976, 10617, 1059, 55, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100977, 10618, 1006, 25, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100978, 10618, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100979, 10618, 1068, 12.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100980, 10619, 1021, 10, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100981, 10619, 1022, 21, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100982, 10620, 1024, 4.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100983, 10620, 1052, 7, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100984, 10621, 1019, 9.2, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100985, 10621, 1023, 9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100986, 10621, 1070, 15, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100987, 10621, 1071, 21.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100988, 10622, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100989, 10622, 1068, 12.5, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100990, 10623, 1014, 23.25, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100991, 10623, 1019, 9.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100992, 10623, 1021, 10, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100993, 10623, 1024, 4.5, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100994, 10623, 1035, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100995, 10624, 1028, 45.6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100996, 10624, 1029, 123.79, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100997, 10624, 1044, 19.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100998, 10625, 1014, 23.25, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101000, 10625, 1060, 34, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101001, 10626, 1053, 32.8, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101002, 10626, 1060, 34, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101003, 10626, 1071, 21.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101004, 10627, 1062, 49.3, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101005, 10627, 1073, 15, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101006, 10628, 1001, 18, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101007, 10629, 1029, 123.79, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101008, 10629, 1064, 33.25, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101009, 10630, 1055, 24, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101010, 10630, 1076, 18, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101011, 10631, 1075, 7.75, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101012, 10632, 1002, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101013, 10632, 1033, 2.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101014, 10633, 1012, 38, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101015, 10633, 1013, 6, 13, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101016, 10633, 1026, 31.23, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101017, 10633, 1062, 49.3, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101018, 10634, 1007, 30, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101019, 10634, 1018, 62.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101020, 10634, 1051, 53, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101021, 10634, 1075, 7.75, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101022, 10635, 1004, 22, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101024, 10635, 1022, 21, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101025, 10636, 1004, 22, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101026, 10636, 1058, 13.25, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101028, 10637, 1050, 16.25, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101029, 10637, 1056, 38, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101030, 10638, 1045, 9.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101031, 10638, 1065, 21.05, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101033, 10639, 1018, 62.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101034, 10640, 1069, 36, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101035, 10640, 1070, 15, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101036, 10641, 1002, 19, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101037, 10641, 1040, 18.4, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101038, 10642, 1021, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101039, 10642, 1061, 28.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101040, 10643, 1028, 45.6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101041, 10643, 1039, 18, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101042, 10643, 1046, 12, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101043, 10644, 1018, 62.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101044, 10644, 1043, 46, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101045, 10644, 1046, 12, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101046, 10645, 1018, 62.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101047, 10645, 1036, 19, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101048, 10646, 1001, 18, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101049, 10646, 1010, 31, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101050, 10646, 1071, 21.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101051, 10646, 1077, 13, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101052, 10647, 1019, 9.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101053, 10647, 1039, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101054, 10648, 1022, 21, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101055, 10648, 1024, 4.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101056, 10649, 1028, 45.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101058, 10650, 1030, 25.89, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101059, 10650, 1053, 32.8, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101060, 10650, 1054, 7.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101061, 10651, 1019, 9.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101062, 10651, 1022, 21, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101063, 10652, 1030, 25.89, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101065, 10653, 1016, 17.45, 30, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101066, 10653, 1060, 34, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101067, 10654, 1004, 22, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101068, 10654, 1039, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101069, 10654, 1054, 7.45, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101070, 10655, 1041, 9.65, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101071, 10656, 1014, 23.25, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101072, 10656, 1044, 19.45, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101073, 10656, 1047, 9.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101074, 10657, 1015, 15.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101075, 10657, 1041, 9.65, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101076, 10657, 1046, 12, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101077, 10657, 1047, 9.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101078, 10657, 1056, 38, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101079, 10657, 1060, 34, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101080, 10658, 1021, 10, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101081, 10658, 1040, 18.4, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101082, 10658, 1060, 34, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101083, 10658, 1077, 13, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101084, 10659, 1031, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101085, 10659, 1040, 18.4, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101086, 10659, 1070, 15, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101087, 10660, 1020, 81, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101088, 10661, 1039, 18, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101089, 10661, 1058, 13.25, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101090, 10662, 1068, 12.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101091, 10663, 1040, 18.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101093, 10663, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101094, 10664, 1010, 31, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101095, 10664, 1056, 38, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101096, 10664, 1065, 21.05, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101097, 10665, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101098, 10665, 1059, 55, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101099, 10665, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101100, 10666, 1029, 123.79, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101101, 10666, 1065, 21.05, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101102, 10667, 1069, 36, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101103, 10667, 1071, 21.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101104, 10668, 1031, 12.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101105, 10668, 1055, 24, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101106, 10668, 1064, 33.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101107, 10669, 1036, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101108, 10670, 1023, 9, 32, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101109, 10670, 1046, 12, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101110, 10670, 1067, 14, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101111, 10670, 1073, 15, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101112, 10670, 1075, 7.75, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101113, 10671, 1016, 17.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101114, 10671, 1062, 49.3, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101115, 10671, 1065, 21.05, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101116, 10672, 1038, 263.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101117, 10672, 1071, 21.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101118, 10673, 1016, 17.45, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101120, 10673, 1043, 46, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101121, 10674, 1023, 9, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101122, 10675, 1014, 23.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101123, 10675, 1053, 32.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101124, 10675, 1058, 13.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101125, 10676, 1010, 31, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101126, 10676, 1019, 9.2, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101127, 10676, 1044, 19.45, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101128, 10677, 1026, 31.23, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101129, 10677, 1033, 2.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101130, 10678, 1012, 38, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101131, 10678, 1033, 2.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101132, 10678, 1041, 9.65, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101133, 10678, 1054, 7.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101134, 10679, 1059, 55, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101135, 10680, 1016, 17.45, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101136, 10680, 1031, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101138, 10681, 1019, 9.2, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101139, 10681, 1021, 10, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101140, 10681, 1064, 33.25, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101141, 10682, 1033, 2.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101142, 10682, 1066, 17, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101143, 10682, 1075, 7.75, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101144, 10683, 1052, 7, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101145, 10684, 1040, 18.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101146, 10684, 1047, 9.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101147, 10684, 1060, 34, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101148, 10685, 1010, 31, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101149, 10685, 1041, 9.65, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101150, 10685, 1047, 9.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101151, 10686, 1017, 39, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101152, 10686, 1026, 31.23, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101153, 10687, 1009, 150, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101154, 10687, 1029, 123.79, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101155, 10687, 1036, 19, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101156, 10688, 1010, 31, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101157, 10688, 1028, 45.6, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101158, 10688, 1034, 14, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101159, 10689, 1001, 18, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101160, 10690, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101161, 10690, 1077, 13, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101162, 10691, 1001, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101163, 10691, 1029, 123.79, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101164, 10691, 1043, 46, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101165, 10691, 1044, 19.45, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101166, 10691, 1062, 49.3, 48, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101167, 10692, 1063, 43.9, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101168, 10693, 1009, 150, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101169, 10693, 1054, 7.45, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101170, 10693, 1069, 36, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101171, 10693, 1073, 15, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101172, 10694, 1007, 30, 90, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101173, 10694, 1059, 55, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101174, 10694, 1070, 15, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101175, 10695, 1008, 40, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101176, 10695, 1012, 38, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101177, 10695, 1024, 4.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101178, 10696, 1017, 39, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101179, 10696, 1046, 12, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101180, 10697, 1019, 9.2, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101181, 10697, 1035, 18, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101182, 10697, 1058, 13.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101183, 10697, 1070, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101185, 10698, 1017, 39, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101186, 10698, 1029, 123.79, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101187, 10698, 1065, 21.05, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101188, 10698, 1070, 15, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101189, 10699, 1047, 9.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101190, 10700, 1001, 18, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101191, 10700, 1034, 14, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101192, 10700, 1068, 12.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101193, 10700, 1071, 21.5, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101194, 10701, 1059, 55, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101195, 10701, 1071, 21.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101196, 10701, 1076, 18, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101197, 10702, 1003, 10, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101198, 10702, 1076, 18, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101199, 10703, 1002, 19, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101200, 10703, 1059, 55, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101201, 10703, 1073, 15, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101202, 10704, 1004, 22, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101203, 10704, 1024, 4.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101204, 10704, 1048, 12.75, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101205, 10705, 1031, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101206, 10705, 1032, 32, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101207, 10706, 1016, 17.45, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101208, 10706, 1043, 46, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101209, 10706, 1059, 55, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101210, 10707, 1055, 24, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101211, 10707, 1057, 19.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101212, 10707, 1070, 15, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101214, 10708, 1036, 19, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101215, 10709, 1008, 40, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101216, 10709, 1051, 53, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101217, 10709, 1060, 34, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101218, 10710, 1019, 9.2, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101219, 10710, 1047, 9.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101220, 10711, 1019, 9.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101221, 10711, 1041, 9.65, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101222, 10711, 1053, 32.8, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101223, 10712, 1053, 32.8, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101224, 10712, 1056, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101225, 10713, 1010, 31, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101226, 10713, 1026, 31.23, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101227, 10713, 1045, 9.5, 110, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101228, 10713, 1046, 12, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101229, 10714, 1002, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101230, 10714, 1017, 39, 27, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101231, 10714, 1047, 9.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101232, 10714, 1056, 38, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101233, 10714, 1058, 13.25, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101234, 10715, 1010, 31, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101235, 10715, 1071, 21.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101236, 10716, 1021, 10, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101237, 10716, 1051, 53, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101238, 10716, 1061, 28.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101239, 10717, 1021, 10, 32, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101240, 10717, 1054, 7.45, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101241, 10717, 1069, 36, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101242, 10718, 1012, 38, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101243, 10718, 1016, 17.45, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101244, 10718, 1036, 19, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101245, 10718, 1062, 49.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101246, 10719, 1018, 62.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101247, 10719, 1030, 25.89, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101248, 10719, 1054, 7.45, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101249, 10720, 1035, 18, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101250, 10720, 1071, 21.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101251, 10721, 1044, 19.45, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101252, 10722, 1002, 19, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101253, 10722, 1031, 12.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101254, 10722, 1068, 12.5, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101255, 10722, 1075, 7.75, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101256, 10723, 1026, 31.23, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101257, 10724, 1010, 31, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101258, 10724, 1061, 28.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101259, 10725, 1041, 9.65, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101260, 10725, 1052, 7, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101261, 10725, 1055, 24, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101262, 10726, 1004, 22, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101264, 10727, 1017, 39, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101265, 10727, 1056, 38, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101266, 10727, 1059, 55, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101267, 10728, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101268, 10728, 1040, 18.4, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101269, 10728, 1055, 24, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101270, 10728, 1060, 34, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101271, 10729, 1001, 18, 50, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101272, 10729, 1021, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101273, 10729, 1050, 16.25, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101274, 10730, 1016, 17.45, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101275, 10730, 1031, 12.5, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101276, 10730, 1065, 21.05, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101277, 10731, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101278, 10731, 1051, 53, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101279, 10732, 1076, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101280, 10733, 1014, 23.25, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101281, 10733, 1028, 45.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101282, 10733, 1052, 7, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101283, 10734, 1006, 25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101284, 10734, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101285, 10734, 1076, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101286, 10735, 1061, 28.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101287, 10735, 1077, 13, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101288, 10736, 1065, 21.05, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101289, 10736, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101290, 10737, 1013, 6, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101291, 10737, 1041, 9.65, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101292, 10738, 1016, 17.45, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101293, 10739, 1036, 19, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101294, 10739, 1052, 7, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101295, 10740, 1028, 45.6, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101296, 10740, 1035, 18, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101297, 10740, 1045, 9.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101298, 10740, 1056, 38, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101299, 10741, 1002, 19, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101300, 10742, 1003, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101301, 10742, 1060, 34, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101303, 10743, 1046, 12, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101304, 10744, 1040, 18.4, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101305, 10745, 1018, 62.5, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101306, 10745, 1044, 19.45, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101307, 10745, 1059, 55, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101309, 10746, 1013, 6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101311, 10746, 1062, 49.3, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101312, 10746, 1069, 36, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101313, 10747, 1031, 12.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101314, 10747, 1041, 9.65, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101315, 10747, 1063, 43.9, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101316, 10747, 1069, 36, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101317, 10748, 1023, 9, 44, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101318, 10748, 1040, 18.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101319, 10748, 1056, 38, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101320, 10749, 1056, 38, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101321, 10749, 1059, 55, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101322, 10749, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101323, 10750, 1014, 23.25, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101324, 10750, 1045, 9.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101325, 10750, 1059, 55, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101326, 10751, 1026, 31.23, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101327, 10751, 1030, 25.89, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101328, 10751, 1050, 16.25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101329, 10751, 1073, 15, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101330, 10752, 1001, 18, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101331, 10752, 1069, 36, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101332, 10753, 1045, 9.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101333, 10753, 1074, 10, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101334, 10754, 1040, 18.4, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101335, 10755, 1047, 9.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101336, 10755, 1056, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101337, 10755, 1057, 19.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101338, 10755, 1069, 36, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101339, 10756, 1018, 62.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101340, 10756, 1036, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101341, 10756, 1068, 12.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101342, 10756, 1069, 36, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101343, 10757, 1034, 14, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101344, 10757, 1059, 55, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101345, 10757, 1062, 49.3, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101346, 10757, 1064, 33.25, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101347, 10758, 1026, 31.23, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101348, 10758, 1052, 7, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101349, 10758, 1070, 15, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101350, 10759, 1032, 32, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101351, 10760, 1025, 14, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101352, 10760, 1027, 43.9, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101353, 10760, 1043, 46, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101354, 10761, 1025, 14, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101355, 10761, 1075, 7.75, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101356, 10762, 1039, 18, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101357, 10762, 1047, 9.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101358, 10762, 1051, 53, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101359, 10762, 1056, 38, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101360, 10763, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101361, 10763, 1022, 21, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101362, 10763, 1024, 4.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101363, 10764, 1003, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101364, 10764, 1039, 18, 130, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101365, 10765, 1065, 21.05, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101366, 10766, 1002, 19, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101367, 10766, 1007, 30, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101368, 10766, 1068, 12.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101370, 10768, 1022, 21, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101371, 10768, 1031, 12.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101372, 10768, 1060, 34, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101373, 10768, 1071, 21.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101374, 10769, 1041, 9.65, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101375, 10769, 1052, 7, 15, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101376, 10769, 1061, 28.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101377, 10769, 1062, 49.3, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101379, 10771, 1071, 21.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101380, 10772, 1029, 123.79, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101381, 10772, 1059, 55, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101382, 10773, 1017, 39, 33, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101383, 10773, 1031, 12.5, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101384, 10773, 1075, 7.75, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101385, 10774, 1031, 12.5, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101386, 10774, 1066, 17, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101387, 10775, 1010, 31, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101388, 10775, 1067, 14, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101389, 10776, 1031, 12.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101391, 10776, 1045, 9.5, 27, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101392, 10776, 1051, 53, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101394, 10778, 1041, 9.65, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101395, 10779, 1016, 17.45, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101396, 10779, 1062, 49.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101397, 10780, 1070, 15, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101398, 10780, 1077, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101399, 10781, 1054, 7.45, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101400, 10781, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101401, 10781, 1074, 10, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101402, 10782, 1031, 12.5, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101403, 10783, 1031, 12.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101404, 10783, 1038, 263.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101405, 10784, 1036, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101406, 10784, 1039, 18, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101408, 10785, 1010, 31, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101409, 10785, 1075, 7.75, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101410, 10786, 1008, 40, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101411, 10786, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101412, 10786, 1075, 7.75, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101413, 10787, 1002, 19, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101414, 10787, 1029, 123.79, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101415, 10788, 1019, 9.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101416, 10788, 1075, 7.75, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101417, 10789, 1018, 62.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101418, 10789, 1035, 18, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101419, 10789, 1063, 43.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101420, 10789, 1068, 12.5, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101421, 10790, 1007, 30, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101422, 10790, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101423, 10791, 1029, 123.79, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101424, 10791, 1041, 9.65, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101425, 10792, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101426, 10792, 1054, 7.45, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101427, 10792, 1068, 12.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101428, 10793, 1041, 9.65, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101429, 10793, 1052, 7, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101430, 10794, 1014, 23.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101431, 10794, 1054, 7.45, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101432, 10795, 1016, 17.45, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101433, 10795, 1017, 39, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101434, 10796, 1026, 31.23, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101435, 10796, 1044, 19.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101436, 10796, 1064, 33.25, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101437, 10796, 1069, 36, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101439, 10798, 1062, 49.3, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101441, 10799, 1013, 6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101442, 10799, 1024, 4.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101443, 10799, 1059, 55, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101445, 10800, 1051, 53, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101446, 10800, 1054, 7.45, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101447, 10801, 1017, 39, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101448, 10801, 1029, 123.79, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101449, 10802, 1030, 25.89, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101450, 10802, 1051, 53, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101451, 10802, 1055, 24, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101452, 10802, 1062, 49.3, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101453, 10803, 1019, 9.2, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101454, 10803, 1025, 14, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101455, 10803, 1059, 55, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101456, 10804, 1010, 31, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101457, 10804, 1028, 45.6, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101458, 10804, 1049, 20, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101459, 10805, 1034, 14, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101460, 10805, 1038, 263.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101461, 10806, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101462, 10806, 1065, 21.05, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101463, 10806, 1074, 10, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101464, 10807, 1040, 18.4, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101465, 10808, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101466, 10808, 1076, 18, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101467, 10809, 1052, 7, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101468, 10810, 1013, 6, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101469, 10810, 1025, 14, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101470, 10810, 1070, 15, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101471, 10811, 1019, 9.2, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101472, 10811, 1023, 9, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101473, 10811, 1040, 18.4, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101474, 10812, 1031, 12.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101476, 10812, 1077, 13, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101477, 10813, 1002, 19, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101478, 10813, 1046, 12, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101479, 10814, 1041, 9.65, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101480, 10814, 1043, 46, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101481, 10814, 1048, 12.75, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101482, 10814, 1061, 28.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101483, 10815, 1033, 2.5, 16, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101484, 10816, 1038, 263.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101485, 10816, 1062, 49.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101486, 10817, 1026, 31.23, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101487, 10817, 1038, 263.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101488, 10817, 1040, 18.4, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101489, 10817, 1062, 49.3, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101490, 10818, 1032, 32, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101491, 10818, 1041, 9.65, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101492, 10819, 1043, 46, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101493, 10819, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101494, 10820, 1056, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101495, 10821, 1035, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101496, 10821, 1051, 53, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101497, 10822, 1062, 49.3, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101498, 10822, 1070, 15, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101500, 10823, 1057, 19.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101501, 10823, 1059, 55, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101502, 10823, 1077, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101503, 10824, 1041, 9.65, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101504, 10824, 1070, 15, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101505, 10825, 1026, 31.23, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101506, 10825, 1053, 32.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101507, 10826, 1031, 12.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101508, 10826, 1057, 19.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101509, 10827, 1010, 31, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101510, 10827, 1039, 18, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101511, 10828, 1020, 81, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101512, 10828, 1038, 263.5, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101513, 10829, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101514, 10829, 1008, 40, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101515, 10829, 1013, 6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101516, 10829, 1060, 34, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101517, 10830, 1006, 25, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101518, 10830, 1039, 18, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101519, 10830, 1060, 34, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101520, 10830, 1068, 12.5, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101521, 10831, 1019, 9.2, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101522, 10831, 1035, 18, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101523, 10831, 1038, 263.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101524, 10831, 1043, 46, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101525, 10832, 1013, 6, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101526, 10832, 1025, 14, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101527, 10832, 1044, 19.45, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101528, 10832, 1064, 33.25, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101529, 10833, 1007, 30, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101530, 10833, 1031, 12.5, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101531, 10833, 1053, 32.8, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101532, 10834, 1029, 123.79, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101533, 10834, 1030, 25.89, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101534, 10835, 1059, 55, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101535, 10835, 1077, 13, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101536, 10836, 1022, 21, 52, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101537, 10836, 1035, 18, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101538, 10836, 1057, 19.5, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101539, 10836, 1060, 34, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101540, 10836, 1064, 33.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101541, 10837, 1013, 6, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101542, 10837, 1040, 18.4, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101543, 10837, 1047, 9.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101544, 10837, 1076, 18, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101545, 10838, 1001, 18, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101546, 10838, 1018, 62.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101547, 10838, 1036, 19, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101548, 10839, 1058, 13.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101550, 10840, 1025, 14, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101551, 10840, 1039, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101552, 10841, 1010, 31, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101553, 10841, 1056, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101554, 10841, 1059, 55, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101555, 10841, 1077, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101557, 10842, 1043, 46, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101558, 10842, 1068, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101559, 10842, 1070, 15, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101560, 10843, 1051, 53, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101561, 10844, 1022, 21, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101562, 10845, 1023, 9, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101563, 10845, 1035, 18, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101565, 10845, 1058, 13.25, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101566, 10845, 1064, 33.25, 48, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101567, 10846, 1004, 22, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101568, 10846, 1070, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101569, 10846, 1074, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101570, 10847, 1001, 18, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101571, 10847, 1019, 9.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101572, 10847, 1037, 26, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101573, 10847, 1045, 9.5, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101574, 10847, 1060, 34, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101575, 10847, 1071, 21.5, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101577, 10848, 1009, 150, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101578, 10849, 1003, 10, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101579, 10849, 1026, 31.23, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101580, 10850, 1025, 14, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101581, 10850, 1033, 2.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101582, 10850, 1070, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101583, 10851, 1002, 19, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101584, 10851, 1025, 14, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101585, 10851, 1057, 19.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101586, 10851, 1059, 55, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101587, 10852, 1002, 19, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101588, 10852, 1017, 39, 6, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101589, 10852, 1062, 49.3, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101590, 10853, 1018, 62.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101591, 10854, 1010, 31, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101592, 10854, 1013, 6, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101593, 10855, 1016, 17.45, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101594, 10855, 1031, 12.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101595, 10855, 1056, 38, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101596, 10855, 1065, 21.05, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101597, 10856, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101599, 10857, 1003, 10, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101600, 10857, 1026, 31.23, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101601, 10857, 1029, 123.79, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101602, 10858, 1007, 30, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101603, 10858, 1027, 43.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101604, 10858, 1070, 15, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101605, 10859, 1024, 4.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101606, 10859, 1054, 7.45, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101607, 10859, 1064, 33.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101608, 10860, 1051, 53, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101609, 10860, 1076, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101610, 10861, 1017, 39, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101611, 10861, 1018, 62.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101612, 10861, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101613, 10861, 1033, 2.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101614, 10861, 1062, 49.3, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101616, 10862, 1052, 7, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101617, 10863, 1001, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101618, 10863, 1058, 13.25, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101619, 10864, 1035, 18, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101620, 10864, 1067, 14, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101621, 10865, 1038, 263.5, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101622, 10865, 1039, 18, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101623, 10866, 1002, 19, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101624, 10866, 1024, 4.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101625, 10866, 1030, 25.89, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101626, 10867, 1053, 32.8, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101627, 10868, 1026, 31.23, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101628, 10868, 1035, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101629, 10868, 1049, 20, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101630, 10869, 1001, 18, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101632, 10869, 1023, 9, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101633, 10869, 1068, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101634, 10870, 1035, 18, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101635, 10870, 1051, 53, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101636, 10871, 1006, 25, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101637, 10871, 1016, 17.45, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101638, 10871, 1017, 39, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101639, 10872, 1055, 24, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101640, 10872, 1062, 49.3, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101641, 10872, 1064, 33.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101642, 10872, 1065, 21.05, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101643, 10873, 1021, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101644, 10873, 1028, 45.6, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101645, 10874, 1010, 31, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101646, 10875, 1019, 9.2, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101647, 10875, 1047, 9.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101648, 10875, 1049, 20, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101649, 10876, 1046, 12, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101650, 10876, 1064, 33.25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101651, 10877, 1016, 17.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101652, 10877, 1018, 62.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101653, 10878, 1020, 81, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101654, 10879, 1040, 18.4, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101655, 10879, 1065, 21.05, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101656, 10879, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101657, 10880, 1023, 9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101658, 10880, 1061, 28.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101659, 10880, 1070, 15, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101660, 10881, 1073, 15, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101662, 10882, 1049, 20, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101663, 10882, 1054, 7.45, 32, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101664, 10883, 1024, 4.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101665, 10884, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101666, 10884, 1056, 38, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101667, 10884, 1065, 21.05, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101668, 10885, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101669, 10885, 1024, 4.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101670, 10885, 1070, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101671, 10885, 1077, 13, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101672, 10886, 1010, 31, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101673, 10886, 1031, 12.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101674, 10886, 1077, 13, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101675, 10887, 1025, 14, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101676, 10888, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101677, 10888, 1068, 12.5, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101679, 10889, 1038, 263.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101680, 10890, 1017, 39, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101681, 10890, 1034, 14, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101682, 10890, 1041, 9.65, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101683, 10891, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101684, 10892, 1059, 55, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101685, 10893, 1008, 40, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101686, 10893, 1024, 4.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101687, 10893, 1029, 123.79, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101688, 10893, 1030, 25.89, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101689, 10893, 1036, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101690, 10894, 1013, 6, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101691, 10894, 1069, 36, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101692, 10894, 1075, 7.75, 120, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101693, 10895, 1024, 4.5, 110, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101694, 10895, 1039, 18, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101695, 10895, 1040, 18.4, 91, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101696, 10895, 1060, 34, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101697, 10896, 1045, 9.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101698, 10896, 1056, 38, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101699, 10897, 1029, 123.79, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101700, 10897, 1030, 25.89, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101701, 10898, 1013, 6, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101702, 10899, 1039, 18, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101703, 10900, 1070, 15, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101704, 10901, 1041, 9.65, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101705, 10901, 1071, 21.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101706, 10902, 1055, 24, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101707, 10902, 1062, 49.3, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101708, 10903, 1013, 6, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101709, 10903, 1065, 21.05, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101710, 10903, 1068, 12.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101711, 10904, 1058, 13.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101712, 10904, 1062, 49.3, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101713, 10905, 1001, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101714, 10906, 1061, 28.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101715, 10907, 1075, 7.75, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101716, 10908, 1007, 30, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101717, 10908, 1052, 7, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101718, 10909, 1007, 30, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101719, 10909, 1016, 17.45, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101720, 10909, 1041, 9.65, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101721, 10910, 1019, 9.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101722, 10910, 1049, 20, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101723, 10910, 1061, 28.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101724, 10911, 1001, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101725, 10911, 1017, 39, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101726, 10911, 1067, 14, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101728, 10912, 1029, 123.79, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101729, 10913, 1004, 22, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101730, 10913, 1033, 2.5, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101731, 10913, 1058, 13.25, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101732, 10914, 1071, 21.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101733, 10915, 1017, 39, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101734, 10915, 1033, 2.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101735, 10915, 1054, 7.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101736, 10916, 1016, 17.45, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101737, 10916, 1032, 32, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101738, 10916, 1057, 19.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101739, 10917, 1030, 25.89, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101740, 10917, 1060, 34, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101741, 10918, 1001, 18, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101742, 10918, 1060, 34, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101743, 10919, 1016, 17.45, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101744, 10919, 1025, 14, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101745, 10919, 1040, 18.4, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101746, 10920, 1050, 16.25, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101747, 10921, 1035, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101748, 10921, 1063, 43.9, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101749, 10922, 1017, 39, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101750, 10922, 1024, 4.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101752, 10923, 1043, 46, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101753, 10923, 1067, 14, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101754, 10924, 1010, 31, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101755, 10924, 1028, 45.6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101756, 10924, 1075, 7.75, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101757, 10925, 1036, 19, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101758, 10925, 1052, 7, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101760, 10926, 1013, 6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101761, 10926, 1019, 9.2, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101763, 10927, 1020, 81, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101764, 10927, 1052, 7, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101765, 10927, 1076, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101766, 10928, 1047, 9.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101767, 10928, 1076, 18, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101768, 10929, 1021, 10, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101769, 10929, 1075, 7.75, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101770, 10929, 1077, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101771, 10930, 1021, 10, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101772, 10930, 1027, 43.9, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101773, 10930, 1055, 24, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101774, 10930, 1058, 13.25, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101775, 10931, 1013, 6, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101776, 10931, 1057, 19.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101777, 10932, 1016, 17.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101778, 10932, 1062, 49.3, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101780, 10932, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101781, 10933, 1053, 32.8, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101782, 10933, 1061, 28.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101783, 10934, 1006, 25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101784, 10935, 1001, 18, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101785, 10935, 1018, 62.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101786, 10935, 1023, 9, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101787, 10936, 1036, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101788, 10937, 1028, 45.6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101789, 10937, 1034, 14, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101790, 10938, 1013, 6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101791, 10938, 1043, 46, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101792, 10938, 1060, 34, 49, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101793, 10938, 1071, 21.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101794, 10939, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101795, 10939, 1067, 14, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101796, 10940, 1007, 30, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101797, 10940, 1013, 6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101798, 10941, 1031, 12.5, 44, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101799, 10941, 1062, 49.3, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101800, 10941, 1068, 12.5, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101802, 10942, 1049, 20, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101803, 10943, 1013, 6, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101804, 10943, 1022, 21, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101805, 10943, 1046, 12, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101807, 10944, 1044, 19.45, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101808, 10944, 1056, 38, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101809, 10945, 1013, 6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101810, 10945, 1031, 12.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101811, 10946, 1010, 31, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101812, 10946, 1024, 4.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101813, 10946, 1077, 13, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101814, 10947, 1059, 55, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101815, 10948, 1050, 16.25, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101816, 10948, 1051, 53, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101817, 10948, 1055, 24, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101818, 10949, 1006, 25, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101819, 10949, 1010, 31, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101820, 10949, 1017, 39, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101821, 10949, 1062, 49.3, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101822, 10950, 1004, 22, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101823, 10951, 1033, 2.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101824, 10951, 1041, 9.65, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101825, 10951, 1075, 7.75, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101826, 10952, 1006, 25, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101827, 10952, 1028, 45.6, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101828, 10953, 1020, 81, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101829, 10953, 1031, 12.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101830, 10954, 1016, 17.45, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101831, 10954, 1031, 12.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101832, 10954, 1045, 9.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101833, 10954, 1060, 34, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101834, 10955, 1075, 7.75, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101835, 10956, 1021, 10, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101836, 10956, 1047, 9.5, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101837, 10956, 1051, 53, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101838, 10957, 1030, 25.89, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101839, 10957, 1035, 18, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101840, 10957, 1064, 33.25, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101842, 10958, 1007, 30, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101844, 10959, 1075, 7.75, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101845, 10960, 1024, 4.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101846, 10960, 1041, 9.65, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101847, 10961, 1052, 7, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101848, 10961, 1076, 18, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101849, 10962, 1007, 30, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101850, 10962, 1013, 6, 77, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101851, 10962, 1053, 32.8, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101852, 10962, 1069, 36, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101853, 10962, 1076, 18, 44, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101854, 10963, 1060, 34, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101855, 10964, 1018, 62.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101856, 10964, 1038, 263.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101857, 10964, 1069, 36, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101858, 10965, 1051, 53, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101859, 10966, 1037, 26, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101860, 10966, 1056, 38, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101861, 10966, 1062, 49.3, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101862, 10967, 1019, 9.2, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101863, 10967, 1049, 20, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101864, 10968, 1012, 38, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101865, 10968, 1024, 4.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101866, 10968, 1064, 33.25, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101867, 10969, 1046, 12, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101868, 10970, 1052, 7, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101869, 10971, 1029, 123.79, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101870, 10972, 1017, 39, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101871, 10972, 1033, 2.5, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101872, 10973, 1026, 31.23, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101873, 10973, 1041, 9.65, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101874, 10973, 1075, 7.75, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101875, 10974, 1063, 43.9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101876, 10975, 1008, 40, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101877, 10975, 1075, 7.75, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101878, 10976, 1028, 45.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101879, 10977, 1039, 18, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101880, 10977, 1047, 9.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101881, 10977, 1051, 53, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101882, 10977, 1063, 43.9, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101883, 10978, 1008, 40, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101884, 10978, 1021, 10, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101885, 10978, 1040, 18.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101886, 10978, 1044, 19.45, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101887, 10979, 1007, 30, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101888, 10979, 1012, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101889, 10979, 1024, 4.5, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101890, 10979, 1027, 43.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101891, 10979, 1031, 12.5, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101892, 10979, 1063, 43.9, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101893, 10980, 1075, 7.75, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101894, 10981, 1038, 263.5, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101895, 10982, 1007, 30, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101896, 10982, 1043, 46, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101897, 10983, 1013, 6, 84, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101898, 10983, 1057, 19.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101899, 10984, 1016, 17.45, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101900, 10984, 1024, 4.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101901, 10984, 1036, 19, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101902, 10985, 1016, 17.45, 36, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101903, 10985, 1018, 62.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101904, 10985, 1032, 32, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101906, 10986, 1020, 81, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101907, 10986, 1076, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101908, 10986, 1077, 13, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101909, 10987, 1007, 30, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101910, 10987, 1043, 46, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101912, 10988, 1007, 30, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101913, 10988, 1062, 49.3, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101914, 10989, 1006, 25, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101916, 10989, 1041, 9.65, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101917, 10990, 1021, 10, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101918, 10990, 1034, 14, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101919, 10990, 1055, 24, 65, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101920, 10990, 1061, 28.5, 66, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101921, 10991, 1002, 19, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101922, 10991, 1070, 15, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101923, 10991, 1076, 18, 90, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101925, 10993, 1029, 123.79, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101926, 10993, 1041, 9.65, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101927, 10994, 1059, 55, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101928, 10995, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101929, 10995, 1060, 34, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101931, 10997, 1032, 32, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101932, 10997, 1046, 12, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101933, 10997, 1052, 7, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101934, 10998, 1024, 4.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101935, 10998, 1061, 28.5, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101936, 10998, 1074, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101937, 10998, 1075, 7.75, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101938, 10999, 1041, 9.65, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101939, 10999, 1051, 53, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101940, 10999, 1077, 13, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101941, 11000, 1004, 22, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101942, 11000, 1024, 4.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101943, 11000, 1077, 13, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101944, 11001, 1007, 30, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101945, 11001, 1022, 21, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101946, 11001, 1046, 12, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101947, 11001, 1055, 24, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101948, 11002, 1013, 6, 56, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101949, 11002, 1035, 18, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101951, 11002, 1055, 24, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101952, 11003, 1001, 18, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101953, 11003, 1040, 18.4, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101954, 11003, 1052, 7, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101955, 11004, 1026, 31.23, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101956, 11004, 1076, 18, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101957, 11005, 1001, 18, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101958, 11005, 1059, 55, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101959, 11006, 1001, 18, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101960, 11006, 1029, 123.79, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101961, 11007, 1008, 40, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101962, 11007, 1029, 123.79, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101964, 11008, 1028, 45.6, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101965, 11008, 1034, 14, 90, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101966, 11008, 1071, 21.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101967, 11009, 1024, 4.5, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101968, 11009, 1036, 19, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101969, 11009, 1060, 34, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101970, 11010, 1007, 30, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101971, 11010, 1024, 4.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101972, 11011, 1058, 13.25, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101973, 11011, 1071, 21.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101974, 11012, 1019, 9.2, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101975, 11012, 1060, 34, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101976, 11012, 1071, 21.5, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101977, 11013, 1023, 9, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101979, 11013, 1045, 9.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101980, 11013, 1068, 12.5, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101981, 11014, 1041, 9.65, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101982, 11015, 1030, 25.89, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101983, 11015, 1077, 13, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101984, 11016, 1031, 12.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101985, 11016, 1036, 19, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101986, 11017, 1003, 10, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101987, 11017, 1059, 55, 110, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101988, 11017, 1070, 15, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101989, 11018, 1012, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101990, 11018, 1018, 62.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101991, 11018, 1056, 38, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101992, 11019, 1046, 12, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101993, 11019, 1049, 20, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101994, 11020, 1010, 31, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101995, 11021, 1002, 19, 11, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101996, 11021, 1020, 81, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101997, 11021, 1026, 31.23, 63, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101998, 11021, 1051, 53, 44, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102000, 11022, 1019, 9.2, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102001, 11022, 1069, 36, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102002, 11023, 1007, 30, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102003, 11023, 1043, 46, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102004, 11024, 1026, 31.23, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102005, 11024, 1033, 2.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102006, 11024, 1065, 21.05, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102007, 11024, 1071, 21.5, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102008, 11025, 1001, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102009, 11025, 1013, 6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102010, 11026, 1018, 62.5, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102011, 11026, 1051, 53, 10, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102012, 11027, 1024, 4.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102013, 11027, 1062, 49.3, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102014, 11028, 1055, 24, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102015, 11028, 1059, 55, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102016, 11029, 1056, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102017, 11029, 1063, 43.9, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102018, 11030, 1002, 19, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102020, 11030, 1029, 123.79, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102021, 11030, 1059, 55, 100, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102022, 11031, 1001, 18, 45, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102023, 11031, 1013, 6, 80, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102024, 11031, 1024, 4.5, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102025, 11031, 1064, 33.25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102026, 11031, 1071, 21.5, 16, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102027, 11032, 1036, 19, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102028, 11032, 1038, 263.5, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102029, 11032, 1059, 55, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102030, 11033, 1053, 32.8, 70, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102031, 11033, 1069, 36, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102032, 11034, 1021, 10, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102033, 11034, 1044, 19.45, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102034, 11034, 1061, 28.5, 6, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102035, 11035, 1001, 18, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102036, 11035, 1035, 18, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102038, 11035, 1054, 7.45, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102039, 11036, 1013, 6, 7, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102040, 11036, 1059, 55, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102041, 11037, 1070, 15, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102042, 11038, 1040, 18.4, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102043, 11038, 1052, 7, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102044, 11038, 1071, 21.5, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102045, 11039, 1028, 45.6, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102046, 11039, 1035, 18, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102047, 11039, 1049, 20, 60, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102048, 11039, 1057, 19.5, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102049, 11040, 1021, 10, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102050, 11041, 1002, 19, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102051, 11041, 1063, 43.9, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102052, 11042, 1044, 19.45, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102053, 11042, 1061, 28.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102055, 11044, 1062, 49.3, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102056, 11045, 1033, 2.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102057, 11045, 1051, 53, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102058, 11046, 1012, 38, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102059, 11046, 1032, 32, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102060, 11046, 1035, 18, 18, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102061, 11047, 1001, 18, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102063, 11048, 1068, 12.5, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102064, 11049, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102065, 11049, 1012, 38, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102066, 11050, 1076, 18, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102067, 11051, 1024, 4.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102068, 11052, 1043, 46, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102069, 11052, 1061, 28.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102070, 11053, 1018, 62.5, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102071, 11053, 1032, 32, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102072, 11053, 1064, 33.25, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102073, 11054, 1033, 2.5, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102074, 11054, 1067, 14, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102075, 11055, 1024, 4.5, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102076, 11055, 1025, 14, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102077, 11055, 1051, 53, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102078, 11055, 1057, 19.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102079, 11056, 1007, 30, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102080, 11056, 1055, 24, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102081, 11056, 1060, 34, 50, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102082, 11057, 1070, 15, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102083, 11058, 1021, 10, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102084, 11058, 1060, 34, 21, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102085, 11058, 1061, 28.5, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102086, 11059, 1013, 6, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102087, 11059, 1017, 39, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102088, 11059, 1060, 34, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102089, 11060, 1060, 34, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102090, 11060, 1077, 13, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102091, 11061, 1060, 34, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102092, 11062, 1053, 32.8, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102093, 11062, 1070, 15, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102094, 11063, 1034, 14, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102095, 11063, 1040, 18.4, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102096, 11063, 1041, 9.65, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102097, 11064, 1017, 39, 77, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102098, 11064, 1041, 9.65, 12, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102099, 11064, 1053, 32.8, 25, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102100, 11064, 1055, 24, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102101, 11064, 1068, 12.5, 55, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102102, 11065, 1030, 25.89, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102103, 11065, 1054, 7.45, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102104, 11066, 1016, 17.45, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102105, 11066, 1019, 9.2, 42, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102106, 11066, 1034, 14, 35, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102107, 11067, 1041, 9.65, 9, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102108, 11068, 1028, 45.6, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102109, 11068, 1043, 46, 36, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102110, 11068, 1077, 13, 28, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102111, 11069, 1039, 18, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102112, 11070, 1001, 18, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102113, 11070, 1002, 19, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102114, 11070, 1016, 17.45, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102115, 11070, 1031, 12.5, 20, 0)
GO
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102116, 11071, 1007, 30, 15, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102117, 11071, 1013, 6, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102118, 11072, 1002, 19, 8, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102119, 11072, 1041, 9.65, 40, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102120, 11072, 1050, 16.25, 22, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102121, 11072, 1064, 33.25, 130, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102123, 11073, 1024, 4.5, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102124, 11074, 1016, 17.45, 14, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102125, 11075, 1002, 19, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102126, 11075, 1046, 12, 30, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102127, 11075, 1076, 18, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102128, 11076, 1006, 25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102129, 11076, 1014, 23.25, 20, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102130, 11076, 1019, 9.2, 10, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102131, 11077, 1002, 19, 24, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102132, 11077, 1003, 10, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102133, 11077, 1004, 22, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102134, 11077, 1006, 25, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102135, 11077, 1007, 30, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102136, 11077, 1008, 40, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102137, 11077, 1010, 31, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102138, 11077, 1012, 38, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102139, 11077, 1013, 6, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102140, 11077, 1014, 23.25, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102141, 11077, 1016, 17.45, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102142, 11077, 1020, 81, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102143, 11077, 1023, 9, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102144, 11077, 1032, 32, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102145, 11077, 1039, 18, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102146, 11077, 1041, 9.65, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102147, 11077, 1046, 12, 3, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102148, 11077, 1052, 7, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102149, 11077, 1055, 24, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102150, 11077, 1060, 34, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102151, 11077, 1064, 33.25, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102152, 11077, 1066, 17, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102153, 11077, 1073, 15, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102154, 11077, 1075, 7.75, 4, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102155, 11077, 1077, 13, 2, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102316, 10250, 1009, 150, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102422, 11174, 1001, 190, 1, 0.19)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102423, 11174, 1002, 19, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102424, 11174, 1024, 4.5, 1, 0.45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102445, 11181, 1001, 190, 1, 0.19)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102446, 11181, 1002, 19, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102447, 11181, 1024, 4.5, 1, 0.45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102448, 11182, 1002, 19, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102449, 11182, 1024, 4.5, 1, 0.45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102459, 11185, 1052, 7, 1, 0.5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102460, 11185, 1022, 21, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102461, 11185, 1023, 9, 1, 0.5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102462, 11185, 1056, 38, 1, 0.04)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102463, 11185, 1057, 19.5, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102464, 11185, 1042, 14, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102465, 11186, 1011, 21, 1, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102466, 11186, 1012, 38, 4, 0.04)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102467, 11186, 1031, 12.5, 5, 0)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102468, 11187, 1083, 97, 1, 0.1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102469, 11190, 1010, 31, 1, 0.03)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102470, 11193, 1003, 10, 1, 0)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10248, N'VINET', CAST(N'1996-07-04 00:00:00.000' AS DateTime), CAST(N'1996-08-01 00:00:00.000' AS DateTime), N'Roger Federer', N'59 rue de l''Abbaye', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10249, N'TOMSP', CAST(N'1996-07-05 00:00:00.000' AS DateTime), CAST(N'1996-08-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Luisenstr. 48', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10250, N'HANAR', CAST(N'1996-07-08 00:00:00.000' AS DateTime), CAST(N'1996-08-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 2563, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10251, N'VICTE', CAST(N'1996-07-08 00:00:00.000' AS DateTime), CAST(N'1996-08-05 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10252, N'SUPRD', CAST(N'1996-07-09 00:00:00.000' AS DateTime), CAST(N'1996-08-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10253, N'HANAR', CAST(N'1996-07-10 00:00:00.000' AS DateTime), CAST(N'1996-07-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10254, N'CHOPS', CAST(N'1996-07-11 00:00:00.000' AS DateTime), CAST(N'1996-08-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10255, N'RICSU', CAST(N'1996-07-12 00:00:00.000' AS DateTime), CAST(N'1996-08-09 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10256, N'WELLI', CAST(N'1996-07-15 00:00:00.000' AS DateTime), CAST(N'1996-08-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10257, N'HILAA', CAST(N'1996-07-16 00:00:00.000' AS DateTime), CAST(N'1996-08-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10258, N'ERNSH', CAST(N'1996-07-17 00:00:00.000' AS DateTime), CAST(N'1996-08-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10259, N'CENTC', CAST(N'1996-07-18 00:00:00.000' AS DateTime), CAST(N'1996-08-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Sierras de Granada 9993', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10260, N'OTTIK', CAST(N'1996-07-19 00:00:00.000' AS DateTime), CAST(N'1996-08-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10261, N'QUEDE', CAST(N'1996-07-19 00:00:00.000' AS DateTime), CAST(N'1996-08-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10262, N'RATTC', CAST(N'1996-07-22 00:00:00.000' AS DateTime), CAST(N'1996-08-19 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10263, N'ERNSH', CAST(N'1996-07-23 00:00:00.000' AS DateTime), CAST(N'1996-08-20 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10264, N'FOLKO', CAST(N'1996-07-24 00:00:00.000' AS DateTime), CAST(N'1996-08-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10265, N'BLONP', CAST(N'1996-07-25 00:00:00.000' AS DateTime), CAST(N'1996-08-22 00:00:00.000' AS DateTime), N'Andy Murray', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10266, N'WARTH', CAST(N'1996-07-26 00:00:00.000' AS DateTime), CAST(N'1996-09-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10267, N'FRANK', CAST(N'1996-07-29 00:00:00.000' AS DateTime), CAST(N'1996-08-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10268, N'GROSR', CAST(N'1996-07-30 00:00:00.000' AS DateTime), CAST(N'1996-08-27 00:00:00.000' AS DateTime), N'Roger Federer', N'5ª Ave. Los Palos Grandes', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10269, N'WHITC', CAST(N'1996-07-31 00:00:00.000' AS DateTime), CAST(N'1996-08-14 00:00:00.000' AS DateTime), N'Rafael Nadal', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10270, N'WARTH', CAST(N'1996-08-01 00:00:00.000' AS DateTime), CAST(N'1996-08-29 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10271, N'SPLIR', CAST(N'1996-08-01 00:00:00.000' AS DateTime), CAST(N'1996-08-29 00:00:00.000' AS DateTime), N'Andy Murray', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10272, N'RATTC', CAST(N'1996-08-02 00:00:00.000' AS DateTime), CAST(N'1996-08-30 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10273, N'QUICK', CAST(N'1996-08-05 00:00:00.000' AS DateTime), CAST(N'1996-09-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10274, N'VINET', CAST(N'1996-08-06 00:00:00.000' AS DateTime), CAST(N'1996-09-03 00:00:00.000' AS DateTime), N'Roger Federer', N'59 rue de l''Abbaye', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10275, N'MAGAA', CAST(N'1996-08-07 00:00:00.000' AS DateTime), CAST(N'1996-09-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10276, N'TORTU', CAST(N'1996-08-08 00:00:00.000' AS DateTime), CAST(N'1996-08-22 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10277, N'MORGK', CAST(N'1996-08-09 00:00:00.000' AS DateTime), CAST(N'1996-09-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Heerstr. 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10278, N'BERGS', CAST(N'1996-08-12 00:00:00.000' AS DateTime), CAST(N'1996-09-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10279, N'LEHMS', CAST(N'1996-08-13 00:00:00.000' AS DateTime), CAST(N'1996-09-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10280, N'BERGS', CAST(N'1996-08-14 00:00:00.000' AS DateTime), CAST(N'1996-09-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10281, N'ROMEY', CAST(N'1996-08-14 00:00:00.000' AS DateTime), CAST(N'1996-08-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Gran Vía, 1', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10282, N'ROMEY', CAST(N'1996-08-15 00:00:00.000' AS DateTime), CAST(N'1996-09-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Gran Vía, 1', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10283, N'LILAS', CAST(N'1996-08-16 00:00:00.000' AS DateTime), CAST(N'1996-09-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10284, N'LEHMS', CAST(N'1996-08-19 00:00:00.000' AS DateTime), CAST(N'1996-09-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10285, N'QUICK', CAST(N'1996-08-20 00:00:00.000' AS DateTime), CAST(N'1996-09-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10286, N'QUICK', CAST(N'1996-08-21 00:00:00.000' AS DateTime), CAST(N'1996-09-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10287, N'RICAR', CAST(N'1996-08-22 00:00:00.000' AS DateTime), CAST(N'1996-09-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10288, N'REGGC', CAST(N'1996-08-23 00:00:00.000' AS DateTime), CAST(N'1996-09-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10289, N'BSBEV', CAST(N'1996-08-26 00:00:00.000' AS DateTime), CAST(N'1996-09-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10290, N'COMMI', CAST(N'1996-08-27 00:00:00.000' AS DateTime), CAST(N'1996-09-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. dos Lusíadas, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10291, N'QUEDE', CAST(N'1996-08-27 00:00:00.000' AS DateTime), CAST(N'1996-09-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10292, N'TRADH', CAST(N'1996-08-28 00:00:00.000' AS DateTime), CAST(N'1996-09-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10293, N'TORTU', CAST(N'1996-08-29 00:00:00.000' AS DateTime), CAST(N'1996-09-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10294, N'RATTC', CAST(N'1996-08-30 00:00:00.000' AS DateTime), CAST(N'1996-09-27 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10295, N'VINET', CAST(N'1996-09-02 00:00:00.000' AS DateTime), CAST(N'1996-09-30 00:00:00.000' AS DateTime), N'Andy Murray', N'59 rue de l''Abbaye', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10296, N'LILAS', CAST(N'1996-09-03 00:00:00.000' AS DateTime), CAST(N'1996-10-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10297, N'BLONP', CAST(N'1996-09-04 00:00:00.000' AS DateTime), CAST(N'1996-10-16 00:00:00.000' AS DateTime), N'Andy Murray', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10298, N'HUNGO', CAST(N'1996-09-05 00:00:00.000' AS DateTime), CAST(N'1996-10-03 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10299, N'RICAR', CAST(N'1996-09-06 00:00:00.000' AS DateTime), CAST(N'1996-10-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10300, N'MAGAA', CAST(N'1996-09-09 00:00:00.000' AS DateTime), CAST(N'1996-10-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10301, N'WANDK', CAST(N'1996-09-09 00:00:00.000' AS DateTime), CAST(N'1996-10-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10302, N'SUPRD', CAST(N'1996-09-10 00:00:00.000' AS DateTime), CAST(N'1996-10-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10303, N'GODOS', CAST(N'1996-09-11 00:00:00.000' AS DateTime), CAST(N'1996-10-09 00:00:00.000' AS DateTime), N'Andy Murray', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10304, N'TORTU', CAST(N'1996-09-12 00:00:00.000' AS DateTime), CAST(N'1996-10-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10305, N'OLDWO', CAST(N'1996-09-13 00:00:00.000' AS DateTime), CAST(N'1996-10-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10306, N'ROMEY', CAST(N'1996-09-16 00:00:00.000' AS DateTime), CAST(N'1996-10-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Gran Vía, 1', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10307, N'LONEP', CAST(N'1996-09-17 00:00:00.000' AS DateTime), CAST(N'1996-10-15 00:00:00.000' AS DateTime), N'Andy Murray', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10308, N'ANATR', CAST(N'1996-09-18 00:00:00.000' AS DateTime), CAST(N'1996-10-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. de la Constitución 2222', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10309, N'HUNGO', CAST(N'1996-09-19 00:00:00.000' AS DateTime), CAST(N'1996-10-17 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10310, N'THEBI', CAST(N'1996-09-20 00:00:00.000' AS DateTime), CAST(N'1996-10-18 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Jefferson Way Suite 2', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10311, N'DUMON', CAST(N'1996-09-20 00:00:00.000' AS DateTime), CAST(N'1996-10-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'67, rue des Cinquante Otages', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10312, N'WANDK', CAST(N'1996-09-23 00:00:00.000' AS DateTime), CAST(N'1996-10-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10313, N'QUICK', CAST(N'1996-09-24 00:00:00.000' AS DateTime), CAST(N'1996-10-22 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10314, N'RATTC', CAST(N'1996-09-25 00:00:00.000' AS DateTime), CAST(N'1996-10-23 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10315, N'ISLAT', CAST(N'1996-09-26 00:00:00.000' AS DateTime), CAST(N'1996-10-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10316, N'RATTC', CAST(N'1996-09-27 00:00:00.000' AS DateTime), CAST(N'1996-10-25 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10317, N'LONEP', CAST(N'1996-09-30 00:00:00.000' AS DateTime), CAST(N'1996-10-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10318, N'ISLAT', CAST(N'1996-10-01 00:00:00.000' AS DateTime), CAST(N'1996-10-29 00:00:00.000' AS DateTime), N'Roger Federer', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10319, N'TORTU', CAST(N'1996-10-02 00:00:00.000' AS DateTime), CAST(N'1996-10-30 00:00:00.000' AS DateTime), N'Andy Murray', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10320, N'WARTH', CAST(N'1996-10-03 00:00:00.000' AS DateTime), CAST(N'1996-10-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10321, N'ISLAT', CAST(N'1996-10-03 00:00:00.000' AS DateTime), CAST(N'1996-10-31 00:00:00.000' AS DateTime), N'Andy Murray', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10322, N'PERIC', CAST(N'1996-10-04 00:00:00.000' AS DateTime), CAST(N'1996-11-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10323, N'KOENE', CAST(N'1996-10-07 00:00:00.000' AS DateTime), CAST(N'1996-11-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10324, N'SAVEA', CAST(N'1996-10-08 00:00:00.000' AS DateTime), CAST(N'1996-11-05 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10325, N'KOENE', CAST(N'1996-10-09 00:00:00.000' AS DateTime), CAST(N'1996-10-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10326, N'BOLID', CAST(N'1996-10-10 00:00:00.000' AS DateTime), CAST(N'1996-11-07 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Araquil, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10327, N'FOLKO', CAST(N'1996-10-11 00:00:00.000' AS DateTime), CAST(N'1996-11-08 00:00:00.000' AS DateTime), N'Andy Murray', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10328, N'FURIB', CAST(N'1996-10-14 00:00:00.000' AS DateTime), CAST(N'1996-11-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10329, N'SPLIR', CAST(N'1996-10-15 00:00:00.000' AS DateTime), CAST(N'1996-11-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10330, N'LILAS', CAST(N'1996-10-16 00:00:00.000' AS DateTime), CAST(N'1996-11-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10331, N'BONAP', CAST(N'1996-10-16 00:00:00.000' AS DateTime), CAST(N'1996-11-27 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10332, N'MEREP', CAST(N'1996-10-17 00:00:00.000' AS DateTime), CAST(N'1996-11-28 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10333, N'WARTH', CAST(N'1996-10-18 00:00:00.000' AS DateTime), CAST(N'1996-11-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10334, N'VICTE', CAST(N'1996-10-21 00:00:00.000' AS DateTime), CAST(N'1996-11-18 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10335, N'HUNGO', CAST(N'1996-10-22 00:00:00.000' AS DateTime), CAST(N'1996-11-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10336, N'PRINI', CAST(N'1996-10-23 00:00:00.000' AS DateTime), CAST(N'1996-11-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Estrada da saúde n. 58', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10337, N'FRANK', CAST(N'1996-10-24 00:00:00.000' AS DateTime), CAST(N'1996-11-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10338, N'OLDWO', CAST(N'1996-10-25 00:00:00.000' AS DateTime), CAST(N'1996-11-22 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10339, N'MEREP', CAST(N'1996-10-28 00:00:00.000' AS DateTime), CAST(N'1996-11-25 00:00:00.000' AS DateTime), N'Andy Murray', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10340, N'BONAP', CAST(N'1996-10-29 00:00:00.000' AS DateTime), CAST(N'1996-11-26 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10341, N'SIMOB', CAST(N'1996-10-29 00:00:00.000' AS DateTime), CAST(N'1996-11-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10342, N'FRANK', CAST(N'1996-10-30 00:00:00.000' AS DateTime), CAST(N'1996-11-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10343, N'LEHMS', CAST(N'1996-10-31 00:00:00.000' AS DateTime), CAST(N'1996-11-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10344, N'WHITC', CAST(N'1996-11-01 00:00:00.000' AS DateTime), CAST(N'1996-11-29 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10345, N'QUICK', CAST(N'1996-11-04 00:00:00.000' AS DateTime), CAST(N'1996-12-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10346, N'RATTC', CAST(N'1996-11-05 00:00:00.000' AS DateTime), CAST(N'1996-12-17 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10347, N'FAMIA', CAST(N'1996-11-06 00:00:00.000' AS DateTime), CAST(N'1996-12-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10348, N'WANDK', CAST(N'1996-11-07 00:00:00.000' AS DateTime), CAST(N'1996-12-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10349, N'SPLIR', CAST(N'1996-11-08 00:00:00.000' AS DateTime), CAST(N'1996-12-06 00:00:00.000' AS DateTime), N'Andy Murray', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10350, N'LAMAI', CAST(N'1996-11-11 00:00:00.000' AS DateTime), CAST(N'1996-12-09 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10351, N'ERNSH', CAST(N'1996-11-11 00:00:00.000' AS DateTime), CAST(N'1996-12-09 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10352, N'FURIB', CAST(N'1996-11-12 00:00:00.000' AS DateTime), CAST(N'1996-11-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10353, N'PICCO', CAST(N'1996-11-13 00:00:00.000' AS DateTime), CAST(N'1996-12-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10354, N'PERIC', CAST(N'1996-11-14 00:00:00.000' AS DateTime), CAST(N'1996-12-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10355, N'AROUT', CAST(N'1996-11-15 00:00:00.000' AS DateTime), CAST(N'1996-12-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10356, N'WANDK', CAST(N'1996-11-18 00:00:00.000' AS DateTime), CAST(N'1996-12-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10357, N'LILAS', CAST(N'1996-11-19 00:00:00.000' AS DateTime), CAST(N'1996-12-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10358, N'LAMAI', CAST(N'1996-11-20 00:00:00.000' AS DateTime), CAST(N'1996-12-18 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10359, N'SEVES', CAST(N'1996-11-21 00:00:00.000' AS DateTime), CAST(N'1996-12-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10360, N'BLONP', CAST(N'1996-11-22 00:00:00.000' AS DateTime), CAST(N'1996-12-20 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10361, N'QUICK', CAST(N'1996-11-22 00:00:00.000' AS DateTime), CAST(N'1996-12-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10362, N'BONAP', CAST(N'1996-11-25 00:00:00.000' AS DateTime), CAST(N'1996-12-23 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10363, N'DRACD', CAST(N'1996-11-26 00:00:00.000' AS DateTime), CAST(N'1996-12-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10364, N'EASTC', CAST(N'1996-11-26 00:00:00.000' AS DateTime), CAST(N'1997-01-07 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10365, N'ANTON', CAST(N'1996-11-27 00:00:00.000' AS DateTime), CAST(N'1996-12-25 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10366, N'GALED', CAST(N'1996-11-28 00:00:00.000' AS DateTime), CAST(N'1997-01-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Rambla de Cataluña, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10367, N'VAFFE', CAST(N'1996-11-28 00:00:00.000' AS DateTime), CAST(N'1996-12-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10368, N'ERNSH', CAST(N'1996-11-29 00:00:00.000' AS DateTime), CAST(N'1996-12-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10369, N'SPLIR', CAST(N'1996-12-02 00:00:00.000' AS DateTime), CAST(N'1996-12-30 00:00:00.000' AS DateTime), N'Andy Murray', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10370, N'CHOPS', CAST(N'1996-12-03 00:00:00.000' AS DateTime), CAST(N'1996-12-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10371, N'LAMAI', CAST(N'1996-12-03 00:00:00.000' AS DateTime), CAST(N'1996-12-31 00:00:00.000' AS DateTime), N'Rafael Nadal', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10372, N'QUEEN', CAST(N'1996-12-04 00:00:00.000' AS DateTime), CAST(N'1997-01-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10373, N'HUNGO', CAST(N'1996-12-05 00:00:00.000' AS DateTime), CAST(N'1997-01-02 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10374, N'WOLZA', CAST(N'1996-12-05 00:00:00.000' AS DateTime), CAST(N'1997-01-02 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10375, N'HUNGC', CAST(N'1996-12-06 00:00:00.000' AS DateTime), CAST(N'1997-01-03 00:00:00.000' AS DateTime), N'Andy Murray', N'City Center Plaza 516 Main St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10376, N'MEREP', CAST(N'1996-12-09 00:00:00.000' AS DateTime), CAST(N'1997-01-06 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10377, N'SEVES', CAST(N'1996-12-09 00:00:00.000' AS DateTime), CAST(N'1997-01-06 00:00:00.000' AS DateTime), N'Rafael Nadal', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10378, N'FOLKO', CAST(N'1996-12-10 00:00:00.000' AS DateTime), CAST(N'1997-01-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10379, N'QUEDE', CAST(N'1996-12-11 00:00:00.000' AS DateTime), CAST(N'1997-01-08 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10380, N'HUNGO', CAST(N'1996-12-12 00:00:00.000' AS DateTime), CAST(N'1997-01-09 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10381, N'LILAS', CAST(N'1996-12-12 00:00:00.000' AS DateTime), CAST(N'1997-01-09 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10382, N'ERNSH', CAST(N'1996-12-13 00:00:00.000' AS DateTime), CAST(N'1997-01-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10383, N'AROUT', CAST(N'1996-12-16 00:00:00.000' AS DateTime), CAST(N'1997-01-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10384, N'BERGS', CAST(N'1996-12-16 00:00:00.000' AS DateTime), CAST(N'1997-01-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10385, N'SPLIR', CAST(N'1996-12-17 00:00:00.000' AS DateTime), CAST(N'1997-01-14 00:00:00.000' AS DateTime), N'Andy Murray', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10386, N'FAMIA', CAST(N'1996-12-18 00:00:00.000' AS DateTime), CAST(N'1997-01-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10387, N'SANTG', CAST(N'1996-12-18 00:00:00.000' AS DateTime), CAST(N'1997-01-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10388, N'SEVES', CAST(N'1996-12-19 00:00:00.000' AS DateTime), CAST(N'1997-01-16 00:00:00.000' AS DateTime), N'Roger Federer', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10389, N'BOTTM', CAST(N'1996-12-20 00:00:00.000' AS DateTime), CAST(N'1997-01-17 00:00:00.000' AS DateTime), N'Rafael Nadal', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10390, N'ERNSH', CAST(N'1996-12-23 00:00:00.000' AS DateTime), CAST(N'1997-01-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10391, N'DRACD', CAST(N'1996-12-23 00:00:00.000' AS DateTime), CAST(N'1997-01-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10392, N'PICCO', CAST(N'1996-12-24 00:00:00.000' AS DateTime), CAST(N'1997-01-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10393, N'SAVEA', CAST(N'1996-12-25 00:00:00.000' AS DateTime), CAST(N'1997-01-22 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10394, N'HUNGC', CAST(N'1996-12-25 00:00:00.000' AS DateTime), CAST(N'1997-01-22 00:00:00.000' AS DateTime), N'Roger Federer', N'City Center Plaza 516 Main St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10395, N'HILAA', CAST(N'1996-12-26 00:00:00.000' AS DateTime), CAST(N'1997-01-23 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10396, N'FRANK', CAST(N'1996-12-27 00:00:00.000' AS DateTime), CAST(N'1997-01-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10397, N'PRINI', CAST(N'1996-12-27 00:00:00.000' AS DateTime), CAST(N'1997-01-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Estrada da saúde n. 58', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10398, N'SAVEA', CAST(N'1996-12-30 00:00:00.000' AS DateTime), CAST(N'1997-01-27 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10399, N'VAFFE', CAST(N'1996-12-31 00:00:00.000' AS DateTime), CAST(N'1997-01-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10400, N'EASTC', CAST(N'1997-01-01 00:00:00.000' AS DateTime), CAST(N'1997-01-29 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10401, N'RATTC', CAST(N'1997-01-01 00:00:00.000' AS DateTime), CAST(N'1997-01-29 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10402, N'ERNSH', CAST(N'1997-01-02 00:00:00.000' AS DateTime), CAST(N'1997-02-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10403, N'ERNSH', CAST(N'1997-01-03 00:00:00.000' AS DateTime), CAST(N'1997-01-31 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10404, N'MAGAA', CAST(N'1997-01-03 00:00:00.000' AS DateTime), CAST(N'1997-01-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10405, N'LINOD', CAST(N'1997-01-06 00:00:00.000' AS DateTime), CAST(N'1997-02-03 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10406, N'QUEEN', CAST(N'1997-01-07 00:00:00.000' AS DateTime), CAST(N'1997-02-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10407, N'OTTIK', CAST(N'1997-01-07 00:00:00.000' AS DateTime), CAST(N'1997-02-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10408, N'FOLIG', CAST(N'1997-01-08 00:00:00.000' AS DateTime), CAST(N'1997-02-05 00:00:00.000' AS DateTime), N'Roger Federer', N'184, chaussée de Tournai', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10409, N'OCEAN', CAST(N'1997-01-09 00:00:00.000' AS DateTime), CAST(N'1997-02-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Ing. Gustavo Moncada 8585 Piso 20-A', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10410, N'BOTTM', CAST(N'1997-01-10 00:00:00.000' AS DateTime), CAST(N'1997-02-07 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10411, N'BOTTM', CAST(N'1997-01-10 00:00:00.000' AS DateTime), CAST(N'1997-02-07 00:00:00.000' AS DateTime), N'Andy Murray', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10412, N'WARTH', CAST(N'1997-01-13 00:00:00.000' AS DateTime), CAST(N'1997-02-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10413, N'LAMAI', CAST(N'1997-01-14 00:00:00.000' AS DateTime), CAST(N'1997-02-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10414, N'FAMIA', CAST(N'1997-01-14 00:00:00.000' AS DateTime), CAST(N'1997-02-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10415, N'HUNGC', CAST(N'1997-01-15 00:00:00.000' AS DateTime), CAST(N'1997-02-12 00:00:00.000' AS DateTime), N'Andy Murray', N'City Center Plaza 516 Main St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10416, N'WARTH', CAST(N'1997-01-16 00:00:00.000' AS DateTime), CAST(N'1997-02-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10417, N'SIMOB', CAST(N'1997-01-16 00:00:00.000' AS DateTime), CAST(N'1997-02-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10418, N'QUICK', CAST(N'1997-01-17 00:00:00.000' AS DateTime), CAST(N'1997-02-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10419, N'RICSU', CAST(N'1997-01-20 00:00:00.000' AS DateTime), CAST(N'1997-02-17 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10420, N'WELLI', CAST(N'1997-01-21 00:00:00.000' AS DateTime), CAST(N'1997-02-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10421, N'QUEDE', CAST(N'1997-01-21 00:00:00.000' AS DateTime), CAST(N'1997-03-04 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10422, N'FRANS', CAST(N'1997-01-22 00:00:00.000' AS DateTime), CAST(N'1997-02-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10423, N'GOURL', CAST(N'1997-01-23 00:00:00.000' AS DateTime), CAST(N'1997-02-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10424, N'MEREP', CAST(N'1997-01-23 00:00:00.000' AS DateTime), CAST(N'1997-02-20 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10425, N'LAMAI', CAST(N'1997-01-24 00:00:00.000' AS DateTime), CAST(N'1997-02-21 00:00:00.000' AS DateTime), N'Rafael Nadal', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10426, N'GALED', CAST(N'1997-01-27 00:00:00.000' AS DateTime), CAST(N'1997-02-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Rambla de Cataluña, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10427, N'PICCO', CAST(N'1997-01-27 00:00:00.000' AS DateTime), CAST(N'1997-02-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10428, N'REGGC', CAST(N'1997-01-28 00:00:00.000' AS DateTime), CAST(N'1997-02-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10429, N'HUNGO', CAST(N'1997-01-29 00:00:00.000' AS DateTime), CAST(N'1997-03-12 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10430, N'ERNSH', CAST(N'1997-01-30 00:00:00.000' AS DateTime), CAST(N'1997-02-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10431, N'BOTTM', CAST(N'1997-01-30 00:00:00.000' AS DateTime), CAST(N'1997-02-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10432, N'SPLIR', CAST(N'1997-01-31 00:00:00.000' AS DateTime), CAST(N'1997-02-14 00:00:00.000' AS DateTime), N'Roger Federer', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10433, N'PRINI', CAST(N'1997-02-03 00:00:00.000' AS DateTime), CAST(N'1997-03-03 00:00:00.000' AS DateTime), N'Andy Murray', N'Estrada da saúde n. 58', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10434, N'FOLKO', CAST(N'1997-02-03 00:00:00.000' AS DateTime), CAST(N'1997-03-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10435, N'CONSH', CAST(N'1997-02-04 00:00:00.000' AS DateTime), CAST(N'1997-03-18 00:00:00.000' AS DateTime), N'Andy Murray', N'Berkeley Gardens 12  Brewery', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10436, N'BLONP', CAST(N'1997-02-05 00:00:00.000' AS DateTime), CAST(N'1997-03-05 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10437, N'WARTH', CAST(N'1997-02-05 00:00:00.000' AS DateTime), CAST(N'1997-03-05 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10438, N'TOMSP', CAST(N'1997-02-06 00:00:00.000' AS DateTime), CAST(N'1997-03-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Luisenstr. 48', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10439, N'MEREP', CAST(N'1997-02-07 00:00:00.000' AS DateTime), CAST(N'1997-03-07 00:00:00.000' AS DateTime), N'Andy Murray', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10440, N'SAVEA', CAST(N'1997-02-10 00:00:00.000' AS DateTime), CAST(N'1997-03-10 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10441, N'OLDWO', CAST(N'1997-02-10 00:00:00.000' AS DateTime), CAST(N'1997-03-24 00:00:00.000' AS DateTime), N'Andy Murray', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10442, N'ERNSH', CAST(N'1997-02-11 00:00:00.000' AS DateTime), CAST(N'1997-03-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10443, N'REGGC', CAST(N'1997-02-12 00:00:00.000' AS DateTime), CAST(N'1997-03-12 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10444, N'BERGS', CAST(N'1997-02-12 00:00:00.000' AS DateTime), CAST(N'1997-03-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10445, N'BERGS', CAST(N'1997-02-13 00:00:00.000' AS DateTime), CAST(N'1997-03-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10446, N'TOMSP', CAST(N'1997-02-14 00:00:00.000' AS DateTime), CAST(N'1997-03-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Luisenstr. 48', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10447, N'RICAR', CAST(N'1997-02-14 00:00:00.000' AS DateTime), CAST(N'1997-03-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10448, N'RANCH', CAST(N'1997-02-17 00:00:00.000' AS DateTime), CAST(N'1997-03-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. del Libertador 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10449, N'BLONP', CAST(N'1997-02-18 00:00:00.000' AS DateTime), CAST(N'1997-03-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10450, N'VICTE', CAST(N'1997-02-19 00:00:00.000' AS DateTime), CAST(N'1997-03-19 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10451, N'QUICK', CAST(N'1997-02-19 00:00:00.000' AS DateTime), CAST(N'1997-03-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10452, N'SAVEA', CAST(N'1997-02-20 00:00:00.000' AS DateTime), CAST(N'1997-03-20 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10453, N'AROUT', CAST(N'1997-02-21 00:00:00.000' AS DateTime), CAST(N'1997-03-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10454, N'LAMAI', CAST(N'1997-02-21 00:00:00.000' AS DateTime), CAST(N'1997-03-21 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10455, N'WARTH', CAST(N'1997-02-24 00:00:00.000' AS DateTime), CAST(N'1997-04-07 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10456, N'KOENE', CAST(N'1997-02-25 00:00:00.000' AS DateTime), CAST(N'1997-04-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10457, N'KOENE', CAST(N'1997-02-25 00:00:00.000' AS DateTime), CAST(N'1997-03-25 00:00:00.000' AS DateTime), N'Andy Murray', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10458, N'SUPRD', CAST(N'1997-02-26 00:00:00.000' AS DateTime), CAST(N'1997-03-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10459, N'VICTE', CAST(N'1997-02-27 00:00:00.000' AS DateTime), CAST(N'1997-03-27 00:00:00.000' AS DateTime), N'Andy Murray', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10460, N'FOLKO', CAST(N'1997-02-28 00:00:00.000' AS DateTime), CAST(N'1997-03-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10461, N'LILAS', CAST(N'1997-02-28 00:00:00.000' AS DateTime), CAST(N'1997-03-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10462, N'CONSH', CAST(N'1997-03-03 00:00:00.000' AS DateTime), CAST(N'1997-03-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Berkeley Gardens 12  Brewery', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10463, N'SUPRD', CAST(N'1997-03-04 00:00:00.000' AS DateTime), CAST(N'1997-04-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10464, N'FURIB', CAST(N'1997-03-04 00:00:00.000' AS DateTime), CAST(N'1997-04-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10465, N'VAFFE', CAST(N'1997-03-05 00:00:00.000' AS DateTime), CAST(N'1997-04-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10466, N'COMMI', CAST(N'1997-03-06 00:00:00.000' AS DateTime), CAST(N'1997-04-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. dos Lusíadas, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10467, N'MAGAA', CAST(N'1997-03-06 00:00:00.000' AS DateTime), CAST(N'1997-04-03 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10468, N'KOENE', CAST(N'1997-03-07 00:00:00.000' AS DateTime), CAST(N'1997-04-04 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10469, N'WHITC', CAST(N'1997-03-10 00:00:00.000' AS DateTime), CAST(N'1997-04-07 00:00:00.000' AS DateTime), N'Andy Murray', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10470, N'BONAP', CAST(N'1997-03-11 00:00:00.000' AS DateTime), CAST(N'1997-04-08 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10471, N'BSBEV', CAST(N'1997-03-11 00:00:00.000' AS DateTime), CAST(N'1997-04-08 00:00:00.000' AS DateTime), N'Andy Murray', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10472, N'SEVES', CAST(N'1997-03-12 00:00:00.000' AS DateTime), CAST(N'1997-04-09 00:00:00.000' AS DateTime), N'Roger Federer', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10473, N'ISLAT', CAST(N'1997-03-13 00:00:00.000' AS DateTime), CAST(N'1997-03-27 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10474, N'PERIC', CAST(N'1997-03-13 00:00:00.000' AS DateTime), CAST(N'1997-04-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10475, N'SUPRD', CAST(N'1997-03-14 00:00:00.000' AS DateTime), CAST(N'1997-04-11 00:00:00.000' AS DateTime), N'Andy Murray', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10476, N'HILAA', CAST(N'1997-03-17 00:00:00.000' AS DateTime), CAST(N'1997-04-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10477, N'PRINI', CAST(N'1997-03-17 00:00:00.000' AS DateTime), CAST(N'1997-04-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Estrada da saúde n. 58', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10478, N'VICTE', CAST(N'1997-03-18 00:00:00.000' AS DateTime), CAST(N'1997-04-01 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10479, N'RATTC', CAST(N'1997-03-19 00:00:00.000' AS DateTime), CAST(N'1997-04-16 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10480, N'FOLIG', CAST(N'1997-03-20 00:00:00.000' AS DateTime), CAST(N'1997-04-17 00:00:00.000' AS DateTime), N'Roger Federer', N'184, chaussée de Tournai', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10481, N'RICAR', CAST(N'1997-03-20 00:00:00.000' AS DateTime), CAST(N'1997-04-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10482, N'LAZYK', CAST(N'1997-03-21 00:00:00.000' AS DateTime), CAST(N'1997-04-18 00:00:00.000' AS DateTime), N'Roger Federer', N'12 Orchestra Terrace', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10483, N'WHITC', CAST(N'1997-03-24 00:00:00.000' AS DateTime), CAST(N'1997-04-21 00:00:00.000' AS DateTime), N'Andy Murray', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10484, N'BSBEV', CAST(N'1997-03-24 00:00:00.000' AS DateTime), CAST(N'1997-04-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10485, N'LINOD', CAST(N'1997-03-25 00:00:00.000' AS DateTime), CAST(N'1997-04-08 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10486, N'HILAA', CAST(N'1997-03-26 00:00:00.000' AS DateTime), CAST(N'1997-04-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10487, N'QUEEN', CAST(N'1997-03-26 00:00:00.000' AS DateTime), CAST(N'1997-04-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10488, N'FRANK', CAST(N'1997-03-27 00:00:00.000' AS DateTime), CAST(N'1997-04-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10489, N'PICCO', CAST(N'1997-03-28 00:00:00.000' AS DateTime), CAST(N'1997-04-25 00:00:00.000' AS DateTime), N'Andy Murray', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10490, N'HILAA', CAST(N'1997-03-31 00:00:00.000' AS DateTime), CAST(N'1997-04-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10491, N'FURIB', CAST(N'1997-03-31 00:00:00.000' AS DateTime), CAST(N'1997-04-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10492, N'BOTTM', CAST(N'1997-04-01 00:00:00.000' AS DateTime), CAST(N'1997-04-29 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10493, N'LAMAI', CAST(N'1997-04-02 00:00:00.000' AS DateTime), CAST(N'1997-04-30 00:00:00.000' AS DateTime), N'Andy Murray', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10494, N'COMMI', CAST(N'1997-04-02 00:00:00.000' AS DateTime), CAST(N'1997-04-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. dos Lusíadas, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10495, N'LAUGB', CAST(N'1997-04-03 00:00:00.000' AS DateTime), CAST(N'1997-05-01 00:00:00.000' AS DateTime), N'Andy Murray', N'2319 Elm St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10496, N'TRADH', CAST(N'1997-04-04 00:00:00.000' AS DateTime), CAST(N'1997-05-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10497, N'LEHMS', CAST(N'1997-04-04 00:00:00.000' AS DateTime), CAST(N'1997-05-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10498, N'HILAA', CAST(N'1997-04-07 00:00:00.000' AS DateTime), CAST(N'1997-05-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10499, N'LILAS', CAST(N'1997-04-08 00:00:00.000' AS DateTime), CAST(N'1997-05-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10500, N'LAMAI', CAST(N'1997-04-09 00:00:00.000' AS DateTime), CAST(N'1997-05-07 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10501, N'BLAUS', CAST(N'1997-04-09 00:00:00.000' AS DateTime), CAST(N'1997-05-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10502, N'PERIC', CAST(N'1997-04-10 00:00:00.000' AS DateTime), CAST(N'1997-05-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10503, N'HUNGO', CAST(N'1997-04-11 00:00:00.000' AS DateTime), CAST(N'1997-05-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10504, N'WHITC', CAST(N'1997-04-11 00:00:00.000' AS DateTime), CAST(N'1997-05-09 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10505, N'MEREP', CAST(N'1997-04-14 00:00:00.000' AS DateTime), CAST(N'1997-05-12 00:00:00.000' AS DateTime), N'Andy Murray', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10506, N'KOENE', CAST(N'1997-04-15 00:00:00.000' AS DateTime), CAST(N'1997-05-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10507, N'ANTON', CAST(N'1997-04-15 00:00:00.000' AS DateTime), CAST(N'1997-05-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10508, N'OTTIK', CAST(N'1997-04-16 00:00:00.000' AS DateTime), CAST(N'1997-05-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10509, N'BLAUS', CAST(N'1997-04-17 00:00:00.000' AS DateTime), CAST(N'1997-05-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10510, N'SAVEA', CAST(N'1997-04-18 00:00:00.000' AS DateTime), CAST(N'1997-05-16 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10511, N'BONAP', CAST(N'1997-04-18 00:00:00.000' AS DateTime), CAST(N'1997-05-16 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10512, N'FAMIA', CAST(N'1997-04-21 00:00:00.000' AS DateTime), CAST(N'1997-05-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10513, N'WANDK', CAST(N'1997-04-22 00:00:00.000' AS DateTime), CAST(N'1997-06-03 00:00:00.000' AS DateTime), N'Andy Murray', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10514, N'ERNSH', CAST(N'1997-04-22 00:00:00.000' AS DateTime), CAST(N'1997-05-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10515, N'QUICK', CAST(N'1997-04-23 00:00:00.000' AS DateTime), CAST(N'1997-05-07 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10516, N'HUNGO', CAST(N'1997-04-24 00:00:00.000' AS DateTime), CAST(N'1997-05-22 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10517, N'NORTS', CAST(N'1997-04-24 00:00:00.000' AS DateTime), CAST(N'1997-05-22 00:00:00.000' AS DateTime), N'Andy Murray', N'South House 300 Queensbridge', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10518, N'TORTU', CAST(N'1997-04-25 00:00:00.000' AS DateTime), CAST(N'1997-05-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10519, N'CHOPS', CAST(N'1997-04-28 00:00:00.000' AS DateTime), CAST(N'1997-05-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10520, N'SANTG', CAST(N'1997-04-29 00:00:00.000' AS DateTime), CAST(N'1997-05-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10521, N'CACTU', CAST(N'1997-04-29 00:00:00.000' AS DateTime), CAST(N'1997-05-27 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10522, N'LEHMS', CAST(N'1997-04-30 00:00:00.000' AS DateTime), CAST(N'1997-05-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10523, N'SEVES', CAST(N'1997-05-01 00:00:00.000' AS DateTime), CAST(N'1997-05-29 00:00:00.000' AS DateTime), N'Andy Murray', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10524, N'BERGS', CAST(N'1997-05-01 00:00:00.000' AS DateTime), CAST(N'1997-05-29 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10525, N'BONAP', CAST(N'1997-05-02 00:00:00.000' AS DateTime), CAST(N'1997-05-30 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10526, N'WARTH', CAST(N'1997-05-05 00:00:00.000' AS DateTime), CAST(N'1997-06-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10527, N'QUICK', CAST(N'1997-05-05 00:00:00.000' AS DateTime), CAST(N'1997-06-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10528, N'GREAL', CAST(N'1997-05-06 00:00:00.000' AS DateTime), CAST(N'1997-05-20 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10529, N'MAISD', CAST(N'1997-05-07 00:00:00.000' AS DateTime), CAST(N'1997-06-04 00:00:00.000' AS DateTime), N'Andy Murray', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10530, N'PICCO', CAST(N'1997-05-08 00:00:00.000' AS DateTime), CAST(N'1997-06-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10531, N'OCEAN', CAST(N'1997-05-08 00:00:00.000' AS DateTime), CAST(N'1997-06-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Ing. Gustavo Moncada 8585 Piso 20-A', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10532, N'EASTC', CAST(N'1997-05-09 00:00:00.000' AS DateTime), CAST(N'1997-06-06 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10533, N'FOLKO', CAST(N'1997-05-12 00:00:00.000' AS DateTime), CAST(N'1997-06-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10534, N'LEHMS', CAST(N'1997-05-12 00:00:00.000' AS DateTime), CAST(N'1997-06-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10535, N'ANTON', CAST(N'1997-05-13 00:00:00.000' AS DateTime), CAST(N'1997-06-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10536, N'LEHMS', CAST(N'1997-05-14 00:00:00.000' AS DateTime), CAST(N'1997-06-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10537, N'RICSU', CAST(N'1997-05-14 00:00:00.000' AS DateTime), CAST(N'1997-05-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10538, N'BSBEV', CAST(N'1997-05-15 00:00:00.000' AS DateTime), CAST(N'1997-06-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10539, N'BSBEV', CAST(N'1997-05-16 00:00:00.000' AS DateTime), CAST(N'1997-06-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10540, N'QUICK', CAST(N'1997-05-19 00:00:00.000' AS DateTime), CAST(N'1997-06-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10541, N'HANAR', CAST(N'1997-05-19 00:00:00.000' AS DateTime), CAST(N'1997-06-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10542, N'KOENE', CAST(N'1997-05-20 00:00:00.000' AS DateTime), CAST(N'1997-06-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10543, N'LILAS', CAST(N'1997-05-21 00:00:00.000' AS DateTime), CAST(N'1997-06-18 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10544, N'LONEP', CAST(N'1997-05-21 00:00:00.000' AS DateTime), CAST(N'1997-06-18 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10545, N'LAZYK', CAST(N'1997-05-22 00:00:00.000' AS DateTime), CAST(N'1997-06-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'12 Orchestra Terrace', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10546, N'VICTE', CAST(N'1997-05-23 00:00:00.000' AS DateTime), CAST(N'1997-06-20 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10547, N'SEVES', CAST(N'1997-05-23 00:00:00.000' AS DateTime), CAST(N'1997-06-20 00:00:00.000' AS DateTime), N'Andy Murray', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10548, N'TOMSP', CAST(N'1997-05-26 00:00:00.000' AS DateTime), CAST(N'1997-06-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Luisenstr. 48', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10549, N'QUICK', CAST(N'1997-05-27 00:00:00.000' AS DateTime), CAST(N'1997-06-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10550, N'GODOS', CAST(N'1997-05-28 00:00:00.000' AS DateTime), CAST(N'1997-06-25 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10551, N'FURIB', CAST(N'1997-05-28 00:00:00.000' AS DateTime), CAST(N'1997-07-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10552, N'HILAA', CAST(N'1997-05-29 00:00:00.000' AS DateTime), CAST(N'1997-06-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10553, N'WARTH', CAST(N'1997-05-30 00:00:00.000' AS DateTime), CAST(N'1997-06-27 00:00:00.000' AS DateTime), N'Andy Murray', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10554, N'OTTIK', CAST(N'1997-05-30 00:00:00.000' AS DateTime), CAST(N'1997-06-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10555, N'SAVEA', CAST(N'1997-06-02 00:00:00.000' AS DateTime), CAST(N'1997-06-30 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10556, N'SIMOB', CAST(N'1997-06-03 00:00:00.000' AS DateTime), CAST(N'1997-07-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10557, N'LEHMS', CAST(N'1997-06-03 00:00:00.000' AS DateTime), CAST(N'1997-06-17 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10558, N'AROUT', CAST(N'1997-06-04 00:00:00.000' AS DateTime), CAST(N'1997-07-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10559, N'BLONP', CAST(N'1997-06-05 00:00:00.000' AS DateTime), CAST(N'1997-07-03 00:00:00.000' AS DateTime), N'Andy Murray', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10560, N'FRANK', CAST(N'1997-06-06 00:00:00.000' AS DateTime), CAST(N'1997-07-04 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10561, N'FOLKO', CAST(N'1997-06-06 00:00:00.000' AS DateTime), CAST(N'1997-07-04 00:00:00.000' AS DateTime), N'Andy Murray', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10562, N'REGGC', CAST(N'1997-06-09 00:00:00.000' AS DateTime), CAST(N'1997-07-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10563, N'RICAR', CAST(N'1997-06-10 00:00:00.000' AS DateTime), CAST(N'1997-07-22 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10564, N'RATTC', CAST(N'1997-06-10 00:00:00.000' AS DateTime), CAST(N'1997-07-08 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10565, N'MEREP', CAST(N'1997-06-11 00:00:00.000' AS DateTime), CAST(N'1997-07-09 00:00:00.000' AS DateTime), N'Andy Murray', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10566, N'BLONP', CAST(N'1997-06-12 00:00:00.000' AS DateTime), CAST(N'1997-07-10 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10567, N'HUNGO', CAST(N'1997-06-12 00:00:00.000' AS DateTime), CAST(N'1997-07-10 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10568, N'GALED', CAST(N'1997-06-13 00:00:00.000' AS DateTime), CAST(N'1997-07-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Rambla de Cataluña, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10569, N'RATTC', CAST(N'1997-06-16 00:00:00.000' AS DateTime), CAST(N'1997-07-14 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10570, N'MEREP', CAST(N'1997-06-17 00:00:00.000' AS DateTime), CAST(N'1997-07-15 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10571, N'ERNSH', CAST(N'1997-06-17 00:00:00.000' AS DateTime), CAST(N'1997-07-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10572, N'BERGS', CAST(N'1997-06-18 00:00:00.000' AS DateTime), CAST(N'1997-07-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10573, N'ANTON', CAST(N'1997-06-19 00:00:00.000' AS DateTime), CAST(N'1997-07-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10574, N'TRAIH', CAST(N'1997-06-19 00:00:00.000' AS DateTime), CAST(N'1997-07-17 00:00:00.000' AS DateTime), N'Roger Federer', N'722 DaVinci Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10575, N'MORGK', CAST(N'1997-06-20 00:00:00.000' AS DateTime), CAST(N'1997-07-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Heerstr. 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10576, N'TORTU', CAST(N'1997-06-23 00:00:00.000' AS DateTime), CAST(N'1997-07-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10577, N'TRAIH', CAST(N'1997-06-23 00:00:00.000' AS DateTime), CAST(N'1997-08-04 00:00:00.000' AS DateTime), N'Andy Murray', N'722 DaVinci Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10578, N'BSBEV', CAST(N'1997-06-24 00:00:00.000' AS DateTime), CAST(N'1997-07-22 00:00:00.000' AS DateTime), N'Roger Federer', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10579, N'LETSS', CAST(N'1997-06-25 00:00:00.000' AS DateTime), CAST(N'1997-07-23 00:00:00.000' AS DateTime), N'Andy Murray', N'87 Polk St. Suite 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10580, N'OTTIK', CAST(N'1997-06-26 00:00:00.000' AS DateTime), CAST(N'1997-07-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10581, N'FAMIA', CAST(N'1997-06-26 00:00:00.000' AS DateTime), CAST(N'1997-07-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10582, N'BLAUS', CAST(N'1997-06-27 00:00:00.000' AS DateTime), CAST(N'1997-07-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10583, N'WARTH', CAST(N'1997-06-30 00:00:00.000' AS DateTime), CAST(N'1997-07-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10584, N'BLONP', CAST(N'1997-06-30 00:00:00.000' AS DateTime), CAST(N'1997-07-28 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10585, N'WELLI', CAST(N'1997-07-01 00:00:00.000' AS DateTime), CAST(N'1997-07-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10586, N'REGGC', CAST(N'1997-07-02 00:00:00.000' AS DateTime), CAST(N'1997-07-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10587, N'QUEDE', CAST(N'1997-07-02 00:00:00.000' AS DateTime), CAST(N'1997-07-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10588, N'QUICK', CAST(N'1997-07-03 00:00:00.000' AS DateTime), CAST(N'1997-07-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10589, N'GREAL', CAST(N'1997-07-04 00:00:00.000' AS DateTime), CAST(N'1997-08-01 00:00:00.000' AS DateTime), N'Andy Murray', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10590, N'MEREP', CAST(N'1997-07-07 00:00:00.000' AS DateTime), CAST(N'1997-08-04 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10591, N'VAFFE', CAST(N'1997-07-07 00:00:00.000' AS DateTime), CAST(N'1997-07-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10592, N'LEHMS', CAST(N'1997-07-08 00:00:00.000' AS DateTime), CAST(N'1997-08-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10593, N'LEHMS', CAST(N'1997-07-09 00:00:00.000' AS DateTime), CAST(N'1997-08-06 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10594, N'OLDWO', CAST(N'1997-07-09 00:00:00.000' AS DateTime), CAST(N'1997-08-06 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10595, N'ERNSH', CAST(N'1997-07-10 00:00:00.000' AS DateTime), CAST(N'1997-08-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10596, N'WHITC', CAST(N'1997-07-11 00:00:00.000' AS DateTime), CAST(N'1997-08-08 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10597, N'PICCO', CAST(N'1997-07-11 00:00:00.000' AS DateTime), CAST(N'1997-08-08 00:00:00.000' AS DateTime), N'Andy Murray', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10598, N'RATTC', CAST(N'1997-07-14 00:00:00.000' AS DateTime), CAST(N'1997-08-11 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10599, N'BSBEV', CAST(N'1997-07-15 00:00:00.000' AS DateTime), CAST(N'1997-08-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10600, N'HUNGC', CAST(N'1997-07-16 00:00:00.000' AS DateTime), CAST(N'1997-08-13 00:00:00.000' AS DateTime), N'Roger Federer', N'City Center Plaza 516 Main St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10601, N'HILAA', CAST(N'1997-07-16 00:00:00.000' AS DateTime), CAST(N'1997-08-27 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10602, N'VAFFE', CAST(N'1997-07-17 00:00:00.000' AS DateTime), CAST(N'1997-08-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10603, N'SAVEA', CAST(N'1997-07-18 00:00:00.000' AS DateTime), CAST(N'1997-08-15 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10604, N'FURIB', CAST(N'1997-07-18 00:00:00.000' AS DateTime), CAST(N'1997-08-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10605, N'MEREP', CAST(N'1997-07-21 00:00:00.000' AS DateTime), CAST(N'1997-08-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10606, N'TRADH', CAST(N'1997-07-22 00:00:00.000' AS DateTime), CAST(N'1997-08-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10607, N'SAVEA', CAST(N'1997-07-22 00:00:00.000' AS DateTime), CAST(N'1997-08-19 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10608, N'TOMSP', CAST(N'1997-07-23 00:00:00.000' AS DateTime), CAST(N'1997-08-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Luisenstr. 48', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10609, N'DUMON', CAST(N'1997-07-24 00:00:00.000' AS DateTime), CAST(N'1997-08-21 00:00:00.000' AS DateTime), N'Andy Murray', N'67, rue des Cinquante Otages', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10610, N'LAMAI', CAST(N'1997-07-25 00:00:00.000' AS DateTime), CAST(N'1997-08-22 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10611, N'WOLZA', CAST(N'1997-07-25 00:00:00.000' AS DateTime), CAST(N'1997-08-22 00:00:00.000' AS DateTime), N'Rafael Nadal', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10612, N'SAVEA', CAST(N'1997-07-28 00:00:00.000' AS DateTime), CAST(N'1997-08-25 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10613, N'HILAA', CAST(N'1997-07-29 00:00:00.000' AS DateTime), CAST(N'1997-08-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10614, N'BLAUS', CAST(N'1997-07-29 00:00:00.000' AS DateTime), CAST(N'1997-08-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10615, N'WILMK', CAST(N'1997-07-30 00:00:00.000' AS DateTime), CAST(N'1997-08-27 00:00:00.000' AS DateTime), N'Andy Murray', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10616, N'GREAL', CAST(N'1997-07-31 00:00:00.000' AS DateTime), CAST(N'1997-08-28 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10617, N'GREAL', CAST(N'1997-07-31 00:00:00.000' AS DateTime), CAST(N'1997-08-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10618, N'MEREP', CAST(N'1997-08-01 00:00:00.000' AS DateTime), CAST(N'1997-09-12 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10619, N'MEREP', CAST(N'1997-08-04 00:00:00.000' AS DateTime), CAST(N'1997-09-01 00:00:00.000' AS DateTime), N'Andy Murray', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10620, N'LAUGB', CAST(N'1997-08-05 00:00:00.000' AS DateTime), CAST(N'1997-09-02 00:00:00.000' AS DateTime), N'Roger Federer', N'2319 Elm St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10621, N'ISLAT', CAST(N'1997-08-05 00:00:00.000' AS DateTime), CAST(N'1997-09-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10622, N'RICAR', CAST(N'1997-08-06 00:00:00.000' AS DateTime), CAST(N'1997-09-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10623, N'FRANK', CAST(N'1997-08-07 00:00:00.000' AS DateTime), CAST(N'1997-09-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10624, N'THECR', CAST(N'1997-08-07 00:00:00.000' AS DateTime), CAST(N'1997-09-04 00:00:00.000' AS DateTime), N'Roger Federer', N'55 Grizzly Peak Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10625, N'ANATR', CAST(N'1997-08-08 00:00:00.000' AS DateTime), CAST(N'1997-09-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Avda. de la Constitución 2222', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10626, N'BERGS', CAST(N'1997-08-11 00:00:00.000' AS DateTime), CAST(N'1997-09-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10627, N'SAVEA', CAST(N'1997-08-11 00:00:00.000' AS DateTime), CAST(N'1997-09-22 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10628, N'BLONP', CAST(N'1997-08-12 00:00:00.000' AS DateTime), CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10629, N'GODOS', CAST(N'1997-08-12 00:00:00.000' AS DateTime), CAST(N'1997-09-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10630, N'KOENE', CAST(N'1997-08-13 00:00:00.000' AS DateTime), CAST(N'1997-09-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10631, N'LAMAI', CAST(N'1997-08-14 00:00:00.000' AS DateTime), CAST(N'1997-09-11 00:00:00.000' AS DateTime), N'Andy Murray', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10632, N'WANDK', CAST(N'1997-08-14 00:00:00.000' AS DateTime), CAST(N'1997-09-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10633, N'ERNSH', CAST(N'1997-08-15 00:00:00.000' AS DateTime), CAST(N'1997-09-12 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10634, N'FOLIG', CAST(N'1997-08-15 00:00:00.000' AS DateTime), CAST(N'1997-09-12 00:00:00.000' AS DateTime), N'Roger Federer', N'184, chaussée de Tournai', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10635, N'MAGAA', CAST(N'1997-08-18 00:00:00.000' AS DateTime), CAST(N'1997-09-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10636, N'WARTH', CAST(N'1997-08-19 00:00:00.000' AS DateTime), CAST(N'1997-09-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10637, N'QUEEN', CAST(N'1997-08-19 00:00:00.000' AS DateTime), CAST(N'1997-09-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10638, N'LINOD', CAST(N'1997-08-20 00:00:00.000' AS DateTime), CAST(N'1997-09-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10639, N'SANTG', CAST(N'1997-08-20 00:00:00.000' AS DateTime), CAST(N'1997-09-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10640, N'WANDK', CAST(N'1997-08-21 00:00:00.000' AS DateTime), CAST(N'1997-09-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10641, N'HILAA', CAST(N'1997-08-22 00:00:00.000' AS DateTime), CAST(N'1997-09-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10642, N'SIMOB', CAST(N'1997-08-22 00:00:00.000' AS DateTime), CAST(N'1997-09-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10643, N'ALFKI', CAST(N'1997-08-25 00:00:00.000' AS DateTime), CAST(N'1997-09-22 00:00:00.000' AS DateTime), N'Andy Murray', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10644, N'WELLI', CAST(N'1997-08-25 00:00:00.000' AS DateTime), CAST(N'1997-09-22 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10645, N'HANAR', CAST(N'1997-08-26 00:00:00.000' AS DateTime), CAST(N'1997-09-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10646, N'HUNGO', CAST(N'1997-08-27 00:00:00.000' AS DateTime), CAST(N'1997-10-08 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10647, N'QUEDE', CAST(N'1997-08-27 00:00:00.000' AS DateTime), CAST(N'1997-09-10 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10648, N'RICAR', CAST(N'1997-08-28 00:00:00.000' AS DateTime), CAST(N'1997-10-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10649, N'MAISD', CAST(N'1997-08-28 00:00:00.000' AS DateTime), CAST(N'1997-09-25 00:00:00.000' AS DateTime), N'Andy Murray', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10650, N'FAMIA', CAST(N'1997-08-29 00:00:00.000' AS DateTime), CAST(N'1997-09-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10651, N'WANDK', CAST(N'1997-09-01 00:00:00.000' AS DateTime), CAST(N'1997-09-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10652, N'GOURL', CAST(N'1997-09-01 00:00:00.000' AS DateTime), CAST(N'1997-09-29 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10653, N'FRANK', CAST(N'1997-09-02 00:00:00.000' AS DateTime), CAST(N'1997-09-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10654, N'BERGS', CAST(N'1997-09-02 00:00:00.000' AS DateTime), CAST(N'1997-09-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10655, N'REGGC', CAST(N'1997-09-03 00:00:00.000' AS DateTime), CAST(N'1997-10-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10656, N'GREAL', CAST(N'1997-09-04 00:00:00.000' AS DateTime), CAST(N'1997-10-02 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10657, N'SAVEA', CAST(N'1997-09-04 00:00:00.000' AS DateTime), CAST(N'1997-10-02 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10658, N'QUICK', CAST(N'1997-09-05 00:00:00.000' AS DateTime), CAST(N'1997-10-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10659, N'QUEEN', CAST(N'1997-09-05 00:00:00.000' AS DateTime), CAST(N'1997-10-03 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10660, N'HUNGC', CAST(N'1997-09-08 00:00:00.000' AS DateTime), CAST(N'1997-10-06 00:00:00.000' AS DateTime), N'Roger Federer', N'City Center Plaza 516 Main St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10661, N'HUNGO', CAST(N'1997-09-09 00:00:00.000' AS DateTime), CAST(N'1997-10-07 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10662, N'LONEP', CAST(N'1997-09-09 00:00:00.000' AS DateTime), CAST(N'1997-10-07 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10663, N'BONAP', CAST(N'1997-09-10 00:00:00.000' AS DateTime), CAST(N'1997-09-24 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10664, N'FURIB', CAST(N'1997-09-10 00:00:00.000' AS DateTime), CAST(N'1997-10-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10665, N'LONEP', CAST(N'1997-09-11 00:00:00.000' AS DateTime), CAST(N'1997-10-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10666, N'RICSU', CAST(N'1997-09-12 00:00:00.000' AS DateTime), CAST(N'1997-10-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10667, N'ERNSH', CAST(N'1997-09-12 00:00:00.000' AS DateTime), CAST(N'1997-10-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10668, N'WANDK', CAST(N'1997-09-15 00:00:00.000' AS DateTime), CAST(N'1997-10-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10669, N'SIMOB', CAST(N'1997-09-15 00:00:00.000' AS DateTime), CAST(N'1997-10-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10670, N'FRANK', CAST(N'1997-09-16 00:00:00.000' AS DateTime), CAST(N'1997-10-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10671, N'FRANR', CAST(N'1997-09-17 00:00:00.000' AS DateTime), CAST(N'1997-10-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'54, rue Royale', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10672, N'BERGS', CAST(N'1997-09-17 00:00:00.000' AS DateTime), CAST(N'1997-10-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10673, N'WILMK', CAST(N'1997-09-18 00:00:00.000' AS DateTime), CAST(N'1997-10-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10674, N'ISLAT', CAST(N'1997-09-18 00:00:00.000' AS DateTime), CAST(N'1997-10-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10675, N'FRANK', CAST(N'1997-09-19 00:00:00.000' AS DateTime), CAST(N'1997-10-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10676, N'TORTU', CAST(N'1997-09-22 00:00:00.000' AS DateTime), CAST(N'1997-10-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10677, N'ANTON', CAST(N'1997-09-22 00:00:00.000' AS DateTime), CAST(N'1997-10-20 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10678, N'SAVEA', CAST(N'1997-09-23 00:00:00.000' AS DateTime), CAST(N'1997-10-21 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10679, N'BLONP', CAST(N'1997-09-23 00:00:00.000' AS DateTime), CAST(N'1997-10-21 00:00:00.000' AS DateTime), N'Andy Murray', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10680, N'OLDWO', CAST(N'1997-09-24 00:00:00.000' AS DateTime), CAST(N'1997-10-22 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10681, N'GREAL', CAST(N'1997-09-25 00:00:00.000' AS DateTime), CAST(N'1997-10-23 00:00:00.000' AS DateTime), N'Andy Murray', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10682, N'ANTON', CAST(N'1997-09-25 00:00:00.000' AS DateTime), CAST(N'1997-10-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10683, N'DUMON', CAST(N'1997-09-26 00:00:00.000' AS DateTime), CAST(N'1997-10-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'67, rue des Cinquante Otages', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10684, N'OTTIK', CAST(N'1997-09-26 00:00:00.000' AS DateTime), CAST(N'1997-10-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10685, N'GOURL', CAST(N'1997-09-29 00:00:00.000' AS DateTime), CAST(N'1997-10-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10686, N'PICCO', CAST(N'1997-09-30 00:00:00.000' AS DateTime), CAST(N'1997-10-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10687, N'HUNGO', CAST(N'1997-09-30 00:00:00.000' AS DateTime), CAST(N'1997-10-28 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10688, N'VAFFE', CAST(N'1997-10-01 00:00:00.000' AS DateTime), CAST(N'1997-10-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10689, N'BERGS', CAST(N'1997-10-01 00:00:00.000' AS DateTime), CAST(N'1997-10-29 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10690, N'HANAR', CAST(N'1997-10-02 00:00:00.000' AS DateTime), CAST(N'1997-10-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10691, N'QUICK', CAST(N'1997-10-03 00:00:00.000' AS DateTime), CAST(N'1997-11-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10692, N'ALFKI', CAST(N'1997-10-03 00:00:00.000' AS DateTime), CAST(N'1997-10-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10693, N'WHITC', CAST(N'1997-10-06 00:00:00.000' AS DateTime), CAST(N'1997-10-20 00:00:00.000' AS DateTime), N'Andy Murray', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10694, N'QUICK', CAST(N'1997-10-06 00:00:00.000' AS DateTime), CAST(N'1997-11-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10695, N'WILMK', CAST(N'1997-10-07 00:00:00.000' AS DateTime), CAST(N'1997-11-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10696, N'WHITC', CAST(N'1997-10-08 00:00:00.000' AS DateTime), CAST(N'1997-11-19 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10697, N'LINOD', CAST(N'1997-10-08 00:00:00.000' AS DateTime), CAST(N'1997-11-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10698, N'ERNSH', CAST(N'1997-10-09 00:00:00.000' AS DateTime), CAST(N'1997-11-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10699, N'MORGK', CAST(N'1997-10-09 00:00:00.000' AS DateTime), CAST(N'1997-11-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Heerstr. 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10700, N'SAVEA', CAST(N'1997-10-10 00:00:00.000' AS DateTime), CAST(N'1997-11-07 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10701, N'HUNGO', CAST(N'1997-10-13 00:00:00.000' AS DateTime), CAST(N'1997-10-27 00:00:00.000' AS DateTime), N'Rafael Nadal', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10702, N'ALFKI', CAST(N'1997-10-13 00:00:00.000' AS DateTime), CAST(N'1997-11-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10703, N'FOLKO', CAST(N'1997-10-14 00:00:00.000' AS DateTime), CAST(N'1997-11-11 00:00:00.000' AS DateTime), N'Andy Murray', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10704, N'QUEEN', CAST(N'1997-10-14 00:00:00.000' AS DateTime), CAST(N'1997-11-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10705, N'HILAA', CAST(N'1997-10-15 00:00:00.000' AS DateTime), CAST(N'1997-11-12 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10706, N'OLDWO', CAST(N'1997-10-16 00:00:00.000' AS DateTime), CAST(N'1997-11-13 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10707, N'AROUT', CAST(N'1997-10-16 00:00:00.000' AS DateTime), CAST(N'1997-10-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10708, N'THEBI', CAST(N'1997-10-17 00:00:00.000' AS DateTime), CAST(N'1997-11-28 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Jefferson Way Suite 2', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10709, N'GOURL', CAST(N'1997-10-17 00:00:00.000' AS DateTime), CAST(N'1997-11-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10710, N'FRANS', CAST(N'1997-10-20 00:00:00.000' AS DateTime), CAST(N'1997-11-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10711, N'SAVEA', CAST(N'1997-10-21 00:00:00.000' AS DateTime), CAST(N'1997-12-02 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10712, N'HUNGO', CAST(N'1997-10-21 00:00:00.000' AS DateTime), CAST(N'1997-11-18 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10713, N'SAVEA', CAST(N'1997-10-22 00:00:00.000' AS DateTime), CAST(N'1997-11-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10714, N'SAVEA', CAST(N'1997-10-22 00:00:00.000' AS DateTime), CAST(N'1997-11-19 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10715, N'BONAP', CAST(N'1997-10-23 00:00:00.000' AS DateTime), CAST(N'1997-11-06 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10716, N'RANCH', CAST(N'1997-10-24 00:00:00.000' AS DateTime), CAST(N'1997-11-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. del Libertador 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10717, N'FRANK', CAST(N'1997-10-24 00:00:00.000' AS DateTime), CAST(N'1997-11-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10718, N'KOENE', CAST(N'1997-10-27 00:00:00.000' AS DateTime), CAST(N'1997-11-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10719, N'LETSS', CAST(N'1997-10-27 00:00:00.000' AS DateTime), CAST(N'1997-11-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'87 Polk St. Suite 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10720, N'QUEDE', CAST(N'1997-10-28 00:00:00.000' AS DateTime), CAST(N'1997-11-11 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10721, N'QUICK', CAST(N'1997-10-29 00:00:00.000' AS DateTime), CAST(N'1997-11-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10722, N'SAVEA', CAST(N'1997-10-29 00:00:00.000' AS DateTime), CAST(N'1997-12-10 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10723, N'WHITC', CAST(N'1997-10-30 00:00:00.000' AS DateTime), CAST(N'1997-11-27 00:00:00.000' AS DateTime), N'Andy Murray', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10724, N'MEREP', CAST(N'1997-10-30 00:00:00.000' AS DateTime), CAST(N'1997-12-11 00:00:00.000' AS DateTime), N'Roger Federer', N'43 rue St. Laurent', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10725, N'FAMIA', CAST(N'1997-10-31 00:00:00.000' AS DateTime), CAST(N'1997-11-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua Orós, 92', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10726, N'EASTC', CAST(N'1997-11-03 00:00:00.000' AS DateTime), CAST(N'1997-11-17 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10727, N'REGGC', CAST(N'1997-11-03 00:00:00.000' AS DateTime), CAST(N'1997-12-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10728, N'QUEEN', CAST(N'1997-11-04 00:00:00.000' AS DateTime), CAST(N'1997-12-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10729, N'LINOD', CAST(N'1997-11-04 00:00:00.000' AS DateTime), CAST(N'1997-12-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10730, N'BONAP', CAST(N'1997-11-05 00:00:00.000' AS DateTime), CAST(N'1997-12-03 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10731, N'CHOPS', CAST(N'1997-11-06 00:00:00.000' AS DateTime), CAST(N'1997-12-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10732, N'BONAP', CAST(N'1997-11-06 00:00:00.000' AS DateTime), CAST(N'1997-12-04 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10733, N'BERGS', CAST(N'1997-11-07 00:00:00.000' AS DateTime), CAST(N'1997-12-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10734, N'GOURL', CAST(N'1997-11-07 00:00:00.000' AS DateTime), CAST(N'1997-12-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10735, N'LETSS', CAST(N'1997-11-10 00:00:00.000' AS DateTime), CAST(N'1997-12-08 00:00:00.000' AS DateTime), N'Andy Murray', N'87 Polk St. Suite 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10736, N'HUNGO', CAST(N'1997-11-11 00:00:00.000' AS DateTime), CAST(N'1997-12-09 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10737, N'VINET', CAST(N'1997-11-11 00:00:00.000' AS DateTime), CAST(N'1997-12-09 00:00:00.000' AS DateTime), N'Rafael Nadal', N'59 rue de l''Abbaye', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10738, N'SPECD', CAST(N'1997-11-12 00:00:00.000' AS DateTime), CAST(N'1997-12-10 00:00:00.000' AS DateTime), N'Roger Federer', N'25, rue Lauriston', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10739, N'VINET', CAST(N'1997-11-12 00:00:00.000' AS DateTime), CAST(N'1997-12-10 00:00:00.000' AS DateTime), N'Andy Murray', N'59 rue de l''Abbaye', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10740, N'WHITC', CAST(N'1997-11-13 00:00:00.000' AS DateTime), CAST(N'1997-12-11 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10741, N'AROUT', CAST(N'1997-11-14 00:00:00.000' AS DateTime), CAST(N'1997-11-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10742, N'BOTTM', CAST(N'1997-11-14 00:00:00.000' AS DateTime), CAST(N'1997-12-12 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10743, N'AROUT', CAST(N'1997-11-17 00:00:00.000' AS DateTime), CAST(N'1997-12-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10744, N'VAFFE', CAST(N'1997-11-17 00:00:00.000' AS DateTime), CAST(N'1997-12-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10745, N'QUICK', CAST(N'1997-11-18 00:00:00.000' AS DateTime), CAST(N'1997-12-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10746, N'CHOPS', CAST(N'1997-11-19 00:00:00.000' AS DateTime), CAST(N'1997-12-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Hauptstr. 31', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10747, N'PICCO', CAST(N'1997-11-19 00:00:00.000' AS DateTime), CAST(N'1997-12-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10748, N'SAVEA', CAST(N'1997-11-20 00:00:00.000' AS DateTime), CAST(N'1997-12-18 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10749, N'ISLAT', CAST(N'1997-11-20 00:00:00.000' AS DateTime), CAST(N'1997-12-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10750, N'WARTH', CAST(N'1997-11-21 00:00:00.000' AS DateTime), CAST(N'1997-12-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10751, N'RICSU', CAST(N'1997-11-24 00:00:00.000' AS DateTime), CAST(N'1997-12-22 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10752, N'NORTS', CAST(N'1997-11-24 00:00:00.000' AS DateTime), CAST(N'1997-12-22 00:00:00.000' AS DateTime), N'Roger Federer', N'South House 300 Queensbridge', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10753, N'FRANS', CAST(N'1997-11-25 00:00:00.000' AS DateTime), CAST(N'1997-12-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10754, N'MAGAA', CAST(N'1997-11-25 00:00:00.000' AS DateTime), CAST(N'1997-12-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10755, N'BONAP', CAST(N'1997-11-26 00:00:00.000' AS DateTime), CAST(N'1997-12-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10756, N'SPLIR', CAST(N'1997-11-27 00:00:00.000' AS DateTime), CAST(N'1997-12-25 00:00:00.000' AS DateTime), N'Roger Federer', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10757, N'SAVEA', CAST(N'1997-11-27 00:00:00.000' AS DateTime), CAST(N'1997-12-25 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10758, N'RICSU', CAST(N'1997-11-28 00:00:00.000' AS DateTime), CAST(N'1997-12-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10759, N'ANATR', CAST(N'1997-11-28 00:00:00.000' AS DateTime), CAST(N'1997-12-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Avda. de la Constitución 2222', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10760, N'MAISD', CAST(N'1997-12-01 00:00:00.000' AS DateTime), CAST(N'1997-12-29 00:00:00.000' AS DateTime), N'Roger Federer', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10761, N'RATTC', CAST(N'1997-12-02 00:00:00.000' AS DateTime), CAST(N'1997-12-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10762, N'FOLKO', CAST(N'1997-12-02 00:00:00.000' AS DateTime), CAST(N'1997-12-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10763, N'FOLIG', CAST(N'1997-12-03 00:00:00.000' AS DateTime), CAST(N'1997-12-31 00:00:00.000' AS DateTime), N'Andy Murray', N'184, chaussée de Tournai', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10764, N'ERNSH', CAST(N'1997-12-03 00:00:00.000' AS DateTime), CAST(N'1997-12-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10765, N'QUICK', CAST(N'1997-12-04 00:00:00.000' AS DateTime), CAST(N'1998-01-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10766, N'OTTIK', CAST(N'1997-12-05 00:00:00.000' AS DateTime), CAST(N'1998-01-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10767, N'SUPRD', CAST(N'1997-12-05 00:00:00.000' AS DateTime), CAST(N'1998-01-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10768, N'AROUT', CAST(N'1997-12-08 00:00:00.000' AS DateTime), CAST(N'1998-01-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10769, N'VAFFE', CAST(N'1997-12-08 00:00:00.000' AS DateTime), CAST(N'1998-01-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10770, N'HANAR', CAST(N'1997-12-09 00:00:00.000' AS DateTime), CAST(N'1998-01-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10771, N'ERNSH', CAST(N'1997-12-10 00:00:00.000' AS DateTime), CAST(N'1998-01-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10772, N'LEHMS', CAST(N'1997-12-10 00:00:00.000' AS DateTime), CAST(N'1998-01-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10773, N'ERNSH', CAST(N'1997-12-11 00:00:00.000' AS DateTime), CAST(N'1998-01-08 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10774, N'FOLKO', CAST(N'1997-12-11 00:00:00.000' AS DateTime), CAST(N'1997-12-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10775, N'THECR', CAST(N'1997-12-12 00:00:00.000' AS DateTime), CAST(N'1998-01-09 00:00:00.000' AS DateTime), N'Andy Murray', N'55 Grizzly Peak Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10776, N'ERNSH', CAST(N'1997-12-15 00:00:00.000' AS DateTime), CAST(N'1998-01-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10777, N'GOURL', CAST(N'1997-12-15 00:00:00.000' AS DateTime), CAST(N'1997-12-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10778, N'BERGS', CAST(N'1997-12-16 00:00:00.000' AS DateTime), CAST(N'1998-01-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10779, N'MORGK', CAST(N'1997-12-16 00:00:00.000' AS DateTime), CAST(N'1998-01-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Heerstr. 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10780, N'LILAS', CAST(N'1997-12-16 00:00:00.000' AS DateTime), CAST(N'1997-12-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10781, N'WARTH', CAST(N'1997-12-17 00:00:00.000' AS DateTime), CAST(N'1998-01-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10782, N'CACTU', CAST(N'1997-12-17 00:00:00.000' AS DateTime), CAST(N'1998-01-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10783, N'HANAR', CAST(N'1997-12-18 00:00:00.000' AS DateTime), CAST(N'1998-01-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10784, N'MAGAA', CAST(N'1997-12-18 00:00:00.000' AS DateTime), CAST(N'1998-01-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10785, N'GROSR', CAST(N'1997-12-18 00:00:00.000' AS DateTime), CAST(N'1998-01-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'5ª Ave. Los Palos Grandes', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10786, N'QUEEN', CAST(N'1997-12-19 00:00:00.000' AS DateTime), CAST(N'1998-01-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10787, N'LAMAI', CAST(N'1997-12-19 00:00:00.000' AS DateTime), CAST(N'1998-01-02 00:00:00.000' AS DateTime), N'Andy Murray', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10788, N'QUICK', CAST(N'1997-12-22 00:00:00.000' AS DateTime), CAST(N'1998-01-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10789, N'FOLIG', CAST(N'1997-12-22 00:00:00.000' AS DateTime), CAST(N'1998-01-19 00:00:00.000' AS DateTime), N'Andy Murray', N'184, chaussée de Tournai', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10790, N'GOURL', CAST(N'1997-12-22 00:00:00.000' AS DateTime), CAST(N'1998-01-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10791, N'FRANK', CAST(N'1997-12-23 00:00:00.000' AS DateTime), CAST(N'1998-01-20 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10792, N'WOLZA', CAST(N'1997-12-23 00:00:00.000' AS DateTime), CAST(N'1998-01-20 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10793, N'AROUT', CAST(N'1997-12-24 00:00:00.000' AS DateTime), CAST(N'1998-01-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10794, N'QUEDE', CAST(N'1997-12-24 00:00:00.000' AS DateTime), CAST(N'1998-01-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10795, N'ERNSH', CAST(N'1997-12-24 00:00:00.000' AS DateTime), CAST(N'1998-01-21 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10796, N'HILAA', CAST(N'1997-12-25 00:00:00.000' AS DateTime), CAST(N'1998-01-22 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10797, N'DRACD', CAST(N'1997-12-25 00:00:00.000' AS DateTime), CAST(N'1998-01-22 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10798, N'ISLAT', CAST(N'1997-12-26 00:00:00.000' AS DateTime), CAST(N'1998-01-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10799, N'KOENE', CAST(N'1997-12-26 00:00:00.000' AS DateTime), CAST(N'1998-02-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10800, N'SEVES', CAST(N'1997-12-26 00:00:00.000' AS DateTime), CAST(N'1998-01-23 00:00:00.000' AS DateTime), N'Roger Federer', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10801, N'BOLID', CAST(N'1997-12-29 00:00:00.000' AS DateTime), CAST(N'1998-01-26 00:00:00.000' AS DateTime), N'Andy Murray', N'C/ Araquil, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10802, N'SIMOB', CAST(N'1997-12-29 00:00:00.000' AS DateTime), CAST(N'1998-01-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10803, N'WELLI', CAST(N'1997-12-30 00:00:00.000' AS DateTime), CAST(N'1998-01-27 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10804, N'SEVES', CAST(N'1997-12-30 00:00:00.000' AS DateTime), CAST(N'1998-01-27 00:00:00.000' AS DateTime), N'Roger Federer', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10805, N'THEBI', CAST(N'1997-12-30 00:00:00.000' AS DateTime), CAST(N'1998-01-27 00:00:00.000' AS DateTime), N'Andy Murray', N'89 Jefferson Way Suite 2', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10806, N'VICTE', CAST(N'1997-12-31 00:00:00.000' AS DateTime), CAST(N'1998-01-28 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10807, N'FRANS', CAST(N'1997-12-31 00:00:00.000' AS DateTime), CAST(N'1998-01-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10808, N'OLDWO', CAST(N'1998-01-01 00:00:00.000' AS DateTime), CAST(N'1998-01-29 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10809, N'WELLI', CAST(N'1998-01-01 00:00:00.000' AS DateTime), CAST(N'1998-01-29 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10810, N'LAUGB', CAST(N'1998-01-01 00:00:00.000' AS DateTime), CAST(N'1998-01-29 00:00:00.000' AS DateTime), N'Roger Federer', N'2319 Elm St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10811, N'LINOD', CAST(N'1998-01-02 00:00:00.000' AS DateTime), CAST(N'1998-01-30 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10812, N'REGGC', CAST(N'1998-01-02 00:00:00.000' AS DateTime), CAST(N'1998-01-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10813, N'RICAR', CAST(N'1998-01-05 00:00:00.000' AS DateTime), CAST(N'1998-02-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10814, N'VICTE', CAST(N'1998-01-05 00:00:00.000' AS DateTime), CAST(N'1998-02-02 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10815, N'SAVEA', CAST(N'1998-01-05 00:00:00.000' AS DateTime), CAST(N'1998-02-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10816, N'GREAL', CAST(N'1998-01-06 00:00:00.000' AS DateTime), CAST(N'1998-02-03 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10817, N'KOENE', CAST(N'1998-01-06 00:00:00.000' AS DateTime), CAST(N'1998-01-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10818, N'MAGAA', CAST(N'1998-01-07 00:00:00.000' AS DateTime), CAST(N'1998-02-04 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10819, N'CACTU', CAST(N'1998-01-07 00:00:00.000' AS DateTime), CAST(N'1998-02-04 00:00:00.000' AS DateTime), N'Andy Murray', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10820, N'RATTC', CAST(N'1998-01-07 00:00:00.000' AS DateTime), CAST(N'1998-02-04 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10821, N'SPLIR', CAST(N'1998-01-08 00:00:00.000' AS DateTime), CAST(N'1998-02-05 00:00:00.000' AS DateTime), N'Rafael Nadal', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10822, N'TRAIH', CAST(N'1998-01-08 00:00:00.000' AS DateTime), CAST(N'1998-02-05 00:00:00.000' AS DateTime), N'Roger Federer', N'722 DaVinci Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10823, N'LILAS', CAST(N'1998-01-09 00:00:00.000' AS DateTime), CAST(N'1998-02-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10824, N'FOLKO', CAST(N'1998-01-09 00:00:00.000' AS DateTime), CAST(N'1998-02-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10825, N'DRACD', CAST(N'1998-01-09 00:00:00.000' AS DateTime), CAST(N'1998-02-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10826, N'BLONP', CAST(N'1998-01-12 00:00:00.000' AS DateTime), CAST(N'1998-02-09 00:00:00.000' AS DateTime), N'Roger Federer', N'24, place Kléber', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10827, N'BONAP', CAST(N'1998-01-12 00:00:00.000' AS DateTime), CAST(N'1998-01-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10828, N'RANCH', CAST(N'1998-01-13 00:00:00.000' AS DateTime), CAST(N'1998-01-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. del Libertador 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10829, N'ISLAT', CAST(N'1998-01-13 00:00:00.000' AS DateTime), CAST(N'1998-02-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10830, N'TRADH', CAST(N'1998-01-13 00:00:00.000' AS DateTime), CAST(N'1998-02-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10831, N'SANTG', CAST(N'1998-01-14 00:00:00.000' AS DateTime), CAST(N'1998-02-11 00:00:00.000' AS DateTime), N'Andy Murray', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10832, N'LAMAI', CAST(N'1998-01-14 00:00:00.000' AS DateTime), CAST(N'1998-02-11 00:00:00.000' AS DateTime), N'Roger Federer', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10833, N'OTTIK', CAST(N'1998-01-15 00:00:00.000' AS DateTime), CAST(N'1998-02-12 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10834, N'TRADH', CAST(N'1998-01-15 00:00:00.000' AS DateTime), CAST(N'1998-02-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10835, N'ALFKI', CAST(N'1998-01-15 00:00:00.000' AS DateTime), CAST(N'1998-02-12 00:00:00.000' AS DateTime), N'Andy Murray', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10836, N'ERNSH', CAST(N'1998-01-16 00:00:00.000' AS DateTime), CAST(N'1998-02-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10837, N'BERGS', CAST(N'1998-01-16 00:00:00.000' AS DateTime), CAST(N'1998-02-13 00:00:00.000' AS DateTime), N'Andy Murray', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10838, N'LINOD', CAST(N'1998-01-19 00:00:00.000' AS DateTime), CAST(N'1998-02-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10839, N'TRADH', CAST(N'1998-01-19 00:00:00.000' AS DateTime), CAST(N'1998-02-16 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Inês de Castro, 414', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10840, N'LINOD', CAST(N'1998-01-19 00:00:00.000' AS DateTime), CAST(N'1998-03-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10841, N'SUPRD', CAST(N'1998-01-20 00:00:00.000' AS DateTime), CAST(N'1998-02-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10842, N'TORTU', CAST(N'1998-01-20 00:00:00.000' AS DateTime), CAST(N'1998-02-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10843, N'VICTE', CAST(N'1998-01-21 00:00:00.000' AS DateTime), CAST(N'1998-02-18 00:00:00.000' AS DateTime), N'Andy Murray', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10844, N'PICCO', CAST(N'1998-01-21 00:00:00.000' AS DateTime), CAST(N'1998-02-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10845, N'QUICK', CAST(N'1998-01-21 00:00:00.000' AS DateTime), CAST(N'1998-02-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10846, N'SUPRD', CAST(N'1998-01-22 00:00:00.000' AS DateTime), CAST(N'1998-03-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10847, N'SAVEA', CAST(N'1998-01-22 00:00:00.000' AS DateTime), CAST(N'1998-02-05 00:00:00.000' AS DateTime), N'Andy Murray', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10848, N'CONSH', CAST(N'1998-01-23 00:00:00.000' AS DateTime), CAST(N'1998-02-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Berkeley Gardens 12  Brewery', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10849, N'KOENE', CAST(N'1998-01-23 00:00:00.000' AS DateTime), CAST(N'1998-02-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10850, N'VICTE', CAST(N'1998-01-23 00:00:00.000' AS DateTime), CAST(N'1998-03-06 00:00:00.000' AS DateTime), N'Roger Federer', N'2, rue du Commerce', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10851, N'RICAR', CAST(N'1998-01-26 00:00:00.000' AS DateTime), CAST(N'1998-02-23 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10852, N'RATTC', CAST(N'1998-01-26 00:00:00.000' AS DateTime), CAST(N'1998-02-09 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10853, N'BLAUS', CAST(N'1998-01-27 00:00:00.000' AS DateTime), CAST(N'1998-02-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10854, N'ERNSH', CAST(N'1998-01-27 00:00:00.000' AS DateTime), CAST(N'1998-02-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10855, N'OLDWO', CAST(N'1998-01-27 00:00:00.000' AS DateTime), CAST(N'1998-02-24 00:00:00.000' AS DateTime), N'Andy Murray', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10856, N'ANTON', CAST(N'1998-01-28 00:00:00.000' AS DateTime), CAST(N'1998-02-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Mataderos  2312', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10857, N'BERGS', CAST(N'1998-01-28 00:00:00.000' AS DateTime), CAST(N'1998-02-25 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10858, N'LACOR', CAST(N'1998-01-29 00:00:00.000' AS DateTime), CAST(N'1998-02-26 00:00:00.000' AS DateTime), N'Roger Federer', N'67, avenue de l''Europe', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10859, N'FRANK', CAST(N'1998-01-29 00:00:00.000' AS DateTime), CAST(N'1998-02-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10860, N'FRANR', CAST(N'1998-01-29 00:00:00.000' AS DateTime), CAST(N'1998-02-26 00:00:00.000' AS DateTime), N'Roger Federer', N'54, rue Royale', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10861, N'WHITC', CAST(N'1998-01-30 00:00:00.000' AS DateTime), CAST(N'1998-02-27 00:00:00.000' AS DateTime), N'Andy Murray', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10862, N'LEHMS', CAST(N'1998-01-30 00:00:00.000' AS DateTime), CAST(N'1998-03-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10863, N'HILAA', CAST(N'1998-02-02 00:00:00.000' AS DateTime), CAST(N'1998-03-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10864, N'AROUT', CAST(N'1998-02-02 00:00:00.000' AS DateTime), CAST(N'1998-03-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10865, N'QUICK', CAST(N'1998-02-02 00:00:00.000' AS DateTime), CAST(N'1998-02-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10866, N'BERGS', CAST(N'1998-02-03 00:00:00.000' AS DateTime), CAST(N'1998-03-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10867, N'LONEP', CAST(N'1998-02-03 00:00:00.000' AS DateTime), CAST(N'1998-03-17 00:00:00.000' AS DateTime), N'Andy Murray', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10868, N'QUEEN', CAST(N'1998-02-04 00:00:00.000' AS DateTime), CAST(N'1998-03-04 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10869, N'SEVES', CAST(N'1998-02-04 00:00:00.000' AS DateTime), CAST(N'1998-03-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'90 Wadhurst Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10870, N'WOLZA', CAST(N'1998-02-04 00:00:00.000' AS DateTime), CAST(N'1998-03-04 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10871, N'BONAP', CAST(N'1998-02-05 00:00:00.000' AS DateTime), CAST(N'1998-03-05 00:00:00.000' AS DateTime), N'Andy Murray', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10872, N'GODOS', CAST(N'1998-02-05 00:00:00.000' AS DateTime), CAST(N'1998-03-05 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10873, N'WILMK', CAST(N'1998-02-06 00:00:00.000' AS DateTime), CAST(N'1998-03-06 00:00:00.000' AS DateTime), N'Andy Murray', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10874, N'GODOS', CAST(N'1998-02-06 00:00:00.000' AS DateTime), CAST(N'1998-03-06 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10875, N'BERGS', CAST(N'1998-02-06 00:00:00.000' AS DateTime), CAST(N'1998-03-06 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10876, N'BONAP', CAST(N'1998-02-09 00:00:00.000' AS DateTime), CAST(N'1998-03-09 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10877, N'RICAR', CAST(N'1998-02-09 00:00:00.000' AS DateTime), CAST(N'1998-03-09 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10878, N'QUICK', CAST(N'1998-02-10 00:00:00.000' AS DateTime), CAST(N'1998-03-10 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10879, N'WILMK', CAST(N'1998-02-10 00:00:00.000' AS DateTime), CAST(N'1998-03-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10880, N'FOLKO', CAST(N'1998-02-10 00:00:00.000' AS DateTime), CAST(N'1998-03-24 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10881, N'CACTU', CAST(N'1998-02-11 00:00:00.000' AS DateTime), CAST(N'1998-03-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10882, N'SAVEA', CAST(N'1998-02-11 00:00:00.000' AS DateTime), CAST(N'1998-03-11 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10883, N'LONEP', CAST(N'1998-02-12 00:00:00.000' AS DateTime), CAST(N'1998-03-12 00:00:00.000' AS DateTime), N'Andy Murray', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10884, N'LETSS', CAST(N'1998-02-12 00:00:00.000' AS DateTime), CAST(N'1998-03-12 00:00:00.000' AS DateTime), N'Roger Federer', N'87 Polk St. Suite 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10885, N'SUPRD', CAST(N'1998-02-12 00:00:00.000' AS DateTime), CAST(N'1998-03-12 00:00:00.000' AS DateTime), N'Andy Murray', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10886, N'HANAR', CAST(N'1998-02-13 00:00:00.000' AS DateTime), CAST(N'1998-03-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10887, N'GALED', CAST(N'1998-02-13 00:00:00.000' AS DateTime), CAST(N'1998-03-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rambla de Cataluña, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10888, N'GODOS', CAST(N'1998-02-16 00:00:00.000' AS DateTime), CAST(N'1998-03-16 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10889, N'RATTC', CAST(N'1998-02-16 00:00:00.000' AS DateTime), CAST(N'1998-03-16 00:00:00.000' AS DateTime), N'Andy Murray', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10890, N'DUMON', CAST(N'1998-02-16 00:00:00.000' AS DateTime), CAST(N'1998-03-16 00:00:00.000' AS DateTime), N'Roger Federer', N'67, rue des Cinquante Otages', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10891, N'LEHMS', CAST(N'1998-02-17 00:00:00.000' AS DateTime), CAST(N'1998-03-17 00:00:00.000' AS DateTime), N'Andy Murray', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10892, N'MAISD', CAST(N'1998-02-17 00:00:00.000' AS DateTime), CAST(N'1998-03-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10893, N'KOENE', CAST(N'1998-02-18 00:00:00.000' AS DateTime), CAST(N'1998-03-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10894, N'SAVEA', CAST(N'1998-02-18 00:00:00.000' AS DateTime), CAST(N'1998-03-18 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10895, N'ERNSH', CAST(N'1998-02-18 00:00:00.000' AS DateTime), CAST(N'1998-03-18 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10896, N'MAISD', CAST(N'1998-02-19 00:00:00.000' AS DateTime), CAST(N'1998-03-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10897, N'HUNGO', CAST(N'1998-02-19 00:00:00.000' AS DateTime), CAST(N'1998-03-19 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10898, N'OCEAN', CAST(N'1998-02-20 00:00:00.000' AS DateTime), CAST(N'1998-03-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Ing. Gustavo Moncada 8585 Piso 20-A', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10899, N'LILAS', CAST(N'1998-02-20 00:00:00.000' AS DateTime), CAST(N'1998-03-20 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10900, N'WELLI', CAST(N'1998-02-20 00:00:00.000' AS DateTime), CAST(N'1998-03-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10901, N'HILAA', CAST(N'1998-02-23 00:00:00.000' AS DateTime), CAST(N'1998-03-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10902, N'FOLKO', CAST(N'1998-02-23 00:00:00.000' AS DateTime), CAST(N'1998-03-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10903, N'HANAR', CAST(N'1998-02-24 00:00:00.000' AS DateTime), CAST(N'1998-03-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10904, N'WHITC', CAST(N'1998-02-24 00:00:00.000' AS DateTime), CAST(N'1998-03-24 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10905, N'WELLI', CAST(N'1998-02-24 00:00:00.000' AS DateTime), CAST(N'1998-03-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10906, N'WOLZA', CAST(N'1998-02-25 00:00:00.000' AS DateTime), CAST(N'1998-03-11 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10907, N'SPECD', CAST(N'1998-02-25 00:00:00.000' AS DateTime), CAST(N'1998-03-25 00:00:00.000' AS DateTime), N'Andy Murray', N'25, rue Lauriston', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10908, N'REGGC', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10909, N'SANTG', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10910, N'WILMK', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10911, N'GODOS', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10912, N'HUNGO', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Roger Federer', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10913, N'QUEEN', CAST(N'1998-02-26 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Andy Murray', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10914, N'QUEEN', CAST(N'1998-02-27 00:00:00.000' AS DateTime), CAST(N'1998-03-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10915, N'TORTU', CAST(N'1998-02-27 00:00:00.000' AS DateTime), CAST(N'1998-03-27 00:00:00.000' AS DateTime), N'Andy Murray', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10916, N'RANCH', CAST(N'1998-02-27 00:00:00.000' AS DateTime), CAST(N'1998-03-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. del Libertador 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10917, N'ROMEY', CAST(N'1998-03-02 00:00:00.000' AS DateTime), CAST(N'1998-03-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Gran Vía, 1', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10918, N'BOTTM', CAST(N'1998-03-02 00:00:00.000' AS DateTime), CAST(N'1998-03-30 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10919, N'LINOD', CAST(N'1998-03-02 00:00:00.000' AS DateTime), CAST(N'1998-03-30 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10920, N'AROUT', CAST(N'1998-03-03 00:00:00.000' AS DateTime), CAST(N'1998-03-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10921, N'VAFFE', CAST(N'1998-03-03 00:00:00.000' AS DateTime), CAST(N'1998-04-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10922, N'HANAR', CAST(N'1998-03-03 00:00:00.000' AS DateTime), CAST(N'1998-03-31 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10923, N'LAMAI', CAST(N'1998-03-03 00:00:00.000' AS DateTime), CAST(N'1998-04-14 00:00:00.000' AS DateTime), N'Rafael Nadal', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10924, N'BERGS', CAST(N'1998-03-04 00:00:00.000' AS DateTime), CAST(N'1998-04-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Berguvsvägen  8', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10925, N'HANAR', CAST(N'1998-03-04 00:00:00.000' AS DateTime), CAST(N'1998-04-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10926, N'ANATR', CAST(N'1998-03-04 00:00:00.000' AS DateTime), CAST(N'1998-04-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Avda. de la Constitución 2222', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10927, N'LACOR', CAST(N'1998-03-05 00:00:00.000' AS DateTime), CAST(N'1998-04-02 00:00:00.000' AS DateTime), N'Andy Murray', N'67, avenue de l''Europe', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10928, N'GALED', CAST(N'1998-03-05 00:00:00.000' AS DateTime), CAST(N'1998-04-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Rambla de Cataluña, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10929, N'FRANK', CAST(N'1998-03-05 00:00:00.000' AS DateTime), CAST(N'1998-04-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10930, N'SUPRD', CAST(N'1998-03-06 00:00:00.000' AS DateTime), CAST(N'1998-04-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10931, N'RICSU', CAST(N'1998-03-06 00:00:00.000' AS DateTime), CAST(N'1998-03-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10932, N'BONAP', CAST(N'1998-03-06 00:00:00.000' AS DateTime), CAST(N'1998-04-03 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10933, N'ISLAT', CAST(N'1998-03-06 00:00:00.000' AS DateTime), CAST(N'1998-04-03 00:00:00.000' AS DateTime), N'Andy Murray', N'Garden House Crowther Way', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10934, N'LEHMS', CAST(N'1998-03-09 00:00:00.000' AS DateTime), CAST(N'1998-04-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10935, N'WELLI', CAST(N'1998-03-09 00:00:00.000' AS DateTime), CAST(N'1998-04-06 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua do Mercado, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10936, N'GREAL', CAST(N'1998-03-09 00:00:00.000' AS DateTime), CAST(N'1998-04-06 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10937, N'CACTU', CAST(N'1998-03-10 00:00:00.000' AS DateTime), CAST(N'1998-03-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10938, N'QUICK', CAST(N'1998-03-10 00:00:00.000' AS DateTime), CAST(N'1998-04-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10939, N'MAGAA', CAST(N'1998-03-10 00:00:00.000' AS DateTime), CAST(N'1998-04-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10940, N'BONAP', CAST(N'1998-03-11 00:00:00.000' AS DateTime), CAST(N'1998-04-08 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10941, N'SAVEA', CAST(N'1998-03-11 00:00:00.000' AS DateTime), CAST(N'1998-04-08 00:00:00.000' AS DateTime), N'Rafael Nadal', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10942, N'REGGC', CAST(N'1998-03-11 00:00:00.000' AS DateTime), CAST(N'1998-04-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10943, N'BSBEV', CAST(N'1998-03-11 00:00:00.000' AS DateTime), CAST(N'1998-04-08 00:00:00.000' AS DateTime), N'Andy Murray', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10944, N'BOTTM', CAST(N'1998-03-12 00:00:00.000' AS DateTime), CAST(N'1998-03-26 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10945, N'MORGK', CAST(N'1998-03-12 00:00:00.000' AS DateTime), CAST(N'1998-04-09 00:00:00.000' AS DateTime), N'Andy Murray', N'Heerstr. 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10946, N'VAFFE', CAST(N'1998-03-12 00:00:00.000' AS DateTime), CAST(N'1998-04-09 00:00:00.000' AS DateTime), N'Roger Federer', N'Smagsloget 45', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10947, N'BSBEV', CAST(N'1998-03-13 00:00:00.000' AS DateTime), CAST(N'1998-04-10 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10948, N'GODOS', CAST(N'1998-03-13 00:00:00.000' AS DateTime), CAST(N'1998-04-10 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10949, N'BOTTM', CAST(N'1998-03-13 00:00:00.000' AS DateTime), CAST(N'1998-04-10 00:00:00.000' AS DateTime), N'Andy Murray', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10950, N'MAGAA', CAST(N'1998-03-16 00:00:00.000' AS DateTime), CAST(N'1998-04-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Ludovico il Moro 22', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10951, N'RICSU', CAST(N'1998-03-16 00:00:00.000' AS DateTime), CAST(N'1998-04-27 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10952, N'ALFKI', CAST(N'1998-03-16 00:00:00.000' AS DateTime), CAST(N'1998-04-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10953, N'AROUT', CAST(N'1998-03-16 00:00:00.000' AS DateTime), CAST(N'1998-03-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10954, N'LINOD', CAST(N'1998-03-17 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10955, N'FOLKO', CAST(N'1998-03-17 00:00:00.000' AS DateTime), CAST(N'1998-04-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10956, N'BLAUS', CAST(N'1998-03-17 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10957, N'HILAA', CAST(N'1998-03-18 00:00:00.000' AS DateTime), CAST(N'1998-04-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10958, N'OCEAN', CAST(N'1998-03-18 00:00:00.000' AS DateTime), CAST(N'1998-04-15 00:00:00.000' AS DateTime), N'Roger Federer', N'Ing. Gustavo Moncada 8585 Piso 20-A', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10959, N'GOURL', CAST(N'1998-03-18 00:00:00.000' AS DateTime), CAST(N'1998-04-29 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10960, N'HILAA', CAST(N'1998-03-19 00:00:00.000' AS DateTime), CAST(N'1998-04-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10961, N'QUEEN', CAST(N'1998-03-19 00:00:00.000' AS DateTime), CAST(N'1998-04-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10962, N'QUICK', CAST(N'1998-03-19 00:00:00.000' AS DateTime), CAST(N'1998-04-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10963, N'FURIB', CAST(N'1998-03-19 00:00:00.000' AS DateTime), CAST(N'1998-04-16 00:00:00.000' AS DateTime), N'Andy Murray', N'Jardim das rosas n. 32', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10964, N'SPECD', CAST(N'1998-03-20 00:00:00.000' AS DateTime), CAST(N'1998-04-17 00:00:00.000' AS DateTime), N'Roger Federer', N'25, rue Lauriston', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10965, N'OLDWO', CAST(N'1998-03-20 00:00:00.000' AS DateTime), CAST(N'1998-04-17 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10966, N'CHOPS', CAST(N'1998-03-20 00:00:00.000' AS DateTime), CAST(N'1998-04-17 00:00:00.000' AS DateTime), N'Roger Federer', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10967, N'TOMSP', CAST(N'1998-03-23 00:00:00.000' AS DateTime), CAST(N'1998-04-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Luisenstr. 48', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10968, N'ERNSH', CAST(N'1998-03-23 00:00:00.000' AS DateTime), CAST(N'1998-04-20 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10969, N'COMMI', CAST(N'1998-03-23 00:00:00.000' AS DateTime), CAST(N'1998-04-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. dos Lusíadas, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10970, N'BOLID', CAST(N'1998-03-24 00:00:00.000' AS DateTime), CAST(N'1998-04-07 00:00:00.000' AS DateTime), N'Roger Federer', N'C/ Araquil, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10971, N'FRANR', CAST(N'1998-03-24 00:00:00.000' AS DateTime), CAST(N'1998-04-21 00:00:00.000' AS DateTime), N'Rafael Nadal', N'54, rue Royale', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10972, N'LACOR', CAST(N'1998-03-24 00:00:00.000' AS DateTime), CAST(N'1998-04-21 00:00:00.000' AS DateTime), N'Roger Federer', N'67, avenue de l''Europe', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10973, N'LACOR', CAST(N'1998-03-24 00:00:00.000' AS DateTime), CAST(N'1998-04-21 00:00:00.000' AS DateTime), N'Andy Murray', N'67, avenue de l''Europe', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10974, N'SPLIR', CAST(N'1998-03-25 00:00:00.000' AS DateTime), CAST(N'1998-04-08 00:00:00.000' AS DateTime), N'Roger Federer', N'P.O. Box 555', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10975, N'BOTTM', CAST(N'1998-03-25 00:00:00.000' AS DateTime), CAST(N'1998-04-22 00:00:00.000' AS DateTime), N'Andy Murray', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10976, N'HILAA', CAST(N'1998-03-25 00:00:00.000' AS DateTime), CAST(N'1998-05-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10977, N'FOLKO', CAST(N'1998-03-26 00:00:00.000' AS DateTime), CAST(N'1998-04-23 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10978, N'MAISD', CAST(N'1998-03-26 00:00:00.000' AS DateTime), CAST(N'1998-04-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10979, N'ERNSH', CAST(N'1998-03-26 00:00:00.000' AS DateTime), CAST(N'1998-04-23 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10980, N'FOLKO', CAST(N'1998-03-27 00:00:00.000' AS DateTime), CAST(N'1998-05-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10981, N'HANAR', CAST(N'1998-03-27 00:00:00.000' AS DateTime), CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10982, N'BOTTM', CAST(N'1998-03-27 00:00:00.000' AS DateTime), CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10983, N'SAVEA', CAST(N'1998-03-27 00:00:00.000' AS DateTime), CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Rafael Nadal', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10984, N'SAVEA', CAST(N'1998-03-30 00:00:00.000' AS DateTime), CAST(N'1998-04-27 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10985, N'HUNGO', CAST(N'1998-03-30 00:00:00.000' AS DateTime), CAST(N'1998-04-27 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10986, N'OCEAN', CAST(N'1998-03-30 00:00:00.000' AS DateTime), CAST(N'1998-04-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Ing. Gustavo Moncada 8585 Piso 20-A', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10987, N'EASTC', CAST(N'1998-03-31 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Andy Murray', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10988, N'RATTC', CAST(N'1998-03-31 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10989, N'QUEDE', CAST(N'1998-03-31 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Rua da Panificadora, 12', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10990, N'ERNSH', CAST(N'1998-04-01 00:00:00.000' AS DateTime), CAST(N'1998-05-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10991, N'QUICK', CAST(N'1998-04-01 00:00:00.000' AS DateTime), CAST(N'1998-04-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10992, N'THEBI', CAST(N'1998-04-01 00:00:00.000' AS DateTime), CAST(N'1998-04-29 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Jefferson Way Suite 2', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10993, N'FOLKO', CAST(N'1998-04-01 00:00:00.000' AS DateTime), CAST(N'1998-04-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10994, N'VAFFE', CAST(N'1998-04-02 00:00:00.000' AS DateTime), CAST(N'1998-04-16 00:00:00.000' AS DateTime), N'Roger Federer', N'Smagsloget 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10995, N'PERIC', CAST(N'1998-04-02 00:00:00.000' AS DateTime), CAST(N'1998-04-30 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10996, N'QUICK', CAST(N'1998-04-02 00:00:00.000' AS DateTime), CAST(N'1998-04-30 00:00:00.000' AS DateTime), N'Roger Federer', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10997, N'LILAS', CAST(N'1998-04-03 00:00:00.000' AS DateTime), CAST(N'1998-05-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10998, N'WOLZA', CAST(N'1998-04-03 00:00:00.000' AS DateTime), CAST(N'1998-04-17 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (10999, N'OTTIK', CAST(N'1998-04-03 00:00:00.000' AS DateTime), CAST(N'1998-05-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11000, N'RATTC', CAST(N'1998-04-06 00:00:00.000' AS DateTime), CAST(N'1998-05-04 00:00:00.000' AS DateTime), N'Roger Federer', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11001, N'FOLKO', CAST(N'1998-04-06 00:00:00.000' AS DateTime), CAST(N'1998-05-04 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11002, N'SAVEA', CAST(N'1998-04-06 00:00:00.000' AS DateTime), CAST(N'1998-05-04 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11003, N'THECR', CAST(N'1998-04-06 00:00:00.000' AS DateTime), CAST(N'1998-05-04 00:00:00.000' AS DateTime), N'Andy Murray', N'55 Grizzly Peak Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11004, N'MAISD', CAST(N'1998-04-07 00:00:00.000' AS DateTime), CAST(N'1998-05-05 00:00:00.000' AS DateTime), N'Roger Federer', N'Rue Joseph-Bens 532', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11005, N'WILMK', CAST(N'1998-04-07 00:00:00.000' AS DateTime), CAST(N'1998-05-05 00:00:00.000' AS DateTime), N'Andy Murray', N'Keskuskatu 45', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11006, N'GREAL', CAST(N'1998-04-07 00:00:00.000' AS DateTime), CAST(N'1998-05-05 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11007, N'PRINI', CAST(N'1998-04-08 00:00:00.000' AS DateTime), CAST(N'1998-05-06 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Estrada da saúde n. 58', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11008, N'ERNSH', CAST(N'1998-04-08 00:00:00.000' AS DateTime), CAST(N'1998-05-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11009, N'GODOS', CAST(N'1998-04-08 00:00:00.000' AS DateTime), CAST(N'1998-05-06 00:00:00.000' AS DateTime), N'Andy Murray', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11010, N'REGGC', CAST(N'1998-04-09 00:00:00.000' AS DateTime), CAST(N'1998-05-07 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11011, N'ALFKI', CAST(N'1998-04-09 00:00:00.000' AS DateTime), CAST(N'1998-05-07 00:00:00.000' AS DateTime), N'Andy Murray', N'Obere Str. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11012, N'FRANK', CAST(N'1998-04-09 00:00:00.000' AS DateTime), CAST(N'1998-04-23 00:00:00.000' AS DateTime), N'Roger Federer', N'Berliner Platz 43', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11013, N'ROMEY', CAST(N'1998-04-09 00:00:00.000' AS DateTime), CAST(N'1998-05-07 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Gran Vía, 1', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11014, N'LINOD', CAST(N'1998-04-10 00:00:00.000' AS DateTime), CAST(N'1998-05-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11015, N'SANTG', CAST(N'1998-04-10 00:00:00.000' AS DateTime), CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Andy Murray', N'Erling Skakkes gate 78', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11016, N'AROUT', CAST(N'1998-04-10 00:00:00.000' AS DateTime), CAST(N'1998-05-08 00:00:00.000' AS DateTime), N'Roger Federer', N'Brook Farm Stratford St. Mary', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11017, N'ERNSH', CAST(N'1998-04-13 00:00:00.000' AS DateTime), CAST(N'1998-05-11 00:00:00.000' AS DateTime), N'Andy Murray', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11018, N'LONEP', CAST(N'1998-04-13 00:00:00.000' AS DateTime), CAST(N'1998-05-11 00:00:00.000' AS DateTime), N'Roger Federer', N'89 Chiaroscuro Rd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11019, N'RANCH', CAST(N'1998-04-13 00:00:00.000' AS DateTime), CAST(N'1998-05-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. del Libertador 900', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11020, N'OTTIK', CAST(N'1998-04-14 00:00:00.000' AS DateTime), CAST(N'1998-05-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Mehrheimerstr. 369', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11021, N'QUICK', CAST(N'1998-04-14 00:00:00.000' AS DateTime), CAST(N'1998-05-12 00:00:00.000' AS DateTime), N'Andy Murray', N'Taucherstraße 10', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11022, N'HANAR', CAST(N'1998-04-14 00:00:00.000' AS DateTime), CAST(N'1998-05-12 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11023, N'BSBEV', CAST(N'1998-04-14 00:00:00.000' AS DateTime), CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Andy Murray', N'Fauntleroy Circus', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11024, N'EASTC', CAST(N'1998-04-15 00:00:00.000' AS DateTime), CAST(N'1998-05-13 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11025, N'WARTH', CAST(N'1998-04-15 00:00:00.000' AS DateTime), CAST(N'1998-05-13 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Torikatu 38', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11026, N'FRANS', CAST(N'1998-04-15 00:00:00.000' AS DateTime), CAST(N'1998-05-13 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11027, N'BOTTM', CAST(N'1998-04-16 00:00:00.000' AS DateTime), CAST(N'1998-05-14 00:00:00.000' AS DateTime), N'Andy Murray', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11028, N'KOENE', CAST(N'1998-04-16 00:00:00.000' AS DateTime), CAST(N'1998-05-14 00:00:00.000' AS DateTime), N'Roger Federer', N'Maubelstr. 90', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11029, N'CHOPS', CAST(N'1998-04-16 00:00:00.000' AS DateTime), CAST(N'1998-05-14 00:00:00.000' AS DateTime), N'Andy Murray', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11030, N'SAVEA', CAST(N'1998-04-17 00:00:00.000' AS DateTime), CAST(N'1998-05-15 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11031, N'SAVEA', CAST(N'1998-04-17 00:00:00.000' AS DateTime), CAST(N'1998-05-15 00:00:00.000' AS DateTime), N'Rafael Nadal', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11032, N'WHITC', CAST(N'1998-04-17 00:00:00.000' AS DateTime), CAST(N'1998-05-15 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11033, N'RICSU', CAST(N'1998-04-17 00:00:00.000' AS DateTime), CAST(N'1998-05-15 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11034, N'OLDWO', CAST(N'1998-04-20 00:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime), N'Roger Federer', N'2743 Bering St.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11035, N'SUPRD', CAST(N'1998-04-20 00:00:00.000' AS DateTime), CAST(N'1998-05-18 00:00:00.000' AS DateTime), N'Andy Murray', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11036, N'DRACD', CAST(N'1998-04-20 00:00:00.000' AS DateTime), CAST(N'1998-05-18 00:00:00.000' AS DateTime), N'Roger Federer', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11037, N'GODOS', CAST(N'1998-04-21 00:00:00.000' AS DateTime), CAST(N'1998-05-19 00:00:00.000' AS DateTime), N'Rafael Nadal', N'C/ Romero, 33', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11038, N'SUPRD', CAST(N'1998-04-21 00:00:00.000' AS DateTime), CAST(N'1998-05-19 00:00:00.000' AS DateTime), N'Roger Federer', N'Boulevard Tirou, 255', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11039, N'LINOD', CAST(N'1998-04-21 00:00:00.000' AS DateTime), CAST(N'1998-05-19 00:00:00.000' AS DateTime), N'Andy Murray', N'Ave. 5 de Mayo Porlamar', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11040, N'GREAL', CAST(N'1998-04-22 00:00:00.000' AS DateTime), CAST(N'1998-05-20 00:00:00.000' AS DateTime), N'Roger Federer', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11041, N'CHOPS', CAST(N'1998-04-22 00:00:00.000' AS DateTime), CAST(N'1998-05-20 00:00:00.000' AS DateTime), N'Andy Murray', N'Hauptstr. 31', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11042, N'COMMI', CAST(N'1998-04-22 00:00:00.000' AS DateTime), CAST(N'1998-05-06 00:00:00.000' AS DateTime), N'Roger Federer', N'Av. dos Lusíadas, 23', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11043, N'SPECD', CAST(N'1998-04-22 00:00:00.000' AS DateTime), CAST(N'1998-05-20 00:00:00.000' AS DateTime), N'Rafael Nadal', N'25, rue Lauriston', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11044, N'WOLZA', CAST(N'1998-04-23 00:00:00.000' AS DateTime), CAST(N'1998-05-21 00:00:00.000' AS DateTime), N'Roger Federer', N'ul. Filtrowa 68', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11045, N'BOTTM', CAST(N'1998-04-23 00:00:00.000' AS DateTime), CAST(N'1998-05-21 00:00:00.000' AS DateTime), N'Andy Murray', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11046, N'WANDK', CAST(N'1998-04-23 00:00:00.000' AS DateTime), CAST(N'1998-05-21 00:00:00.000' AS DateTime), N'Roger Federer', N'Adenauerallee 900', NULL, 0, NULL)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11047, N'EASTC', CAST(N'1998-04-24 00:00:00.000' AS DateTime), CAST(N'1998-05-22 00:00:00.000' AS DateTime), N'Andy Murray', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11048, N'BOTTM', CAST(N'1998-04-24 00:00:00.000' AS DateTime), CAST(N'1998-05-22 00:00:00.000' AS DateTime), N'Roger Federer', N'23 Tsawassen Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11049, N'GOURL', CAST(N'1998-04-24 00:00:00.000' AS DateTime), CAST(N'1998-05-22 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Av. Brasil, 442', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11050, N'FOLKO', CAST(N'1998-04-27 00:00:00.000' AS DateTime), CAST(N'1998-05-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Åkergatan 24', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11051, N'LAMAI', CAST(N'1998-04-27 00:00:00.000' AS DateTime), CAST(N'1998-05-25 00:00:00.000' AS DateTime), N'Andy Murray', N'1 rue Alsace-Lorraine', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11052, N'HANAR', CAST(N'1998-04-27 00:00:00.000' AS DateTime), CAST(N'1998-05-25 00:00:00.000' AS DateTime), N'Roger Federer', N'Rua do Paço, 67', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11053, N'PICCO', CAST(N'1998-04-27 00:00:00.000' AS DateTime), CAST(N'1998-05-25 00:00:00.000' AS DateTime), N'Andy Murray', N'Geislweg 14', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11054, N'CACTU', CAST(N'1998-04-28 00:00:00.000' AS DateTime), CAST(N'1998-05-26 00:00:00.000' AS DateTime), N'Roger Federer', N'Cerrito 333', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11055, N'HILAA', CAST(N'1998-04-28 00:00:00.000' AS DateTime), CAST(N'1998-05-26 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11056, N'EASTC', CAST(N'1998-04-28 00:00:00.000' AS DateTime), CAST(N'1998-05-12 00:00:00.000' AS DateTime), N'Roger Federer', N'35 King George', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11057, N'NORTS', CAST(N'1998-04-29 00:00:00.000' AS DateTime), CAST(N'1998-05-27 00:00:00.000' AS DateTime), N'Andy Murray', N'South House 300 Queensbridge', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11058, N'BLAUS', CAST(N'1998-04-29 00:00:00.000' AS DateTime), CAST(N'1998-05-27 00:00:00.000' AS DateTime), N'Roger Federer', N'Forsterstr. 57', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11059, N'RICAR', CAST(N'1998-04-29 00:00:00.000' AS DateTime), CAST(N'1998-06-10 00:00:00.000' AS DateTime), N'Andy Murray', N'Av. Copacabana, 267', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11060, N'FRANS', CAST(N'1998-04-30 00:00:00.000' AS DateTime), CAST(N'1998-05-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Via Monte Bianco 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11061, N'GREAL', CAST(N'1998-04-30 00:00:00.000' AS DateTime), CAST(N'1998-06-11 00:00:00.000' AS DateTime), N'Rafael Nadal', N'2732 Baker Blvd.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11062, N'REGGC', CAST(N'1998-04-30 00:00:00.000' AS DateTime), CAST(N'1998-05-28 00:00:00.000' AS DateTime), N'Roger Federer', N'Strada Provinciale 124', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11063, N'HUNGO', CAST(N'1998-04-30 00:00:00.000' AS DateTime), CAST(N'1998-05-28 00:00:00.000' AS DateTime), N'Andy Murray', N'8 Johnstown Road', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11064, N'SAVEA', CAST(N'1998-05-01 00:00:00.000' AS DateTime), CAST(N'1998-05-29 00:00:00.000' AS DateTime), N'Roger Federer', N'187 Suffolk Ln.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11065, N'LILAS', CAST(N'1998-05-01 00:00:00.000' AS DateTime), CAST(N'1998-05-29 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11066, N'WHITC', CAST(N'1998-05-01 00:00:00.000' AS DateTime), CAST(N'1998-05-29 00:00:00.000' AS DateTime), N'Roger Federer', N'1029 - 12th Ave. S.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11067, N'DRACD', CAST(N'1998-05-04 00:00:00.000' AS DateTime), CAST(N'1998-05-18 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Walserweg 21', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11068, N'QUEEN', CAST(N'1998-05-04 00:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime), N'Roger Federer', N'Alameda dos Canàrios, 891', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11069, N'TORTU', CAST(N'1998-05-04 00:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime), N'Andy Murray', N'Avda. Azteca 123', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11070, N'LEHMS', CAST(N'1998-05-05 00:00:00.000' AS DateTime), CAST(N'1998-06-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Magazinweg 7', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11071, N'LILAS', CAST(N'1998-05-05 00:00:00.000' AS DateTime), CAST(N'1998-06-02 00:00:00.000' AS DateTime), N'Andy Murray', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11072, N'ERNSH', CAST(N'1998-05-05 00:00:00.000' AS DateTime), CAST(N'1998-06-02 00:00:00.000' AS DateTime), N'Roger Federer', N'Kirchgasse 6', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11073, N'PERIC', CAST(N'1998-05-05 00:00:00.000' AS DateTime), CAST(N'1998-06-02 00:00:00.000' AS DateTime), N'Rafael Nadal', N'Calle Dr. Jorge Cash 321', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11074, N'SIMOB', CAST(N'1998-05-06 00:00:00.000' AS DateTime), CAST(N'1998-06-03 00:00:00.000' AS DateTime), N'Roger Federer', N'Vinbæltet 34', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11075, N'RICSU', CAST(N'1998-05-06 00:00:00.000' AS DateTime), CAST(N'1998-06-03 00:00:00.000' AS DateTime), N'Andy Murray', N'Starenweg 5', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11076, N'BONAP', CAST(N'1998-05-06 00:00:00.000' AS DateTime), CAST(N'1998-06-03 00:00:00.000' AS DateTime), N'Roger Federer', N'12, rue des Bouchers', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11077, N'RATTC', CAST(N'1998-05-06 00:00:00.000' AS DateTime), CAST(N'1998-06-03 00:00:00.000' AS DateTime), N'Andy Murray', N'2817 Milton Dr.', NULL, 0, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11174, N'nnghiem', CAST(N'2014-06-07 00:00:00.000' AS DateTime), CAST(N'2014-06-19 00:00:00.000' AS DateTime), N'Nguyễn Nghiệm', N'105 Bà Huyện Thanh Quan', N'Description', 175.375, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11176, N'nnghiem', CAST(N'2014-07-18 00:00:00.000' AS DateTime), CAST(N'2014-07-23 00:00:00.000' AS DateTime), N'Nguyen Nghiem', N'105 Bà Huyện Thanh Quan, Quận 3', N'qqqqq', 78.25, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11181, N'nnghiem', CAST(N'2014-07-18 00:00:00.000' AS DateTime), CAST(N'2014-07-23 00:00:00.000' AS DateTime), N'Nguyen Nghiem', N'105 Bà Huyện Thanh Quan, Quận 3', N'sfasdfasdfasd', 175.375, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11182, N'nnghiem', CAST(N'2014-07-18 00:00:00.000' AS DateTime), CAST(N'2014-07-18 00:00:00.000' AS DateTime), N'Nguyen Nghiem', N'105 Bà Huyện Thanh Quan, Quận 3', N'ưerqwerqwe', 21.475, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11185, N'nnghiem', CAST(N'2014-07-18 00:00:00.000' AS DateTime), CAST(N'2014-07-23 00:00:00.000' AS DateTime), N'Nguyen Nghiem', N'105 Bà Huyện Thanh Quan, Quận 3', N'fasdfsdfasdf', 98.98, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11186, N'nnghiem', CAST(N'2014-07-21 00:00:00.000' AS DateTime), CAST(N'2014-07-26 00:00:00.000' AS DateTime), N'Nguyen Nghiem', N'105 Bà Huyện Thanh Quan, Quận 3', N'Cần hàng gấp', 229.42, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11187, N'stephanvan1111', CAST(N'2014-10-13 00:00:00.000' AS DateTime), CAST(N'2015-01-01 00:00:00.000' AS DateTime), N'nguyen thanh van', N'stephanvan1111@gmail.com', N'ok', 20, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11190, N'ANTON', CAST(N'2019-10-26 22:57:55.323' AS DateTime), CAST(N'2019-10-30 22:57:55.323' AS DateTime), N'nhi', N'hgt@g.ki', N'fhhjhhj', 30.07, NULL)
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [RequireDate], [Receiver], [Address], [Description], [Amount], [Result]) VALUES (11193, N'yennhi', CAST(N'2019-10-27 00:00:00.000' AS DateTime), CAST(N'2019-01-01 00:00:00.000' AS DateTime), N'nhi', N'123 An Duong Vuong', N'no', 10, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1001, N'Đồng hồ mạ vàng ICE', N'10 boxes x 20 bags', 19000000, N'1001.jpg', CAST(N'2017-03-24 00:00:00.000' AS DateTime), 0, N'ICE chứa đựng tất cả những yếu tố tốt nhất về kiểu dáng thiết kế, chất lượng sản phẩm. Khi nhìn vào mặt đồng hồ ICE, bạn sẽ cảm nhận ngay một sự độc đáo trong từng sản phẩm như thủy tinh Swarovski và đặc biệt là thiết kế của dây đeo.Một trong những điều gây sự chú ý về những chiếc đồng hồ ICE chính là những gam màu sắc sáng rực, tươi sáng và rất sống động, mang lại một cái nhìn tích cực. ', 1000, N'MO', 190, 0.19, 1, 0, 16)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1002, N'Đồng hồ mạ bạc Orient', N'10 boxes x 20 bags', 19500000, N'1002.jpg', CAST(N'2017-12-18 00:00:00.000' AS DateTime), 1, N'Đồng hồ Orient đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ Orient với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ Orient chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 1000, N'AP', 19, 0, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1003, N'Laptop Dell', N'12 - 550 ml bottles', 12350000, N'1003.jpg', CAST(N'2018-06-14 00:00:00.000' AS DateTime), 1, N'mẫu laptop văn phòng với cấu hình khá, pin dùng cực lâu đến 11 tiếng. Thiết kế của máy sang trọng, lại còn gọn nhẹ, dễ dàng di chuyển, phù hợp với giới sinh viên, nhân viên văn phòng phải mang theo laptop hàng ngày.
Vỏ kim loại nguyên khối cao cấp
Thu hút ánh mắt người dùng ngay từ lần đầu tiên, laptop Dell sở hữu bộ khung vỏ kim loại nguyên khối sang trọng, chắc chắn. Một ưu điểm của chiếc máy nữa đó là độ mỏng 16.9 mm và trọng lượng chỉ vỏn vẹn 1.7 kg, người dùng dễ dàng mang theo chiếc máy khi đi học hay đi làm. ', 1001, N'NK', 10, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1004, N'Laptop Acer Switch SW512 52P 34RS ', N'48 - 6 oz jars', 15330000, N'1004.jpg', CAST(N'2019-03-10 00:00:00.000' AS DateTime), 1, N'Laptop Acer Switch SW512 52P 34RS i3 là mẫu laptop 2 trong 1 siêu linh hoạt, có thể chuyển đổi thành máy tính bảng dễ dàng. Bút cảm ứng đi kèm giúp người dùng có thể ghi chú mọi ý tưởng nhanh chóng. Màn hình 2K siêu nét chắc chắn khiến bạn đắm chìm với những hình ảnh chất lượng cao.
Thiết kế 2 trong 1 độc đáo
Laptop Acer Switch SW512 52P 34RS i3 là dạng laptop với phần bàn phím tháo rời. Khi tháo ra trở thành một chiếc máy tính bảng Windows với hiệu suất mạnh mẽ. Khi gắn bàn phím rời vào thì trở thành chiếc laptop siêu gọn nhẹ, di động cho những ai thường xuyên di chuyển.

Phần bàn phím khi gập vào cũng trở thành lớp bao da bảo vệ màn hình máy khỏi trầy xước, va đập. Bàn phím này cũng có sẵn đèn nền tiện lợi.', 1001, N'MO', 22, 0, 0, 0, 10)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1005, N'Panasonic Lumix', N'36 boxes', 11900000, N'1005.jpg', CAST(N'2016-12-06 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Panasonic thuộc dòng máy ảnh chuyên nghiệp và được thiết kế gọn nhẹ, bạn có thể dễ dàng mang theo trong quá trình di chuyển, đi xa và thoải mái chụp ảnh, quay phim trong thời gian dài, máy hạn chế tình trạng mỏi tay. Sản phẩm có vỏ ngoài thiết kế cứng cáp, bền bỉ và báng cầm tay có độ bám, giúp han chế trơn trượt và hỗ trợ cầm nắm chắc chắn khi chụp.', 1002, N'MO', 21, 0, 0, 0, 7)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1006, N'Laptop ASUS A467', N'12 - 8 oz jars', 17890000, N'1006.jpg', CAST(N'2018-09-03 00:00:00.000' AS DateTime), 1, N'Laptop ASUS A467 vừa được ASUS cho ra mắt nhằm hướng tới khách hàng là sinh viên, nhân viên văn phòng, người thường xuyên di chuyển với trọng lượng máy nhẹ và thiết kế hiện đại. Cấu hình máy chạy tốt các ứng dụng văn phòng, cho phản hồi các thao tác kéo thả trong ứng dụng đồ hoạ nhanh chóng.
Thiết kế thời trang, tiện lợi di chuyển
Được hoàn thiện từ chất liệu nhựa, trọng lượng máy chỉ 1.67 kg và mỏng 18.9 mm phù hợp cho việc di chuyển hằng ngày của bạn cùng chiếc máy tính xách tay. Các khớp nối màn hình và thân máy cứng cáp, bo cong nhẹ ở các cạnh tạo sự thanh thoát, hiện đại trong thiết kế.', 1001, N'NK', 25, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1007, N'Nón nỉ xanh', N'12 - 1 lb pkgs.', 30000, N'1007.jpg', CAST(N'2019-03-13 00:00:00.000' AS DateTime), 1, N'Nón với đủ mẫu hình ngộ nghĩnh cho các nàng lựa chọn nhé Size :vòng đầu 58cm , freesize cho cả nam và nữ. Chất liệu: Vải nỉ dày dặn, cứng cáp, được may 1 lớp chính +1 lớp vải lót', 1006, N'AP', 30, 0.03, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1008, N'Laptop ProBook HP ', N'12 - 12 oz jars', 19230000, N'1008.jpg', CAST(N'2019-02-26 00:00:00.000' AS DateTime), 1, N'Thiết kế trên series ProBook của HP luôn được chúng tôi đánh giá cao. Ngay từ cái nhìn đầu tiên về 4540s, chúng tôi đã thực sự bị cuốn hút bởi thiết kế trang trọng, mạnh mẽ của sản phẩm này. Không giống như nhiều nhà sản xuất khác khi chỉ sử dụng chất liệu nhựa trong thiết kế khung vỏ, HP đã khéo léo kết hợp hai chất liệu: nhôm trong thiết kế của nắp và bề mặt thân máy, cùng với chất liệu nhựa trong thiết kế của thân máy. Chất liệu nhôm với bề mặt kiểu vân xước đã mang lại cái nhìn cao cấp hơn trên 4540s, cùng với độ bền lớn hơn cho sản phẩm này. Các góc cạnh của 4540s được vo tròn, mang lại vẻ thanh thoát, nhẹ nhàng hơn so với các thiết kế vuông vắn. Toàn bộ phần thân máy được bao phủ bởi một màu đen của nhựa. Phần đáy của 4540s có thể dễ dàng được tháo ra với thao tác đơn giản, bạn có thể truy cập trực tiếp vào các thành phần phần cứng của máy như RAM, ổ đĩa cứng…
Các kết nối phổ biến đều được HP trang bị cho 4540s. Bạn sẽ nhận được cả cổng USB 2.0 và 3.0 trên sản phẩm này, tuy nhiên thì HP lại không đánh dấu phân biệt các cổng USB 3.0. Kết nối VGA out, HDMI, cổng Ethernet bạn có thể tìm thấy trên cạnh trái của máy. Cạnh trái là sự xuất hiện thưa thớt hơn của các kết nối, với 2 cổng USB 2.0 và ổ ghi DVD. Một đầu đọc thẻ SD cùng với jack tai nghe và micro được tìm thấy trên cạnh trước của máy.
', 1001, N'SM', 40, 0.04, 1, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1009, N'Nhẫn kim cương', N'18 - 500 g pkgs.', 99000000, N'1009.jpg', CAST(N'2018-12-10 00:00:00.000' AS DateTime), 1, N'Khởi đầu hoàn hảo cho cuộc sống lứa đôi Không chỉ là kỷ vật minh chứng cho ngày hạnh phúc thăng hoa và khắc ghi sự khởi đầu hoàn hảo cho cuộc sống lứa đôi, mỗi tuyệt tác trang sức cưới Nhẫn kim cương còn là một câu chuyện gắn kết những giá trị đích thực của tình yêu, niềm hạnh phúc, sự thủy chung son sắt của riêng từng đôi lứa mà PNJ mãi tôn vinh. Thu hút bởi kiểu dáng tinh xảo, hài hoà đến từng đường nét, nhẫn cưới "Chung Đôi" mang đến ấn tượng về sự đồng cảm, sẻ chia.', 1005, N'AP', 98, 0.1, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1010, N'Vali TRIP PP102', N'12 - 200 ml jars', 3500000, N'1010.jpg', CAST(N'2017-03-23 00:00:00.000' AS DateTime), 1, N'Vali TRIP PP102 được làm từ nhựa PP (Polypropylen) loại nhựa chống bể 100%, siêu bền, dẻo, nhẹ có tính năng đàn hồi cao, chịu được lực ép và va đập mạnh, luôn giữ được mà sắc và sáng bóng như mới, hoàn toàn yên tâm không còn lo sợ rơi vỡ hay thời tiết mưa nắng thất thường làm hư hao hành lý bên trong.', 1007, N'MO', 31, 0.03, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1011, N'Mobile Blackberry', N'1 kg pkg.', 4590000, N'1011.jpg', CAST(N'2014-11-28 00:00:00.000' AS DateTime), 1, N'Nếu yêu thích hãng điện thoại BlackBerry và muốn sở hữu một chiếc smartphone Android với bàn phìm vật lý độc đáo, có lẽ BlackBerry KEYone 3GB/32GB là sự lựa chọn hàng đầu của bạn hiện nay.
Thiết kế "không giống ai"
Những chiếc máy của BlackBerry luôn tạo được dấu ấn riêng và với BlackBerry KEYone thì người dùng sẽ có một thiết bị hoàn toàn khác biệt so với những chiếc smartphone còn lại.', 1003, N'AP', 21, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1012, N'Mobile LG Go', N'10 - 500 g pkgs.', 2200000, N'1012.jpg', CAST(N'2011-08-27 00:00:00.000' AS DateTime), 1, N'LG Go là một trong những chiếc smartphone giá rẻ nhất tới từ LG nhưng vẫn mang lại cho bạn một trải nghiệm mượt mà đến "khó tin".
Cấu hình là điểm sáng của máy
Trong tầm giá như LG Go nhiều người sẽ nghĩ tới việc mua một chiếc máy để trải nghiệm Android là chính tuy nhiên những gì mà máy mang lại cho bạn thực sự ngoài sức mong đợi.

Máy sở hữu con chip Qualcomm Snapdragon 425 4 nhân 64-bit "xịn xò" hiếm có trong phân khúc cùng 1 GB RAM. Tất nhiên các tác vụ thường ngày như lướt Facebook hay xem đọc báo thì máy đáp ứng một cách khá đơn giản.', 1003, N'SS', 38, 0.04, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1013, N'Vali du lịch xanh', N'2 kg box', 3100000, N'1013.jpg', CAST(N'2019-07-01 00:00:00.000' AS DateTime), 1, N'Các tính năng chính:
• Ngăn trước đa chức năng và 7 túi phù hợp cho máy tính bảng, PC, máy ảnh hoặc bất kỳ thiết bị điện nào khác, phòng lớn bên trong đủ để sắp xếp đồ đạc của bạn 
• Bánh xe đa năng & tay cầm điều chỉnh, hoàn hảo để xoay 360 độ, không bị gián đoạn tiếng ồn trong khi trong sử dụng, đẩy và kéo trơn tru và nhất quán trong mọi điều kiện của đường
• Khóa kép TSA trên CẢ HAI mặt trước và các ngăn chính giúp kiểm soát cực kỳ dễ dàng và giữ an toàn cho tài sản của bạn trong chuyến công tác 
• Chất liệu PC cao cấp của Bayer và vải oxford, chống nước và chống trầy xước, có thể được sử dụng trong một thời gian dài 
• Thích hợp để lên máy bay hoặc đi du lịch, nhẹ và dễ đẩy
', 1007, N'SM', 6, 0.5, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1014, N'Nón lưỡi trai nam', N'40 - 100 g pkgs.', 45000, N'1014.jpg', CAST(N'2019-06-24 00:00:00.000' AS DateTime), 1, N'Nón Lưỡi Trai chất liệu kaki dày dặn, rất bền, thoáng khí, không phai màu, dễ giặt và dễ bảo quản. Đường may đều, đẹp mắt, tỉ mỉ và chắc chắn. Nón có thể điều chỉnh kích thước tùy theo nhu cầu sử dụng. Có thể dùng cho cả nam và nữ., thấm hút mồ hôi tốt, chất lượng vượt trội mang lại cảm giác thoải mái cho ngườisử dụng. Sản phẩm không tạo cảm giác hầm bí khi đội, không gây kích ứng da và các tác dụng phụ khác. Được thiết kế theo kiểu nónhiện đạivới phần lưỡi trai cong tạo nên sự cuốn hút, thời trang.
Đường may tinh tế, chắc chắn, tỉ mỉ từng đường kim mũi chỉ,không chỉ mang đến độ bền chắclâu dài mà còn mang đến tính thẩm mỹ, tinh tế caoNếu phong cách của bạn là sự trẻ trung, năng động và không hề ngại việc nổi bần bật giữa đám đông thì đây chính là mẫu nón dành cho bạn.Chúng tôi tự hào luônmang đến cho bạn sản phẩm hoàn hảo nhất, độ bền cao nhất, thoải mái và cả sự tự tin với chiếc nón bạn sở hữu.', 1006, N'AP', 23, 0, 0, 0, 8)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1015, N'DELL Vostro 3481 core i3-7020U', N'24 - 250 ml bottles', 16890000, N'1015.jpg', CAST(N'2019-05-04 00:00:00.000' AS DateTime), 1, N'DELL Vostro 3481 core i3-7020U là chiếc laptop có giá tốt trong phân khúc laptop tầm trung, phù hợp với khách hàng là học sinh, sinh viên hay nhân viên văn phòng. Cấu hình laptop Dell bao gồm chip Intel Core i3 Coffee Lake cùng 4 GB RAM cho hiệu năng hoạt động ổn định và mượt mà, ổ cứng HDD 1 TB cho khả năng lưu trữ dữ liệu thoải mái.
Thiết kế thanh lịch, nhỏ gọn
Sở hữu những nét thiết kế đặc trưng của Dell với vẻ ngoài đơn giản và thanh lịch. Laptop được hoàn thiện lớp vỏ chủ yếu từ nhựa, các chi tiết của máy được chế tạo tỉ mỉ, từng góc cạnh được bo tròn tinh tế. Laptop nhỏ gọn với khối lượng chỉ 1.79 kg, rất phù hợp để mang đi học tập và làm việc cả ngày dài.', 1001, N'AP', 15, 0, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1016, N'Nikon EOS M50', N'32 - 500 g boxes', 13800000, N'1016.jpg', CAST(N'2018-11-09 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Nikon EOS M50 được chế tạo bằng lớp vỏ bằng nhựa polycarbonate thay vì vỏ kim loại. M50 với thiết kế độc đáo và đáng ngạc nhiên là an toàn khi sử dụng một tay. Lớp vỏ bọc được thiết kế rắn chắc để sử dụng chống chọi lại bụi và độ ẩm cho hoạt động của máy an toàn hơn trong mọi điều kiện thời tiết khắc nghiệt. Bạn yêu thích du lịch và muốn sở hữu một chiếc máy ảnh cao cấp nhỏ gọn và thời trang để ghi lại những trải nghiệm tuyệt vời thì Canon EOS M50 sẽ là sự lựa chọn lý tưởng.

 Màn hình LCD xoay lật cảm ứng 3 inch và ống ngắm điện tử EVF công nghệ OLED 2.36 triệu điểm ảnh. Do máy khá gọn nhẹ nên bạn có thể tự động lật màn hình ra trước và selfie thoải mái. Trong những điều kiện khác, việc cảm ứng màn hình mang lại những thao tác nhanh và thoải mái hơn so với phải vào trực tiếp menu bên trong. Với ống ngắm EVF nhờ được áp dụng công nghệ OLED có thể cho những khung hình cực sáng và rõ mắt mà độ trễ ảnh gần như bằng 0.', 1002, N'AP', 17, 0, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1017, N'Nhẫn bạc PNJ', N'20 - 1 kg tins', 45000000, N'1017.jpg', CAST(N'2018-12-15 00:00:00.000' AS DateTime), 1, N'PNJSilver là thương hiệu trang sức bạc đứng đầu với nhiều thiết kế và kiểu dáng nữ trang phụ kiện đang được giới trẻ khá yêu thích. Đặc biệt, nhẫn bạc với dãy vòng xếp liền kề nhau đang được các cô nàng trẻ khá ưa chuộng như một “vũ khí lợi hại” giúp các bạn tự tin tỏa sáng cùng bạn bè trong những buổi tiệc họp mặt.
Nhẫn bạc PNJSilver được thiết kế kiểu dáng đơn giản nhưng không kém phần tinh tế với điểm nhấn CZ màu trắng, sáng lấp lánh làm nền tạo điểm nhấn giúp tôn lên vẻ đẹp của đôi tay, gây ấn tượng với nhiều người xung quanh.', 1005, N'AP', 39, 0.04, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1018, N'Vali kéo', N'16 kg pkg.', 2300000, N'1018.jpg', CAST(N'2017-04-13 00:00:00.000' AS DateTime), 1, N'Nét đẹp thể thao độc đáo được thể hiện rõ qua từng đường nét thiết kế của Timo – BST vali kéo vải từ American Tourister.
Trang bị tăng đơ khóa kéo nới rộng ở tất cả các size giúp tăng thể tích chứa hành lý đến 20%.
Nội thất thông minh với công nghệ Tech Wrap: Tỉ lệ khoang chứa với ngăn trước mở tiện dụng cho việc đóng gói hành lý những đồ vật dạng lớn như hộp,... đi kèm với kết cấu nhiều ngăn túi giúp phân loại và quản lý hành lý tối ưu hơn.
Trọng lượng nhẹ: Được làm từ vải Polyester siêu nhẹ, bền, trượt nước được điểm xuyến bằng các lớp nhựa PVC bên ngoài tạo nên thiết kế lạ mắt và trọng lượng nhẹ cho Timo.
Ngăn truy cập nhanh bên ngoài thuận tiện cho việc cơ động cất giữ các loại hành lý thiết yếu.
Khóa 3 số tích hợp khóa TSA bảo vệ an toàn và tiện dụng cho tất cả các chuyến đi trên toàn thế giới.', 1007, N'SM', 64, 0.06, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1019, N'Canon EOS 3000D', N'10 boxes x 12 pieces', 2000000, N'1019.jpg', CAST(N'2019-02-02 00:00:00.000' AS DateTime), 1, N'Máy ảnh Canon EOS 3000D được sản xuất nhằm hướng đến đối tượng người dùng mới tiếp cận DSLR, bên cạnh một mức giá vừa phải cùng nhiều điểm thiết kế thuận tiện để phù hợp với người mới bắt đầu như trang bị tay nắm giúp bạn nắm chắc máy ảnh, ống ngắm quang học giúp bạn bắt được những khoảnh khắc thoáng qua, và một bánh xe chính để điều chỉnh, chuyển đổi nhanh giữa các chức năng giúp người dùng dễ dàng thao tác và cho ra những bức ảnh đẹp mắt. Canon 3000D có lớp vỏ ngoài cứng cáp cùng màu đen cổ điển thanh lịch và sang trọng mang độ thẩm mỹ cao cùng với kích thước gọn nhẹ như những dòng máy ảnh Mirrorless, thuận tiện để đồng hành cùng bạn trên mọi nẻo đường để tạo ra những thước phim, khung hình độc đáo nhất.', 1002, N'AP', 9, 0.5, 0, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1020, N'Nikon Coolpix bạc D5600', N'30 gift boxes', 6900000, N'1020.jpg', CAST(N'2018-11-01 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Nikon D5600 KIT AF-P 18-55 VR với ngoại hình khá gọn nhẹ, tiện dụng cho người dùng mới làm quen với dòng máy ảnh DSLR. Máy trang bị màn hình LCD 3.2 inch 1 triệu điểm ảnh có khả năng xoay lật đa hướng cho góc quan sát toàn cảnh. Màn hình cảm ứng cho khả năng thiết lập các thông số một cách dể dàng. Bên cạnh đó, máy còn được trang bị một viewfinder quang học có độ bao phủ 95% với độ phóng đại 0.82x.', 1002, N'AP', 82, 0.08, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1021, N'Nikon Coolpix xanh D3500 KIT 18-55 VR', N'24 pkgs. x 4 pieces', 4560000, N'1021.jpg', CAST(N'2018-07-29 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Nikon D3500 KIT 18-55 VR không có nhiều khác biệt so với đàn anh tiền nhiệm, nhưng Nikon D3500 lại có kích thước mỏng hơn người tiền nhiệm D3400 tới 5.5mm. D3500 cũng được Nikon khẳng định chỉ nặng 365 gam, ít hơn 30 gam so với Nikon D3400 vốn nặng 395 gam. Nikon D3500 cơ bản là giống với D3400 có hệ thống xử lí ảnh EXPEED, khả năng chụp 5 hình trên giây, dải ISO từ 100-25600, hệ thống lấy nét 11 điểm, khả năng quay FullHD 60fps và màn hình LCD 3-inch 921.000 điểm ảnh… Bên cạnh đó, D3500 giống với hầu hết các dòng DSLR bình dân khác, Nikon D3500 cung cấp đầy đủ các chỉ dẫn chế độ cho người dùng mới. Mặt khác, máy ảnh Nikon D3500 được trang bị cảm biến CMOS định dạng DX 24.2MP và không có bộ lọc low-pass quang học.

', 1002, N'NK', 10, 0, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1022, N'Nước hoa hồng Chanel CoCo Mademoiselle ', N'24 - 500 g pkgs.', 1400000, N'1022.jpg', CAST(N'2018-12-01 00:00:00.000' AS DateTime), 1, N'Nước hoa Coco Mademoiselle, một hương thơm phương Đông hiện đại, tươi mát, gợi cảm và trừu tượng, được tạo nên để đánh thức tinh thần tự do của Coco Chanel. Jacques Helleur, vị giám đốc đầy sáng tạo của Chanel, đã lựa chọn cho Coco Mademoiselle một thiết kế nhiều góc cạnh đã đi vào huyền thoại. Mạnh mẽ và cá tính, vỏ chai được làm trong suốt để lột tả được sự tinh khiết và tươi trẻ của loại nước hoa này.', 1004, N'AP', 21, 0, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1023, N'Doice Gabbana', N'12 - 250 g pkgs.', 900000, N'1023.jpg', CAST(N'2017-08-31 00:00:00.000' AS DateTime), 1, N'Doice giới thiệu nước hoa Doice Gabbana mới, lấy cảm hứng từ sự kết hợp giữa các sản phẩm nước hoa độc đáo nhất của Donatella Versace, nước hoa Doice Gabbana ra đời mang trong mình hương thơm mát dịu của lựu, yuzu cùng mùi hương đầy lãng mạn và gợi tình của mẫu đơn, mộc lan, hoà quyện cùng hương thơm ấm áp của xạ hương và hổ phách.', 1004, N'MO', 9, 0.5, 0, 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1024, N'Đồng hồ Michael Kors MK2747
3', N'12 - 355 ml cans', 32780000, N'1024.jpg', CAST(N'2019-03-13 00:00:00.000' AS DateTime), 1, N'Michael Kors là thương hiệu hàng đầu của Mỹ về mặt hàng phụ kiện thời trang và thể thao cao cấp. Truyền thống của công ty nằm ở việc luôn cho ra đời những sản phẩm tinh xảo, khéo léo đồng thời mang đậm phong cách “jet-set” kiểu Mỹ. Sứ mệnh của thương hiệu Michael Kors là “mang phong cách sống năng động và sang trọng đến với mọi khách hàng trên thế giới”.

Thiết kế tinh tế, trang nhã, phù hợp để các quý cô thể hiện sức hấp dẫn của mình
Đồng hồ nữ Michael Kors MK2747 mang thương hiệu đồng hồ Michael Kors nổi tiếng Mỹ, uy tín và chất lượng.', 1000, N'MO', 4, 0.45, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1025, N'Nikon D7200 Body', N'20 - 450 g glasses', 7880000, N'1025.jpg', CAST(N'2018-07-20 00:00:00.000' AS DateTime), 1, N'Nikon D7200 Body (VIC Nikon) là ngôi sao mới của Nikon định dạng thuộc dòng DX . Mang đến cho bạn tầm nhìn sáng tạo về cuộc sống với hình ảnh và thước phim sắc nét và rõ ràng. Chụp trong gần như bất kỳ ánh sáng từ bình minh cho đến khi hoàng hôn và nắm bắt tất cả mọi thứ từ thể thao và hành động đến động vật hoang dã và những khoảnh khắc hàng ngày. Sau đó chia sẻ những hình ảnh đẹp của bạn dễ dàng hơn bao giờ hết với một thiết bị thông minh tương thích . Cho dù bạn là một nhiếp ảnh gia đam mê quay phim hoặc tìm kiếm một công cụ để đốt cháy sáng tạo của bạn , một người chuyên nghiệp cần một máy ảnh thứ hai để dự phòng hay một người nào đó tìm kiếm một sự pha trộn lý tưởng của tính linh hoạt và thuận tiện, D7200 đã sẵn sàng cho thử thách của bạn.', 1002, N'AP', 14, 0, 0, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1026, N'Nikon D610 (Body)', N'100 - 250 g bags', 9230000, N'1026.jpg', CAST(N'2019-04-17 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Nikon D610 có kiểu dáng nhỏ gọn rất thích hợp cho những chuyến du ngoạn dài ngày và cho việc chụp cầm tay mở rộng. Thân máy được làm từ  hợp kim magiê và khả năng chịu thời tiết cao giúp dòng máy này ổn định hơn khi sử dụng ngoài trời. Phạm vi độ nhạy sáng rộng ISO100 đến 6400 (có thể mở rộng từ ISO50 đến ISO25,600) đảm bảo chất lượng hình ảnh tuyệt vời dưới bất kỳ điều kiện ánh sáng nào. Với tốc độ chụp liên tục 6 fps với full độ phân giải, bạn sẽ luôn chụp được khoảnh khắc hoàn hảo. Nikon D610 cho bạn dễ dàng nắm bắt những hình ảnh thú vị, độc đáo của những đối tượng xung quanh.', 1002, N'NK', 32, 0.03, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1027, N'Nikon Coolpix P900', N'100 - 100 g pieces', 8750000, N'1027.jpg', CAST(N'2018-01-14 00:00:00.000' AS DateTime), 1, N'Nikon Coolpix P900 với kiểu dáng giống như một chiếc máy ảnh DSLR, P900 có trọng lượng chỉ khoảng 899g (kể cả pin và thẻ nhớ SD). Tay nắm máy được thiết kế để mang lại đủ diện tích tiếp xúc khi cầm máy cùng với một nút nhả cửa trập có độ nghiêng vừa phải để cầm máy dễ dàng. P900 được trang bị Pin Sạc Li-ion EN-EL23, với tuổi thọ pin được nâng cao đáng kể và thời gian sạc được giảm xuống, mất ít thời gian sạc hơn mà lại chụp được lâu hơn.

Không đơn thuần chỉ là các bức ảnh
Tạo ra các thước phim Full HD sống động và sắc nét bằng chế độ quay phim ở định dạng 1080/60p với âm thanh stereo. Máy ảnh Nikon P900 được trang bị điều khiển thu phóng bên cạnh để giảm thiểu sự lắc máy ảnh và một micrô thu phóng có khả năng thay đổi định hướng ghi âm tùy theo vị trí mà bạn đang thu phóng, nên các thước phim cũng sẽ có âm thanh rất tuyệt vời. Chức năng Phim Rút ngắn thời gian tạo ra các thước phim 10 giây từ những bức ảnh tĩnh chụp được ở những khoảng thời gian khác nhau. Bằng cách chọn một cảnh chụp như cảnh thành phố, hoàng hôn hoặc vệt sáng ngôi sao, máy ảnh sẽ làm mọi công việc thay cho bạn vì chức năng Rút ngắn thời gian sẽ tự động lựa chọn quãng thời gian phù hợp cần thiết để tạo ra thước phim mà bạn mong muốn.', 1002, N'AP', 45, 0.04, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1028, N'Nón lưỡi trai cam', N'25 - 825 g cans', 50000, N'1028.jpg', CAST(N'2019-01-14 00:00:00.000' AS DateTime), 1, N'PHÂN LOẠI: Nón Lưỡi Trai/ Nón Kết
- DÀNH CHO: Nam/Nữ
- PHONG CÁCH: Bụi bặm - Cá tính - Độc Đáo. Nón KẾTchắc chắn là một phụ kiện thời trang đi kèm không thể thiếu cho bạn trẻ năng động, mạnh mẽ.
*Sản phẩm đẹp như hình. Giá thành cạnh tranh nhất thị trường.
---
CÁCH BẢO QUẢN:
- Các bạn KHÔNG cho sản phẩm vào máy giặt, khi chà rửa chỉ nên dùng bàn chải nhỏ chà nhẹ nhàng. (Sử dụng bột giặt, nước giặt)
- Không ngâm nước xả, không dùng thuốc tẩy!', 1006, N'AP', 47, 0.05, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1029, N'Nhẫn PNJ Silver', N'50 bags x 30 sausgs.', 78900000, N'1029.jpg', CAST(N'2019-12-21 00:00:00.000' AS DateTime), 1, N'Chiếc nhẫn bạc nằm trong BST Fantasia với nét cá tính đầy ấn tượng được thiết kế mang hơi hướng hiện đại kết hợp các màu sắc của đá CZ tạo nên vẻ đẹp trẻ trung và thời thượng. Nàng có thể tự sáng tạo và làm mới cho mình một phong cách trang sức hoàn toàn mới, biến mình thành tâm điểm trong mắt người thương.', 1005, N'SS', 127, 0.12, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1030, N'Vali OPLus', N'10 - 200 g glasses', 790000, N'1030.jpg', CAST(N'2018-05-14 00:00:00.000' AS DateTime), 1, N'Nét đẹp thể thao độc đáo được thể hiện rõ qua từng đường nét thiết kế của Timo – BST vali kéo vải từ American Tourister.
Trang bị tăng đơ khóa kéo nới rộng ở tất cả các size giúp tăng thể tích chứa hành lý đến 20%.
Nội thất thông minh với công nghệ Tech Wrap: Tỉ lệ khoang chứa với ngăn trước mở tiện dụng cho việc đóng gói hành lý những đồ vật dạng lớn như hộp,... đi kèm với kết cấu nhiều ngăn túi giúp phân loại và quản lý hành lý tối ưu hơn.
Trọng lượng nhẹ: Được làm từ vải Polyester siêu nhẹ, bền, trượt nước được điểm xuyến bằng các lớp nhựa PVC bên ngoài tạo nên thiết kế lạ mắt và trọng lượng nhẹ cho Timo.
Ngăn truy cập nhanh bên ngoài thuận tiện cho việc cơ động cất giữ các loại hành lý thiết yếu.
Khóa 3 số tích hợp khóa TSA bảo vệ an toàn và tiện dụng cho tất cả các chuyến đi trên toàn thế giới.', 1007, N'SS', 26, 0.03, 1, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1031, N'Mobile Black A222', N'12 - 100 g pkgs', 2400000, N'1031.jpg', CAST(N'2019-10-30 00:00:00.000' AS DateTime), 1, N'Mobile Black A222 là một trong những chiếc smartphone có mức giá rẻ nhất mà bạn có thể sở hữu nhưng vẫn sở hữu cho mình những trang bị để người dùng có thể trải nghiệm Android một cách mượt mà.
Hiệu năng tốt trong phân khúc
So với những đối thủ trong phân khúc thì Mobile Black A222 vẫn được nhiều người tin dùng về mặt cấu hình. Cung cấp sức mạnh cho máy là con chip Qualcomm Snapdragon 439 8 nhân 64-bit cùng với đó là 2 GB RAM và 16 GB bộ nhớ trong.', 1003, N'NK', 12, 0, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1032, N'Nokia 210', N'24 - 200 g pkgs.', 2200000, N'1032.jpg', CAST(N'2018-07-30 00:00:00.000' AS DateTime), 1, N'Đặc điểm nổi bật của Nokia 210

Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn

Mang đến MWC 2019 ngoài những chiếc smartphone hấp dẫn Nokia còn trình làng chiếc điện thoại phím Nokia 210 dành cho những người thích sử dụng thiết bị nghe, gọi đơn giản.
Thiết kế nhỏ gọn tinh tế
Chiếc điện thoại Nokia 210 có thiết kế nhỏ gọn với hai đường cong ở hai bên thân máy cho cảm giác thoải mái khi sử dụng. Đây là một chiếc điện thoại có thiết kế đẹp, tối giản, phù hợp để trở thành chiếc điện thoại phụ trong cuộc sống số bây giờ. 

Mặt trước của máy là màn hình kích thước 2.4 inch và bộ bàn phím làm bằng nhựa liền mạch cho cảm giác chắc chắn.', 1003, N'SS', 33, 0.03, 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1033, N'Samsung A5', N'500 g', 5900000, N'1033.png', CAST(N'2018-04-29 00:00:00.000' AS DateTime), 1, N'Samsung A5 - chiếc smartphone rẻ nhất ở dòng A của Samsung sở hữu nhiều đặc điểm ưu việt về thiết kế màn hình và hiệu năng với chip Exynos 7884.
Thiết kế màn hình Infinity-V
Samsung A5 có thiết kế bo tròn với màn hình tràn viền kiểu "giọt nước" kiểu mới mà Samsung gọi đó là Infinity-V. Kiểu thiết kế này trông khá dễ thương và cho tỉ lệ hiển thị màn hình được đạt tối đa.
Hiệu năng ổn định
Samsung A5 được trang bị con chip Exynos 7884 "cây nhà lá vườn" của Samsung đủ cho máy có độ ổn định tốt trong các tác vụ hằng ngày của bạn như lướt web, chơi game nhẹ, xem phim,...', 1003, N'SS', 2, 0.25, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1034, N'Đồng hồ nam Fossil ES4364', N'24 - 12 oz bottles', 4300000, N'1034.jpg', CAST(N'2019-07-30 00:00:00.000' AS DateTime), 1, N'Lấy cảm hứng từ vẻ đẹp cổ điển ở các tạp chí thời trang thuộc những năm 1930 – 1950, những mẫu thiết kế đồng hồ tinh tế đầy nét hoài cổ đã được đông đảo người dùng đón nhận. Không phải là xưa cũ, giá trị mà Fossil chọn để tạo dựng thương hiệu cho mình chính là sự vững chắc. Từ những thiết kế “retro” cho đồng hồ, họ tin rằng những sản phẩm “thời gian” đó sẽ không bao giờ có dấu hiệu thoái trào. Nói một cách đơn giản, đó là lời cam kết giữa thiết kế trường tồn và chất lượng bền bỉ.

Hướng đến vẻ sang trọng và tinh tế, đồng hồ phù hợp cho các bạn nam thích sự đơn giản nhưng vẫn có điểm nhấn nổi bật.
Đồng hồ nam Fossil ES4364 đến từ thương hiệu đồng hồ Fossil uy tín và lâu đời của Mỹ.
Đồng hồ Fossil nam có kết cấu mặt kính đảm bảo độ bền và sáng bóng. Khung viền chống ăn mòn rất tốt
Với hệ số chống nước 3 ATM,  an toàn khi bạn đi mưa hoặc rửa tay. Lưu ý không mang khi tắm', 1000, N'AP', 14, 0, 0, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1035, N'Đồng hồ nam Orient RA-AG0027Y10B', N'24 - 12 oz bottles', 7530000, N'1035.jpg', CAST(N'2018-04-25 00:00:00.000' AS DateTime), 1, N'Đồng hồ nam Orient RA-AG0027Y10B - Cơ tự động đến từ thương hiệu đồng hồ Orient nổi tiếng Nhật Bản.
Đồng hồ cơ tự động (máy Automatic) tự lên dây cót, không cần dùng pin, hiệu suất cao.
Mặt kính bền bỉ, chắc chắn, hạn chế trầy xước khi có va chạm vừa phải, khung viền cứng cáp, chống oxi hóa, chống ăn mòn hiệu quả.
Hệ số chống nước 1 ATM, đeo được khi rửa tay, không mang đồng hồ Orient nam khi đi mưa, tắm, bơi, lặn.
Đồng hồ nam có dây nhẹ nhàng, chống trầy xước tốt, cho cảm giác mát tay khi đeo.
', 1000, N'MO', 18, 0, 0, 1, 6)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1036, N'Túi vải đựng đen', N'24 - 250 g  jars', 570000, N'1036.jpg', CAST(N'2017-11-28 00:00:00.000' AS DateTime), 1, N'Thiết kế thời trang
Chất liệu cao cấp
Kiểu dáng đa phong cách
Đường may tinh tế sắc sảo
Ngăn chứa tiện lợiNote : Một số chi tiết sản phẩm có thể sẽ được thay đổi tùy vào đợt sản xuất
THÔNG TIN SẢN PHẨM

Đặc điểm nổi bật

- Kích thước 48cm x 26cm x 25cm  rộng rãi

Sản phẩm có kích thước 48cm x 26cm x 25cm rộng rãi, được chia làm nhiều ngăn tiện lợi. Có các ngăn lớn  để đựng các vật dụng cần thiết và nhiều ngăn nhỏ để đựng giấy tờ, tiền, ví… tiện dùng khi đi du lịch, công tác…

', 1007, N'MO', 19, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1037, N'Vali TRIP P13 SIZE 20INCH', N'12 - 500 g pkgs.', 1800000, N'1037.jpg', CAST(N'2018-08-31 00:00:00.000' AS DateTime), 1, N'Trọng lượng 2.5kg. Kích thước 20inch (50cm x 35cm x 21cm), cỡ nhỏ vừa đúng chuẩn kích thước có thể xách tay lên máy bay, đựng 7kg đến 10kg hành lý.
Vali TRIP P13 được làm từ nhựa PC (Polycarbonate) kết hợp ABS siêu bền, dẻo, nhẹ có tính năng đàn hồi cao, chịu được lực ép và va đập mạnh, luôn giữ được mà sắc và sáng bóng như mới, hoàn toàn yên tâm không còn lo sợ rơi vỡ hay thời tiết mưa nắng thất thường làm hư hao hành lý bên trong.', 1007, N'MO', 27, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1038, N'Đồng hồ Nam G-shock GA-100-1A1DR', N'12 - 75 cl bottles', 360000, N'1038.jpg', CAST(N'2018-07-12 00:00:00.000' AS DateTime), 1, N'Đồng hồ G-Shock GA-100-1A1DR là chiếc đồng hồ nam thuộc dòng G-Shock của hãng Casio nổi tiếng và uy tín tại Nhật Bản.

Bảo vệ an toàn các chi tiết bên trong nhờ bộ khung bền bỉ, chống sốc hiệu quả
- Mặt kính có độ trong suốt cao, độ cứng khá, ít nứt vỡ khi bị va đập.

- Khung viền cứng cáp, chắc chắn, hạn chế hư hỏng khi rơi ở độ cao 10m.

Hệ số chống nước 20 ATM, thoải mái đeo đồng hồ G-Shock khi bơi, lặn
Lưu ý: Không bấm các nút điều khiển khi bơi, lặn.

Chức năng bấm giờ đếm ngược với khoảng đếm ngược lên đến 24 giờ
Được trang bị báo thức giúp bạn chủ động hơn về thời gian
Đồng hồ có lịch ngày, lịch thứ và lịch tháng, dễ dàng quan sát giờ với đồng hồ định dạng 24 giờ
Tích hợp đồng hồ bấm giờ hỗ trợ người dùng tập luyện thể thao tốt hơn
Đèn led cực sáng giúp bạn dễ dàng xem giờ trong bóng tối
Dây đồng hồ G-Shock nam nhẹ nhàng, thiết kế đục lỗ cho cảm giác thông thoáng khi đeo', 1000, N'SS', 273, 0.26, 1, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1039, N'Đồng hồ Nữ Michael Kors MK3298', N'750 cc per bottle', 15930000, N'1039.jpg', CAST(N'2018-04-08 00:00:00.000' AS DateTime), 1, N'Lớp vỏ đồng hồ cứng cáp, chắc chắn giúp bảo vệ phần lõi bên trong an toàn
- Mặt kính có độ cứng khá, hạn chế trầy xước khi có va chạm vừa phải.

- Khung viền bền bỉ, chịu lực tốt, dễ lau chùi, vệ sinh. Yên tâm đeo khi tắm, đi mưa vì đồng hồ nữ có hệ số chống nước 5 ATM, không mang khi bơi, lặn. Dây đồng hồ Michael Kors nữ chống oxi hóa, chịu được mọi thời tiết khắc nghiệt', 1000, N'SM', 18, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1040, N'Vali vải American Tourister 86O', N'24 - 4 oz tins', 4500000, N'1040.jpg', CAST(N'2019-12-08 00:00:00.000' AS DateTime), 1, N'- Chất liệu Polyester cao cấp
- Thiết kế các ngăn tiện dụng
- Bộ sưu tập vali thích hợp cho doanh nhân
- Túi đựng giày, đựng đồ cá nhân tiện dụng có thể tháo rời
- Khả năng mở rộng ở cả 3 size
- Hệ thống bánh xe đôi xoay đa chiều
- Khóa TSA an ninh chuẩn Hoa Kỳ
- Size 55cm có ngăn chứa laptop/ipad chuyên dụng
- Size 67cm & 79cm tích hợp thêm túi móc cho áo vest
- Thương hiệu Mỹ, gia công chính hãng tại Trung Quốc
- Sản phẩm được bảo hành quốc tế 03 năm
- Kích thước: 44 x 30/32.5 x 68 cm
- Trọng lượng: 3,2 kg
- Dung tích: 68/75 Lít
- Size: Trung (24 inch)', 1007, N'SS', 19, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1041, N'Vali siêu nhẹ American Tourister Sky TSA', N'12 - 12 oz cans', 3700000, N'1041.jpg', CAST(N'2018-09-10 00:00:00.000' AS DateTime), 1, N'Chất liệu: vải dù
Bảo hành quốc tế: Sản phẩm bảo hành trong 60 tháng bằng hình thức Phiếu bảo hành
Với thiết kế và công nghệ đổi mới, công nghệ Ultra-Light-Tech dựa trên khái niệm đơn giản: một chiếc túi xách siêu nhẹ & hơn thế nữa! BST vali kéo Sky của American Tourister đã mang đến kiểu dáng thiết kế đẹp với nhiều năng năng vượt trội, với hệ thống bánh xe 360 độ, khóa số tích hợp TSA và ngăn mở rộng dung tích. Bao gồm các size 55cm, 68cm, 82cm màu đen với điểm nhấn màu đỏ, màu tím với điểm nhấn màu xám, xám với các điểm nhấn màu xanh lá cây.
- Hệ thống 4 bánh xe 360 độ linh hoạt.
- Khóa số TSA an toàn & tiện lợi.
- Có ngăn mở rộng dung tích chứa đồ.
- Các túi bên ngoài với khóa kéo, tiện lợi chứa các phụ kiện du lịch.
- Thiết kế siêu nhẹ tối ưu.', 1007, N'SM', 10, 0.5, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1042, N'Nước hoa nữ Cooc Mademoiselle Chanele', N'32 - 1 kg pkgs.', 9800000, N'1042.jpg', CAST(N'2019-11-21 00:00:00.000' AS DateTime), 1, N'Nước hoa nữ Cooc Mademoiselle Chanele được thiết kế cho những người phụ nữ hiện đại phóng khoáng nhưng không thiếu phần nữ tính đầy quyến rũ. Hương nước hoa thơm lâu, nhẹ nhàng của Cooc Mademoiselle Chanele là bieeyr hiện cho một xíu nét nữ tính, một hương thơm sinh động, tươi mát và phức cảm mạng lại thêm sự tự tin và quyến rũ cho phái nữ. ', 1004, N'MO', 14, 0, 0, 0, 11)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1043, N'Đồng hồ nam Fossil ES3843', N'16 - 500 g tins', 14000000, N'1043.jpg', CAST(N'2019-03-20 00:00:00.000' AS DateTime), 1, N'Chiếc đồng hồ Fossil có mặt kính trong suốt, khó bị phá vỡ, hạn chế trầy xước khi bị va đập
Khung viền cứng cáp, chống oxi hoá, chịu được mọi thời tiết khác nhau.
Hệ số chống nước 3 ATM, đeo được khi đi mưa và rửa tay, không nên đeo đồng hồ khi tắm rửa và bơi lội.
Có lịch ngày tiện ích giúp bạn dễ dàng quản lý ngày và giờ.
Dây đeo chiếc đồng hồ nam chắc chắn, thích hợp nhiều kích cỡ cổ tay, đảm bảo tính thẩm mĩ.', 1000, N'SS', 47, 0.05, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1044, N'Laptop Acer Aspire A514', N'20 - 2 kg bags', 21400000, N'1044.jpg', CAST(N'2018-10-25 00:00:00.000' AS DateTime), 1, N'Laptop Acer Aspire A514 i3 (NX.HMHSV.001) được thiết kế mỏng nhẹ phù hợp với giới trẻ, đặc biệt là các bạn học sinh sinh viên cần di chuyển nhiều. Máy sử dụng con chip Intel thế hệ thứ 10 hiện đại, ổ cứng SSD khởi động cực nhanh, màn hình Full HD góc nhìn siêu rộng đem đến những trải nghiệm tuyệt vời. 
Mỏng nhẹ, sang trọng
Acer Aspire A514 có thiết kế mang phong cách sang trọng, tinh tế với nắp lưng kim loại. Máy mỏng nhẹ chỉ 1.5 kg - 17.95 mm thuận tiện cho người dùng đem theo đến bất cứ đâu. ', 1001, N'SS', 20, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1045, N'Vali kéo vải Cosas United Navy', N'1k pkg.', 3200000, N'1045.jpg', CAST(N'2018-09-21 00:00:00.000' AS DateTime), 1, N'Vali kéo du lịch vải mềm cao cấp Cosas United Navy sử dụng thành phần 100% Polyamide không thấm nước, thiết kế khóa zip U-shape hạt to gấp 3 lần so với các loại vali vải khóa kéo khác giúp chống trộm bảo vệ hành lý tốt hơn. Vali vải du lịch cao cấp thương hiệu Anh quốc sang trọng thích hợp chuyến đi du lịch hay công tác trong nước hay nước ngoài. Vali vải Cosas-United thiết kế nội thất bằng chất liệu vải 2 lớp dùng bền, nhiều ngăn tiện dụng. Đặc biệt bộ 4 bánh xe to khỏe xoay 360 độ đa hướng ziczac trơn tru di chuyển nhẹ nhàng. Vali có cần kéo bằng hợp kim cứng, dùng lâu không gỉ, chịu được tải trọng nặng. Vali vải được bảo vệ bằng ổ khóa padlock mật mã 3 số an toàn.

- Kích thước: 330 x 230 x 500 mm (Chưa tính bánh xe). Trọng lượng: ~ 2.7Kg Hành lý xách tay được mang lên máy bay.', 1007, N'MO', 9, 0.5, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1046, N'Vali kẻ sọc Cosas United', N'4 - 450 g glasses', 2900000, N'1046.jpg', CAST(N'2018-06-23 00:00:00.000' AS DateTime), 1, N'Vali kéo du lịch vải dù cao cấp Cosas United Lightweight Black size 24 màu đen tuyền chất liệu vải Oxford Polyester được xử lý chống thấm nước hoàn toàn. Vali vải dù Cosas United Lightweight Black được lắp các đầu kéo ngăn chính bằng hợp kim tăng độ cứng, chống bị cắt bằng kềm, không bị nứt gãy cho thời gian sử dụng lâu dài tạo cho sản phẩm cứng cáp khi sử dụng bền bỉ hơn. Vali vải dù Cosas United Lightweight Black size 24 hành lý du lịch ký gởi 20Kg có thể mở rộng thêm được tiện dụng. Sản phẩm có bốn bánh xe 4 x 2 xoay 360 độ nhẹ nhàng, êm ái. Vali kéo du lịch vải dù cao cấp Cosas United Lightweight Black size 24 có cần kéo bằng hợp kim cứng, chịu được tải trọng nặng, dùng bền không gỉ. 

- Size 24: 390 x 260 x 600 mm (Chưa tính bánh xe). Trọng lượng 3.5kg', 1007, N'MO', 12, 0, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1047, N'Panasonic Lumix DMC-G7', N'10 - 4 oz boxes', 13000000, N'1047.jpg', CAST(N'2019-11-25 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Panasonic Lumix DMC-G7 + 14-42mm f/3.5-5.6 có thiết kế đặc trưng của máy ảnh Micro Four Thirds, G7 kết hợp diện mạo hoài cổ với chức năng hiện tại tăng tính trực quan khi sử dụng. Các đĩa điều khiển trước và sau hữu ích điều khiển khẩu và tốc độ màn trập, cũng như thay đổi nhanh ISO và thiết lập cân bằng trắng. 6 nút chức năng có thể tùy gán nhiều tính năng tùy người dùng và bánh xe điều khiển chính cho khả năng chuyển đổi nhanh giữa các chế độ chụp gồm cả các chế độ 4K PHOTO.

EVF phân giải cao và màn hình LCD phía sau tăng tính linh hoạt trong quá trình chụp. Kính ngắm Live View Finder OLED 2.36m-dot có tỷ lệ tương phản 10,000:1 cho tầm nhìn cảnh sáng hơn, chính xác hơn kể cả trong điều kiện ánh sáng khó. Màn hình LCD 3.0" 1.04m-dot có thiết kế cảm ứng giúp định vị và điều khiển tốt hơn, cũng như thiết kế xoay lật đa góc giúp dễ dàng làm việc từ góc chụp cao đến góc chụp thấp.

G7 còn được trang bị kết nối Wi-Fi tích hợp để chia sẻ ảnh không dây và điểu khiển máy ảnh từ xa từ thiết bị di động liên kết bằng cách sử dụng Panasonic Image App. Kết nối đơn giản sử dụng hệ thống mã QR để ghép smartphone hoặc tablet với máy ảnh.', 1002, N'SM', 9, 0.5, 0, 0, 12)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1048, N'Máy Ảnh Canon 4000D Kit 18-55MM F3.5-5.6', N'10 pkgs.', 9000000, N'1048.jpg', CAST(N'2018-08-24 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Canon EOS 4000D + Kit 18-55MM F3.5-5.6 III Nếu trước đây Canon có chiếc 100D được mệnh danh là DSLR nhỏ nhất thế giới thì điều này đang được lặp lại với chiếc 4000D. Chỉ tính riêng thân máy, bạn có thể nắm gọn trong lòng bàn tay dù nó vẫn có hình dáng hầm hố của dòng DSLR thường thấy. Trọng lượng chỉ 436g cùng độ dày 77.1 mm hoàn toàn có thể cạnh tranh với các mirrorless nhỏ gọn để bạn mang theo bên mình cả ngày dài mà không cảm thấy nặng nề.', 1002, N'SM', 13, 0, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1049, N'Canon 77D Body ', N'24 - 50 g pkgs.', 4900000, N'1049.jpg', CAST(N'2018-05-23 00:00:00.000' AS DateTime), 1, N'Thiết kế gọn nhẹ
Máy Ảnh Canon 77D Body (Lê Bảo Minh) được thiết kế nhỏ gọn với kích thước 131.0 x 99.9 x 76.2 mm, bạn có thể dễ dàng mang theo trong quá trình di chuyển, đi xa và thoải mái chụp ảnh, quay phim. Sản phẩm có vỏ ngoài cứng cáp, bền bỉ cùng báng cầm tay có độ bám, giúp hạn chế trơn trượt và hỗ trợ cầm nắm chắc chắn khi sử dụng.

Cảm biến 24.2 megapixel và DIGIC 7
Máy Ảnh Canon 77D được sở hữu cảm biến 24.2 MP kết hợp cùng bộ xử lý ảnh DIGIC 7, giúp mang lại những hình ảnh đẹp có kích thước lớn và chụp được những chi tiết tuyệt vời, ngay cả trong những điều kiện sáng và trong bóng tối.

Chụp liên tiếp 6 khung hình mỗi giây
Sản phẩm được trang bị hệ thống lấy nét tự động Live View sẽ nhanh chóng nắm bắt khoảnh khắc và mang đến hình ảnh sắc nét, ngay cả khi chụp đối tượng chuyển động nhanh và mang đến khả năng chụp liên tiếp với 6 khung hình mỗi giây để bạn có thể dễ dàng lưu lại những khoảnh khắc thoáng qua nhanh nhất.', 1002, N'SS', 21, 0, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1050, N'Canon EOS 1500D', N'12 - 100 g bars', 10500000, N'1050.jpg', CAST(N'2018-02-17 00:00:00.000' AS DateTime), 1, N'Máy ảnh canon EOS 1500D có một mức giá hợp lý bên cạnh các tính năng của một máy ảnh chuyên nghiệp, hứa hẹn là một thiết bị ấn tượng của năm 2018. Sản phẩm sẽ là sự khởi đầu tốt nhất dành cho tất cả mọi người, đặc biệt thích hợp cho người dùng phổ thông và những ai mới tập chơi khi bước vào nghề nhiếp ảnh. Canon 1500D có lớp vỏ ngoài được làm bằng hợp kim rất cứng cáp mang lại sự bền bỉ cùng tông màu đen cổ điển và sang trọng. Bên cạnh đó sản phẩm vẫn mang trên mình thiết kế khá nhỏ gọn như những chiếc DSLR entry level nhằm để cạnh tranh cùng dòng Mirrorless, phần cạnh phải của máy có góc được bọc cao su cho độ bám cao, cầm chắc tay và hạn chế trơn trượt khi sử dụng.

', 1002, N'AP', 17, 0, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1051, N'Mũ lưỡi trai', N'50 - 300 g pkgs.', 53000, N'1051.jpg', CAST(N'2019-05-22 00:00:00.000' AS DateTime), 1, N'Đây là dòng sản phẩm bình dân với chất lượng tốt phù hợp với cả nam và nữ.
Sản phẩm rất phù hợp làm quà nặng, nón nhóm, nón team,...
Chất liệu: Kaki
Kích thước: Phù hợp người lớn từ 20kg trở lên.
Đường may gọn gàng, chắc chắn.
Giao hàng tận tay và Thanh toán khi nhận hàng.
Sản phẩm được đổi trả miễn phí trong vòng 3 ngày nếu khách hàng không hài lòng.
Giá sản phẩm bao gồm: 01 nón', 1006, N'AP', 56, 0.05, 0, 0, 4)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1052, N'Senloren', N'16 - 2 kg boxes', 870000, N'1052.jpg', CAST(N'2019-05-20 00:00:00.000' AS DateTime), 1, N'Mùi hương nhẹ hơn nước hoa nên người dùng có thể xịt khắp toàn thân mà không gây khó chịu cho người đối diện.
Thời gian lưu hương trong 3 – 4 giờ. Tuy nhiên, tùy theo cơ địa vẫn có thể lưu hương hơn nửa ngày. Bạn có thể khắc phục bằng cách mang theo bên người và xịt thêm khi cần.
Loãng, không đậm đặc như nước hoa nên bạn có thể thoải mái xịt toàn thân tạo mùi hương rất tự nhiên', 1004, N'NK', 7, 0.5, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1053, N'PNJ Tolovi', N'48 pieces', 44900000, N'1053.jpg', CAST(N'2018-01-06 00:00:00.000' AS DateTime), 1, N'Tô điểm chút ngọt ngào và cá tính cho phong cách của nàng với sự kết hợp hoàn hảo giữa các chất liệu. Sử dụng sắc trắng thời thượng của đá CZ cùng thiết kế đậm chất lãng mạn trên chất liệu bạc Sterling 92.5, chiếc nhẫn bạc mang vẻ đẹp nổi bật nhưng không kém phần trẻ trung cho nàng thơ.', 1005, N'SM', 34, 0.03, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1054, N'PNJ MacSiren', N'16 pies', 76900000, N'1054.jpg', CAST(N'2019-10-07 00:00:00.000' AS DateTime), 1, N'Chiếc nhẫn bạc được thiết kế với nét cá tính đầy ấn tượng được thiết kế mang hơi hướng hiện đại kết hợp sắc xanh sapphire của đá CZ tạo nên vẻ đẹp trẻ trung và thời thượng. Nàng có thể tự sáng tạo và làm mới cho mình một phong cách trang sức hoàn toàn mới, biến mình thành tâm điểm không chỉ trong mắt người thương mà còn cả những người xung quanh.', 1005, N'SS', 7, 0.5, 1, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1055, N'Nhẫn phong thủy', N'24 boxes x 2 pies', 24000000, N'1055.jpg', CAST(N'2018-07-08 00:00:00.000' AS DateTime), 1, N'Với mục đích mang đến sự tươi mới trong xu hướng thời trang, PNJSilver cho ra mắt BST Fantasia với những món trang sức tuyệt đẹp. Được thiết kế với những sắc màu quyến rũ của đá CZ tinh tế, chiếc nhẫn bạc mang vẻ đẹp của sự trẻ trung và mới lạ, giúp nàng trông năng động và thời thượng.', 1005, N'MO', 25, 0, 0, 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1056, N'Nước hoa nữ Poly', N'24 - 250 g pkgs.', 1200000, N'1056.jpg', CAST(N'2019-05-18 00:00:00.000' AS DateTime), 1, N'Phong cách: Quyến rũ, gợi cảm
Nhóm hương: Hoa cỏ trái cây
Phân Loại: Nước hoa nữ
Nồng độ: Eau De Parfum
Độ lưu hương: Rất Lâu – 7 giờ đến 12 giờ
Độ toả hương: Xa – Toả hương trong vòng bán kính 2 mét
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ, Thu, Đông
Mùi hương đặc trưng với 3 tầng hương:
+ Hương đầu: Quả mâm xôi
+ Hương giữa: Hoa hồng , hoa nhài, hạt phỉ
+ Hương cuối: Mật ong, gỗ đàn hương, gỗ Cashmere, gỗ tuyết tùng.', 1004, N'AP', 40, 0.04, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1057, N'Nautica Blue', N'24 - 250 g pkgs.', 1950000, N'1057.jpg', CAST(N'2019-02-16 00:00:00.000' AS DateTime), 1, N'Hương trái cây ngọt ngào và hương hoa đồng hội tươi mát Lưu hương lâu Không gây kích ứng
Nước hoa nồng ấm tình yêu Nautica Blue là sự hòa quyện tinh tế của hương hoa đồng nội tươi mát và hương trái cây ngọt ngào. - Hương đầu: Mạn việt quất. Hương giữa: Hoa tú cầu, Hoa anh đào, Hoa hồng. Hương cuối: Xạ hương.', 1004, N'NK', 20, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1058, N'Laptop Dell Inspiron 3480 i3', N'24 pieces', 13250000, N'1058.jpg', CAST(N'2018-07-26 00:00:00.000' AS DateTime), 1, N'Laptop Dell Inspiron 3480 thuộc dòng laptop tầm trung của hãng Dell với cấu hình khá mạnh, thiết kế đẹp và sang trọng. Máy hướng tới đối tượng nhân viên văn phòng và các bạn học sinh, sinh viên.
Cấu hình đáp ứng các tác vụ văn phòng, đa nhiệm ổn
Laptop Dell Inspiron 3480 được trang bị Chip Intel Core i3 đời thứ 8 và RAM 4 GB giúp máy chạy được hầu hết các ứng dụng văn phòng, xử lý đa nhiệm ổn. Đây là lựa chọn tốt nhất hầu hết cho mọi người dùng. Thiết kế cứng cáp 
Laptop Dell Inspiron 3480 sở hữu thiết kế rất đẹp mắt, các góc cạnh được bo tròn tạo cảm giác chắc chắn cho người dùng với lớp vỏ ngoài nhìn cứng cáp. Máy nặng 1.72 kg khá nhẹ so với các laptop cùng phân khúc nên vô cùng tiện lợi để xách vội đến quán cà phê hay chỗ làm hằng ngày.', 1001, N'MO', 14, 0, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1059, N'Nokia 2720 Flip', N'5 kg pkg.', 1200000, N'1059.jpg', CAST(N'2017-09-22 00:00:00.000' AS DateTime), 1, N'Điện thoại nắp gập từ lâu đã được nhiều người dùng ưa chuộng, và mới đây Nokia đã giới thiệu chiếc Nokia 2720 Flip (2019) mang lại cho người dùng những trải nghiệm từ nhiều năm về trước.
Thiết kế đầy nét hoài cổ
Nokia 2720 Flip (2019) được kế thừa những ưu điểm thiết kế những điện thoại nắp gập trước đây của Nokia nhưng có thêm những tính năng hiện đại hơn. Chiếc điện thoại này đi theo lối thiết kế đơn giản và hiện đại hơn với một màn hình đơn sắc 1.3 inch ở ngoài và một màn hình màu 2.8 inch ở bên trong.

Các phím bấm của 2720 Flip (2019) có kích thước lớn và dễ dàng cho việc nhập liệu.', 1003, N'SM', 58, 0.05, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1060, N'Nokia 3.2 16GB', N'15 - 300 g rounds', 900000, N'1060.jpg', CAST(N'2016-06-20 00:00:00.000' AS DateTime), 1, N'Nokia quay trở lại thị trường mạnh mẽ với những chiếc smartphone giá cả phải chăng nhưng vẫn đáp ứng tốt nhu cầu sử dụng hằng ngày của người dùng và Nokia 3.2 16GB là một chiếc máy như vậy.
Thiết kế thời trang, theo xu thế
Dù là một chiếc máy giá rẻ nhưng chiếc điện thoại Nokia phiên bản 16 GB này vẫn sở hữu thiết kế mặt lưng giả kính bóng bẩy rất sang trọng và thu hút. Gây ấn tượng ngay từ cái nhìn đầu tiên chính là màn hình giọt nước được tối ưu hiệu quả mang lại trải nghiệm mới mẻ và thích mắt.

Kích thước màn hình tràn viền 6.2 inch cùng viền 2 bên khá mỏng giúp bạn vẫn có một thiết bị vừa vặn trong lòng bàn tay.', 1003, N'SM', 36, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1061, N'Laptop Acer Aspire A315 54 36QY i3 ', N'24 - 500 ml bottles', 24560000, N'1061.jpg', CAST(N'2019-05-29 00:00:00.000' AS DateTime), 1, N'Acer Aspire A315 54 36QY (NX.HM2SV.001) là chiếc laptop có thiết kế nhỏ gọn, hợp thời trang, màn hình chân thực, sắc nét cùng cấu hình ổn định đáp ứng nhu cầu học tập, làm việc văn phòng. 
Thiết kế nhỏ gọn, tiện lợi
Laptop Acer Aspire A315 (NX.HM2SV.001) được thiết kế với phong cách hiện đại, trẻ trung với màu đen chủ đạo toát lên vẻ ngoài chắc chắn, sang trọng. Laptop có trọng lượng 1.7 kg rất dễ dàng để bạn mang theo chiếc máy đến bất cứ đâu để học tập hay làm việc, giải trí.  Cấu hình xử lý mượt mà các thao tác văn phòng
Laptop Acer Aspire A315 sở hữu bộ vi xử lý Intel Core i3 Comet Lake 10110U, RAM 4 GB mang đến khả năng xử lý mượt mà các thao tác văn phòng như soạn thảo văn bản, trình bày bảng tính, trình chiếu,...

Ngoài ra laptop còn hỗ trợ khe RAM tối đa đến 12 GB giúp bạn dễ dàng nâng cấp thêm cho chiếc máy.', 1001, N'SM', 30, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1062, N'Nikon D3500 kit 18-55mm VR', N'48 pies', 6700000, N'1062.jpg', CAST(N'2018-01-21 00:00:00.000' AS DateTime), 1, N'Máy ảnh Nikon ống kính rời HD-DSLR thế hệ 2018

- Cảm biến DX CMOS 24.2 Mps

- Bộ xử lý ảnh mới nhất EXPEED IV, ISO tới 25,600

- Hệ thống lấy nét tự động 3D-tracking AF 11 điểm

- Hệ thống đo sáng 420-pixel RGB thế hệ mới

- Chế độ HDR cho các tình huống ánh sáng phức tạp

- Quay phim Full-HD 1080p/60fps với hiệu ứng Cinematic 

- Màn hình xoay 3” 920K ảnh, kết nối Bluetooth LE 

- Pin EL14a lên đến 1.550 bức ảnh/lần sạc', 1002, N'AP', 52, 0.05, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1063, N'Laptop Asus VivoBook Pro F571GD i5', N'15 - 625 g jars', 21800000, N'1063.jpg', CAST(N'2019-11-21 00:00:00.000' AS DateTime), 1, N'Laptop Asus F571GD (BQ387T) là chiếc laptop có cấu hình mạnh mẽ cùng với màn hình lớn. Laptop hướng đến người dùng là sinh viên, nhân viên văn phòng đòi hỏi nhu cầu thiết kế đồ họa cao và chơi game, giải trí. 
Cấu hình mạnh mẽ hướng đến nhu cầu đồ họa kỹ thuật 
Laptop Asus F571GD (BQ387T) được trang bị bộ vi xử lý Intel Core i5 thế hệ thứ 8 và RAM 8 GB mang đến khả năng xử lý mượt mà các ứng dụng đồ họa như Photoshop, AI, CorelDraw,...  Ngoài ra máy tính còn được hỗ trợ khe RAM tối đa lên đến 16 GB giúp bạn dễ dàng nâng cấp thêm cho chiếc máy của mình. 

Cùng với đó laptop còn trang bị thêm card đồ họa rời NVIDIA GeForce GTX 1050, 4 GB mang đến khả năng xử lý video bằng After Effect, Premiere và chơi được một số game như Fortnite, Battlefield ở mức setting cao và Far Cry 5 ở mức setting vừa và thấp.', 1001, N'SM', 46, 0.04, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1064, N'Nước hoa Fantasy', N'20 bags x 4 pieces', 1000000, N'1064.jpg', CAST(N'2019-05-15 00:00:00.000' AS DateTime), 1, N'Loại: nước hoa dành cho Nữ. Mùi hương: hương nhẹ, nhóm hương hoa cỏ, đặc trưng hoa Lavender, Oải hương. Phong cách: nữ tính và quyến rũ, tôn lên sự gợi cảm của các cô nàng. Nồng độ: Eau De Parfum (EDP). Độ lưu hương: từ 7 đến 12 tiếng trên da, 2 - 3 ngày trên quần áo. Độ toả hương: trong vòng bán kính 2m. Thời gian dùng: Ngày, Đêm, Thu, Đông, Xuân, Hạ', 1004, N'SM', 35, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1065, N'Laptop Dell Vostro 3580 i7 ', N'32 - 8 oz bottles', 26900000, N'1065.jpg', CAST(N'2018-05-15 00:00:00.000' AS DateTime), 1, N'Laptop Dell Vostro 3580 i7 8565U (T3RMD2) có cấu hình cực cao bao gồm vi xử lý i7, 8GB RAM và card đồ họa rời Radeon 520. Với những “vũ khí” mạnh mẽ được trang bị thì laptop có thể chạy tốt các ứng dụng phục vụ cho công việc, học tập, xử lý đồ hoạ cũng như chơi game ở mức cấu hình tầm trung.
Thiết kế laptop cơ bản, cứng cáp
Laptop Dell sở hữu một ngoại hình chắc chắn, vuông vắn, các góc cạnh được bo tròn hợp lý tạo cho người dùng cảm giác chắc chắn khi cầm nắm. Khối lượng máy 2.21kg cùng độ mỏng 20.6mm, tuy không thuộc vào hàng mỏng nhẹ nhưng vẫn có thể mang laptop theo làm việc và học tập mà không quá nặng nề. Hiệu năng mạnh mẽ, đa nhiệm mượt mà
Không quá chú trọng vào thiết kế, cấu hình cao cấp mới là điểm nhấn của Dell Vostro 3580 i7 8565U (T3RMD2). Chip Intel Core i7 mạnh mẽ kết hợp cùng bộ nhớ RAM dung lượng 8 GB đem lại cho máy một hiệu năng ấn tượng, có khả năng giải quyết các tác vụ từ đơn giản đến phức tạp một cách dễ dàng và mượt mà.

Laptop được trang bị ổ cứng SSD 256 GB cho việc mở máy, mở ứng dụng chỉ trong nháy mắt. Bạn sẽ cảm nhận được tốc độ máy mượt mà hơn đáng kể trong từng thao tác đóng mở và vận hành ứng dụng.

Card đồ họa rời AMD Radeon 520 2GB hỗ trợ chạy tốt những phần mềm đồ họa văn phòng và chơi được các dạng game có cấu hình tầm trung như Liên Minh, FIFA...', 1001, N'SS', 22, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1066, N'Laptop Asus VivoBook X507UF i3', N'24 - 8 oz jars', 17900000, N'1066.jpg', CAST(N'2019-02-10 00:00:00.000' AS DateTime), 1, N'Hiệu năng ổn định và thiết kế linh động là những điều laptop Asus X507UF EJ117T mang đến cho người dùng, nhất là những ai yêu thích sự gọn nhẹ, dễ di chuyển cũng như giải trí hàng ngày như học sinh, sinh viên và nhân viên văn phòng.
Thiết kế linh hoạt, gọn nhẹ
Được thiết kế dựa theo tiêu chí tiện lợi, linh hoạt và dễ mang đi, laptop Asus X507UF EJ117T khá gọn nhẹ với cân nặng chỉ 1.68 kg. Hiệu năng ổn định khi làm việc văn phòng
Được trang bị chip Intel Core i3, laptop Asus X507UF EJ117T mang lại khả năng sử dụng mượt mà các ứng dụng văn phòng: soạn thảo Word, làm việc với bảng tính Excel hay trình chiếu cùng Powerpoint, ... là sự lựa chọn phù hợp đối với các bạn học sinh, sinh viên đang tìm kiếm một sản phẩm hỗ trợ cho việc học.', 1001, N'AP', 18, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1067, N'Đồng hồ Nam Citizen NH8350-59B', N'24 - 12 oz bottles', 3560000, N'1067.jpg', CAST(N'2019-12-05 00:00:00.000' AS DateTime), 1, N'Đồng hồ cơ tự động, có độ bền cao, không sử dụng pin, tự động lên dây cót khi bạn chuyển động cổ tay.
Mặt kính chiếc đồng hồ Citizen nam trong suốt, độ cứng khá, ít bị trầy xước khi va chạm nhẹ.
Khung viền chống ăn mòn, chịu lực tốt khi rơi ở độ cao vừa phải, bảo vệ các chi tiết bên đồng hồ nam.
Bạn yên tâm đeo đồng hồ khi tắm rửa và đi mưa vì có độ chống nước 5 ATM, không đeo được khi bơi lội và lặn.
Đồng hồ nam có tích hợp cả lịch thứ và lịch ngày giúp bạn dễ dàng quản lý thời gian.', 1000, N'MO', 14, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1068, N'Máy Ảnh Canon EOS 200D KIT ', N'10 boxes x 8 pieces', 5670000, N'1068.jpg', CAST(N'2019-07-08 00:00:00.000' AS DateTime), 1, N'Máy Ảnh Canon EOS 200D Kit 18-55mm với thiết kế thân máy nhỏ gọn do cấu trúc bên trong của EOS 200D thay đổi, kết hợp với báng cầm tay tạo cảm giác chắc chắn hơn cho người dùng. Thân máy cũng được gia công nhiều lớp, bánh xe điều chỉnh chế độ chụp được nằm chìm bề mặt của máy mang lại sự liền lạc cho máy. Màn hình cảm ứng LCD 3”
Màn hình LCD 3” cảm ứng có khả năng xoay và lật theo nhiều hướng, hỗ trợ chọn lấy nét và chụp từ màn hình. Bên cạnh đó, máy cũng sở hữu kính ngắm quang học với hệ thống AF 9 điểm giúp bạn nhìn khung hình một các chính xác và trực quan hơn.

Cảm biến ảnh CMOS APS-C 24.2 MP
Canon EOS 200D có chất lượng ảnh chụp tốt khi được trang bị cảm biến ảnh CMOS APS-C 24.2 MP được kết hợp với công nghệ lấy nét tự động Dual Pixel AF. Nhờ đó, việc lấy nét bằng màn hình live view cũng như quay video trở nên dễ dàng hơn, phù hợp với những người dùng chuyển từ dòng máy ảnh compact ngắm chụp sang dòng máy ảnh chuyên nghiệp DSLR.', 1002, N'SM', 13, 0, 0, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1069, N'BlackBerry KEY2 LE

', N'10 kg pkg.', 7890000, N'1069.jpg', CAST(N'2017-03-09 00:00:00.000' AS DateTime), 1, N'Máy có trọng lượng tương đối nhẹ, kết hợp với các cạnh bo tròn giúp cầm nắm dễ dàng và không hề cảm thấy cấn tay. Mặt lưng của Key2 LE được phủ một lớp cao su mềm hơn và cho cảm giác bám tay hơn so với Key2.

Màn hình khá thú vị với đa số người dùng
Nếu bạn đã quá quen với những chiếc smartphone có màn hình lớn hay màn hình tràn viền thì khi làm quen với BlackBerry KEY2 LE bạn sẽ không khỏi có những bỡ ngỡ. Với màn hình 4.5 inch Full HD với tỉ lệ khung hình 3:2 rất thuận tiện cho công việc như đọc báo, check mail,... nhưng khi sử dụng để xem video hay chơi game thì không hề thú vị chút nào.

Chất lượng hiển thị của Key2 LE thật sự rất tốt, màn hình của máy đẹp và rõ nét với màu sắc hiển thị trung thực.', 1003, N'NK', 38, 0.04, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1070, N'Đồng hồ Nam Casio MTP-E205D-1AVDF', N'24 - 355 ml bottles', 13800000, N'1070.jpg', CAST(N'2019-02-21 00:00:00.000' AS DateTime), 1, N'Thương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…

Đơn giản nhưng không kém sự sang trọng thích hợp với mọi chàng trai hiện đại, thời thượng

Đồng hồ Casio MTP-E205D-1AVDF là chiếc đồng hồ nam của hãng Casio đến từ Nhật Bản uy tín và chất lượng.

Đồng hồ có lớp vỏ bền chắc, khả năng chịu va đập tốt

- Mặt kính đồng hồ Casio nam có độ cứng cao, trong suốt, hạn chế nứt vỡ khi rơi ở độ cao vừa phải.

- Khung viền chắc chắn, dễ lau chùi khi bám bụi bẩn, khó móp méo khi xảy ra va chạm thường ngày.

Hệ số chống nước 5 ATM, an toàn khi rửa tay, tắm và đi mưa, không đeo đồng hồ nam khi bơi, đi lặn

Xác định thời gian chuẩn xác hơn với tiện ích lịch thứ và lịch ngày trên đồng hồ

Dây đeo có độ bền cao, có thể đánh bóng lại như mới khi bị trầy xước, chịu được mọi điều kiện thời tiết', 1000, N'SS', 16, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1071, N'Nokia 2.2', N'10 - 500 g pkgs.', 1090000, N'1071.jpg', CAST(N'2017-09-04 00:00:00.000' AS DateTime), 1, N'Nokia đang rất thành công tại thị trường Việt Nam với những chiếc smartphone phổ thông và một trong số đó là dòng Nokia 2 Series với mức giá cạnh tranh và mới đây hãng tiếp tục tung ra phiên bản kế nhiệm mang tên Nokia 2.2.
Màn hình "giọt nước" theo xu thế
So với những đàn anh đi trước thì Nokia 2.2 năm nay thực sự là một sự lột xác của Nokia về mặt thiết kế. Dù có mức giá rất rẻ nhưng Nokia vẫn có gắng mang tới cho người dùng một trải nghiệm màn hình tràn viền theo xu thế.

Chiếc điện thoại Nokia sở hữu màn hình với kích thước 5.71 inch mang lại không gian sử dụng thoải mái, các cạnh viền mỏng cho cảm giác "đã hơn" khi lướt web hay chơi game. Độ sáng màn hình khá cao giúp người dùng có thể dễ dàng theo dõi ngay cả dưới điều kiện có ánh sáng trực tiếp.', 1003, N'AP', 23, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1072, N'Coolpad F129', N'24 - 200 g pkgs.', 6900000, N'1072.jpg', CAST(N'2018-06-03 00:00:00.000' AS DateTime), 1, N'Coolpad F129, một chiếc điện thoại phổ thông đến từ hãng Coolpad đáp ứng đầy đủ cho các nhu cầu của người dùng với một thiết kế nhỏ gọn cùng một viên pin dung lượng khủng.
Thiết kế đơn giản
Với lối thiết kế truyền thống, Coolpad F129 trở nên vô cùng nhỏ gọn giúp bạn cầm nắm thuận tiện và chắc chắn. Không gian trải nghiệm rộng rãi với kích thước 2.4 inch đi kèm màn hình màu giúp nội dung được hiển thị rõ ràng và sắc nét.

Hiệu năng đáp ứng cơ bản
Coolpad F129 hỗ trợ tốt các tác vụ thường ngày như: nghe gọi, nhắn tin..., máy luôn mang lại sự mượt mà và ổn định.

 Hơn nữa bạn còn có thể nghe nhạc bằng việc sử dụng một chiếc thẻ nhớ mở rộng bên ngoài.

Camera hỗ trợ quay phim, chụp hình
Khá thú vị khi Coolpad F129 còn sở hữu một cụm camera phía sau phục vụ nhanh nhu cầu chụp ảnh của bạn mỗi khi cần thiết.', 1003, N'SM', 37, 0.03, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1073, N'Vali nhựa xanh', N'24 - 150 g jars', 2500000, N'1073.jpg', CAST(N'2019-12-03 00:00:00.000' AS DateTime), 1, N'Size 24inch: (60cm x 40cm x 26cm). Trọng lượng : 3kg. Size trung, dành cho những chuyến du lịch xa, đựng từ 15kg đến 20kg hành lý, ký gửi.  Vali TRIP PP102 được làm từ nhựa PP (Polypropylen) loại nhựa chống bể 100%, siêu bền, dẻo, nhẹ có tính năng đàn hồi cao, chịu được lực ép và va đập mạnh, luôn giữ được mà sắc và sáng bóng như mới, hoàn toàn yên tâm không còn lo sợ rơi vỡ hay thời tiết mưa nắng thất thường làm hư hao hành lý bên trong. Cần kéo bằng hợp kim nhôm nhẹ, nhưng chắc chắn, không gỉ
Có thể tăng giảm chiều cao phù hợp. ', 1007, N'SM', 16, 0, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1074, N'Nón cói panama ', N'5 kg pkg.', 130000, N'1074.jpg', CAST(N'2018-09-27 00:00:00.000' AS DateTime), 1, N'Kích thước vòng đầu 55-56 cm.
Vành nón rộng 7 cm. Chiều cao nón 13 cm.
Chất liệu cói cao cấp, thoáng mát, form đẹp. ', 1006, N'MO', 10, 0.5, 1, 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1075, N'Đồng hồ G-Shock', N'24 - 0.5 l bottles', 689000, N'1075.jpg', CAST(N'2017-10-31 00:00:00.000' AS DateTime), 1, N'Bảo vệ an toàn phần lõi bên trong nhờ lớp vỏ cứng cáp, chịu lực tốt
- Mặt kính có độ cứng khá, độ trong suốt cao, ít nứt vỡ khi bị va đập.

- Khung viền chắc chắn, bền bỉ, an toàn ngay cả khi bị xe tải cán qua. Đồng hồ nam có 5 chế độ báo thức trong một ngày giúp bạn chủ động hơn trong công việc. Đèn led chiếu sáng cực mạnh, dễ dàng lựa chọn thời lượng chiếu sáng 1,5 giây hoặc 3 giây. Dây đồng hồ nhẹ nhàng, độ bền cao, thiết kế đục lỗ phù hợp với nhiều kích cỡ cổ tay.', 1000, N'SM', 8, 0.5, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1076, N'Đồng hồ Nam Titan 1043SM07', N'500 ml', 12400000, N'1076.jpg', CAST(N'2019-07-28 00:00:00.000' AS DateTime), 1, N'Đồng hồ Titan 1043SM07 là chiếc đồng hồ nam mang thương hiệu Titan nổi tiếng đến từ Ấn Độ. Đồng hồ Titan nam có lớp vỏ bên ngoài bền chắc 
- Mặt kính cứng cáp, độ trong suốt tốt, dễ dàng đánh bóng khi bị xước xát.

- Khung viền chịu lực tốt, chống ăn mòn hiệu quả, hạn chế hư hỏng khi xảy ra va đập. Thoải mái rửa tay hay đi dưới trời mưa nhỏ nhờ khả năng chống nước 3 ATM, không đeo đồng hồ khi tắm rửa. Dây đồng hồ Titan có độ bền cao, chịu được mọi thời tiết, cho cảm giác mát tay khi đeo.', 1000, N'MO', 19, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1077, N'Laptop Acer Aspire A514 52 33AB i3', N'12 boxes', 17890000, N'1077.gif', CAST(N'2018-04-04 00:00:00.000' AS DateTime), 1, N'Laptop Acer Aspire A514 i3 (NX.HMHSV.001) được thiết kế mỏng nhẹ phù hợp với giới trẻ, đặc biệt là các bạn học sinh sinh viên cần di chuyển nhiều. Máy sử dụng con chip Intel thế hệ thứ 10 hiện đại, ổ cứng SSD khởi động cực nhanh, màn hình Full HD góc nhìn siêu rộng đem đến những trải nghiệm tuyệt vời. 
Mỏng nhẹ, sang trọng
Acer Aspire A514 có thiết kế mang phong cách sang trọng, tinh tế với nắp lưng kim loại. Máy mỏng nhẹ chỉ 1.5 kg - 17.95 mm thuận tiện cho người dùng đem theo đến bất cứ đâu.  Chip Core i3 thế hệ thứ 10 hiện đại
Acer Aspire A514 sử dụng CPU Intel Core i3 thế hệ thứ 10 mới ra mắt (cuối 2019) - đây là một trong những chiếc laptop đầu tiên sử dụng chip thế hệ 10. Con chip này đem đến sức mạnh vượt trội, khả năng kết nối tốc độ cao, cùng việc tăng tốc nhanh hơn 3 lần cho thao tác tải tập tin nhanh và hiệu suất phản hồi cao hơn so với thế hệ trước đó. 
RAM 4 GB đa nhiệm ổn, sử dụng được các ứng dụng đồ họa ở mức cơ bản. ', 1001, N'AP', 14, 0, 0, 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1081, N'Đồng hồ Nam G-Shock GAS-100BL-1ADR
', N'10 boxes x 20 bags', 18900000, N'1081.jpg', CAST(N'2017-04-04 00:00:00.000' AS DateTime), 1, N'Sử dụng công nghệ Tough Solar, hoạt động bằng nguồn năng lượng được chuyển hóa từ ánh sáng (mặt trời, đèn, ...). Bảo vệ an toàn phần lõi bên trong nhờ bộ khung cứng cáp, chắc chắn, chống sốc hiệu quả
- Mặt kính đồng hồ nam có độ cứng khá, độ trong suốt cao, chịu lực tốt.

- Khung viền nhẹ nhàng, bền bỉ, hạn chế hư hỏng khi rơi ở độ cao 10m.

 Hệ số chống nước 20 ATM, đeo được khi bơi, lặn mà không lo đồng hồ G-Shock nam bị vào nước
Lưu ý: Không bấm các nút điều khiển khi bơi, lặn. Đồng hồ được tích hợp lịch thứ, lịch ngày và đồng hồ định dạng 24 giờ, thuận tiện hơn trong việc xem giờ...', 1000, N'AP', 20, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1083, N'Nhẫn bạc đính đá màu xanh dương Fantasia', N'18 - 500 g pkgs.', 25600000, N'1083.jpg', CAST(N'2018-07-23 00:00:00.000' AS DateTime), 1, N'Chiếc nhẫn bạc được thiết kế với nét cá tính đầy ấn tượng được thiết kế mang hơi hướng hiện đại kết hợp sắc xanh sapphire của đá CZ tạo nên vẻ đẹp trẻ trung và thời thượng. Nàng có thể tự sáng tạo và làm mới cho mình một phong cách trang sức hoàn toàn mới, biến mình thành tâm điểm không chỉ trong mắt người thương mà còn cả những người xung quanh.', 1005, N'AP', 105, 0.1, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1084, N'Đồng hồ đôi Casio BA-110-1ADR', N'10 boxes x 20 bags', 11560000, N'1084.jpg', CAST(N'2019-06-22 00:00:00.000' AS DateTime), 1, N'Mẫu đồng hồ đôi hầm hố, năng động, dành cho các cặp đôi yêu thích thể thao, cá tính mạnh mẽ

Đồng hồ đôi Casio BA-110-1ADR/GA-110GB-1ADR thuộc dòng đồng hồ G-Shock, mang thương hiệu Casio nổi tiếng của Nhật Bản.

Lớp vỏ ngoài cứng cáp, bền bỉ, bảo vệ đồng hồ khỏi các va đập mạnh, hạn chế hư hỏng khi rơi rớt

- Khung viền chắc chắn, hầm hố, chịu lực tốt, bảo vệ tốt đồng hồ G-Shock.

- Mặt kính trong suốt, chống trầy xước tốt, có độ cứng cao, an toàn trước các va chạm nhẹ.

Đồng hồ nữ sở hữu độ chống nước 10 ATM, thoải mái đeo khi tắm, bơi lội. Hạn chế đeo khi lặn

Đồng hồ nam với độ chống nước lên đến 20 ATM, ngoài tắm và bơi lội còn cho phép bạn đeo khi lặn ở độ sâu vừa phải

Lưu ý: Không bấm các nút điều chỉnh khi ở dưới nước.

Quản lý thời gian dễ dàng hơn với lịch thứ, ngày, tháng và đồng hồ định dạng 24h

Đồng hồ cặp được trang bị thêm khả năng báo thức, có thể lựa chọn được 3 mốc thời gian báo khác nhau

Hữu ích trong các hoạt động thể thao, giúp bạn rèn luyện cơ thể hiệu quả hơn mỗi ngày với tính năng bấm giờ 

Đèn nền sáng rõ giúp bạn nhìn giờ rõ ràng trong điều kiện thiếu sáng

Dây đeo êm nhẹ, bền bỉ, thoải mái khi đeo cả ngày dài, phù hợp với nhiều kích thước cổ tay', 1000, N'SS', 20, 0, 0, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1085, N'Đồng hồ Nam Casio SGW-100B-3A2DR', N'Một tạ', 5900000, N'1085.jpg', CAST(N'2018-01-16 00:00:00.000' AS DateTime), 1, N'Thiết kế trẻ trung và thể thao phù hợp với các chàng trai cá tính, năng động

Đồng hồ nam Casio SGW-100B-3A2DR đến từ thương hiệu Casio - Nhật Bản, nổi tiếng với những chiếc đồng hồ thể thao bền bỉ.

Bảo vệ tốt các chi tiết bên trong trước những va chạm thông thường

- Khung viền chắc chắn, chịu va đập tốt, thiết kế vỏ dạng gờ cao giúp hạn chế hư hỏng khi rơi ở độ cao vừa phải.

- Mặt kính đồng hồ Casio nam trong suốt và có độ cứng cao, không gây lóa mắt khi xem giờ dưới nắng gắt.

Hệ số chống nước lên đến 20 ATM, bạn hoàn toàn yên tâm khi đeo đồng hồ nam đi lặn, bơi hay tắm rửa

Lưu ý: Không bấm nút điều khiển khi đang bơi hoặc lặn dưới nước.

Đồng hồ Casio trang bị các tính năng tiện ích hỗ trợ bạn tập luyện thể thao tốt hơn

- Đồng hồ bấm giờ đếm ngược với khoảng đếm lên đến 24 giờ.

- Chức năng bấm giờ thể thao với độ chính xác 1/100 giây.

Chủ động thời gian trong công việc và các cuộc hẹn với 5 mức báo thức trong ngày

Đèn led chiếu sáng mạnh hỗ trợ xem giờ trong bóng tối

Dây đồng hồ có độ bền cao, không thấm nước và mồ hôi, trọng lượng nhẹ cho bạn thoải mái suốt ngày dài.', 1000, N'SM', 11, 0, 0, 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1087, N'Đồng hồ Nam Casio MTP-SW330D-1AVDF', N'One', 4790000, N'1087.jpg', CAST(N'2018-04-17 00:00:00.000' AS DateTime), 1, N'Sang trọng và thời thượng, là sự lựa chọn đáng tin cậy dành cho các quý ông hiện đại

Đồng hồ nam Casio MTP-SW330D-1AVDF đến từ thương hiệu Casio - Nhật Bản, nổi tiếng với những chiếc đồng hồ cao cấp, hợp thời trang.

Lớp vỏ ngoài cứng cáp giúp đồng hồ có khả năng chịu va đập tốt

- Mặt kính có độ trong suốt tốt, cứng cáp, ít nứt vỡ khi rơi ở độ cao vừa phải.

- Khung viền chắc chắn, chịu lực tốt, dễ lau chùi khi bám bụi bẩn, chống ăn mòn tốt.

An tâm khi tắm, rửa tay và đi mưa nhờ khả năng chống nước 5 ATM, không nên đeo đồng hồ nam khi tham gia bơi lội

Đồng hồ định dạng 24 giờ tiện lợi hơn cho bạn khi xem giờ

Quản lí tốt thời gian và công việc với tiện ích lịch thứ và lịch ngày trang bị trên đồng hồ Casio nam

Dây đồng hồ Casio bền bỉ, mát tay khi đeo, có thể đánh bóng lại khi bị xước xát nhẹ.', 1000, N'MO', 108, 0.1, 0, 1, 19)
INSERT [dbo].[Products] ([Id], [Name], [UnitBrief], [UnitPrice], [Image], [ProductDate], [Available], [Description], [CategoryId], [SupplierId], [Quantity], [Discount], [Special], [Latest], [Views]) VALUES (1088, N'Nón Puma', N'10 boxes x 20 bags 2222', 140000, N'1110.jpg', CAST(N'2019-12-18 00:00:00.000' AS DateTime), 1, N'Loại sản phẩm: mũ xô. Cỡ mũ: Một cỡ (Điều chỉnh). Áp dụng cho mùa: Mùa xuân, mùa hè, mùa thu, mùa đông. Vật liệu chính: Bông. Áp dụng cho các đối tượng:Trung niên, cặp vợ chồng, thanh niên. Kịch bản áp dụng: Giải trí, thể thao. Phong cách thiết kế: Giải trí, thể thao. Nguồn gốc:Quảng Châu(Trung Quốc). Kiểu mũ hàng đầu: Mái vòm
', 1006, N'NK', 19, 0, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Suppliers] ([Id], [Name], [Logo], [Email], [Phone]) VALUES (N'AP', N'Apple', N'apple.jpg', N'pike@yahoo.com', N'0987345876')
INSERT [dbo].[Suppliers] ([Id], [Name], [Logo], [Email], [Phone]) VALUES (N'MO', N'Motorola', N'motorola.jpg', N'john@gmail.com', N'0918456987')
INSERT [dbo].[Suppliers] ([Id], [Name], [Logo], [Email], [Phone]) VALUES (N'NK', N'Nokia', N'nokia.jpg', N'okawa@gmail.com', N'0913745789')
INSERT [dbo].[Suppliers] ([Id], [Name], [Logo], [Email], [Phone]) VALUES (N'SM', N'Seamen', N'Seamen.jpg', N'brown@gmail.com', N'0987456876')
INSERT [dbo].[Suppliers] ([Id], [Name], [Logo], [Email], [Phone]) VALUES (N'SS', N'Samsung', N'samsung.jpg', N'lee@yahoo.com', N'0913745789')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_User_Id]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_User_Id] ON [dbo].[AspNetUserClaims]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[Permissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WebActionId]    Script Date: 11/9/2019 5:03:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebActionId] ON [dbo].[Permissions]
(
	[WebActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
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
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permissions_dbo.WebActions_WebActionId] FOREIGN KEY([WebActionId])
REFERENCES [dbo].[WebActions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_dbo.Permissions_dbo.WebActions_WebActionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_Loai1] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_HangHoa_Loai1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chủng loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'NameVN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đã kích hoạt hay chưa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Activated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày cần có hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'RequireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên người nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Receiver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi chú thêm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả đơn vị tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UnitBrief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhà cung cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhà cung cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên công ty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo nhà cung cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại liên lạc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Phone'
GO
USE [master]
GO
ALTER DATABASE [MultiShop] SET  READ_WRITE 
GO
