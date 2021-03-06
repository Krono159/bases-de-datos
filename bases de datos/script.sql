USE [master]
GO
/****** Object:  Database [AgenciaA]    Script Date: 4/11/2021 4:32:33 p. m. ******/
CREATE DATABASE [AgenciaA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgenciaA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AgenciaA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgenciaA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AgenciaA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AgenciaA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgenciaA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgenciaA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgenciaA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgenciaA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgenciaA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgenciaA] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgenciaA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AgenciaA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgenciaA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgenciaA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgenciaA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgenciaA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgenciaA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgenciaA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgenciaA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgenciaA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgenciaA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgenciaA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgenciaA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgenciaA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgenciaA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgenciaA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgenciaA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgenciaA] SET RECOVERY FULL 
GO
ALTER DATABASE [AgenciaA] SET  MULTI_USER 
GO
ALTER DATABASE [AgenciaA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgenciaA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgenciaA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgenciaA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgenciaA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgenciaA] SET QUERY_STORE = OFF
GO
USE [AgenciaA]
GO
/****** Object:  Table [dbo].[ARRENDATARIOS]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARRENDATARIOS](
	[idCedulaArrendatario] [int] NOT NULL,
	[nombreArrendatario] [varchar](50) NULL,
	[apellidoArrendatario] [varchar](50) NULL,
	[correoArrendatario] [varchar](50) NULL,
	[direccionArrendatario] [varchar](50) NULL,
	[celularArrendatario] [varchar](50) NULL,
	[telefonoArrendatario] [varchar](50) NULL,
	[nombreEmpresa] [varchar](50) NULL,
	[telefonoEmpresa] [varchar](50) NULL,
	[cartaLaboral] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCedulaArrendatario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASESORES]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASESORES](
	[idCedulaAsesor] [int] NOT NULL,
	[nombreAsesor] [varchar](50) NULL,
	[direccionAsesor] [varchar](50) NULL,
	[celularAsesor] [varchar](50) NULL,
	[correoAsesor] [varchar](50) NULL,
	[nombreContacto] [varchar](50) NULL,
	[telefonoContacto] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCedulaAsesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTRATOS]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTRATOS](
	[idContrato] [int] NULL,
	[idSede] [int] NULL,
	[idFiador] [int] NULL,
	[idArrendatario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIADORES]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIADORES](
	[idCedulaFiador] [int] NOT NULL,
	[nombreFiador] [varchar](50) NULL,
	[apellidoFiador] [varchar](50) NULL,
	[nombreEmpresaFiador] [varchar](50) NULL,
	[celularFiador] [varchar](50) NULL,
	[correoFiador] [varchar](50) NULL,
	[salarioFiador] [decimal](9, 2) NULL,
	[cartaLaboralFiador] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCedulaFiador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INMU_SEDE]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INMU_SEDE](
	[idInmuSede] [int] NOT NULL,
	[idSede] [int] NULL,
	[idInmueble] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInmuSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INMUEBLES]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INMUEBLES](
	[idInmueble] [int] NOT NULL,
	[idAsesor] [int] NULL,
	[idPropietario] [int] NULL,
	[idArrendatario] [int] NULL,
	[IdUsuario] [int] NULL,
	[tipoInmueble] [varchar](14) NULL,
	[tipoCocina] [varchar](13) NULL,
	[numeroHabitaciones] [int] NULL,
	[numeroPatios] [int] NULL,
	[numeroBaños] [int] NULL,
	[servicioAgua] [varchar](2) NULL,
	[serviicioGas] [varchar](2) NULL,
	[servicioLuz] [varchar](2) NULL,
	[redTelecomunicaciones] [varchar](2) NULL,
	[piscinaInmueble] [varchar](2) NULL,
	[unidadCerrada] [varchar](2) NULL,
	[barrioInmueble] [varchar](18) NULL,
	[direccionInmueble] [varchar](50) NULL,
	[estadoInmueble] [varchar](12) NULL,
	[estratoInmueble] [int] NULL,
	[garajeInmueble] [varchar](2) NULL,
	[gymInmueble] [varchar](2) NULL,
	[salonSocial] [varchar](2) NULL,
	[areaInmueble] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idInmueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROPIETARIOS]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROPIETARIOS](
	[idCedulaPropietario] [int] NOT NULL,
	[nombrePropietario] [varchar](50) NULL,
	[apellidoPropietario] [varchar](50) NULL,
	[direccionPropietario] [varchar](50) NULL,
	[telefonoPropietario] [varchar](50) NULL,
	[celularPropietario] [varchar](50) NULL,
	[correoPropietario] [varchar](50) NULL,
	[numeroCuentaBancaria] [int] NULL,
	[tipoCuenta] [varchar](9) NULL,
	[matriculaCasa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCedulaPropietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEDES]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEDES](
	[idSede] [int] NOT NULL,
	[nombreSede] [varchar](6) NULL,
	[direccionSede] [varchar](50) NULL,
	[telefonoSede] [varchar](50) NULL,
	[nombreBarrio] [varchar](8) NULL,
	[nombreAdministrador] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOLICITUDES]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOLICITUDES](
	[IdSolicitud] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdInmueble] [int] NULL,
	[IdCedulaFiador] [int] NULL,
	[CartaLaboralUsuario] [varchar](50) NULL,
	[SalarioUsuario] [varchar](50) NULL,
	[CertificadoPropiedad] [varchar](50) NULL,
	[FechaSolicitud] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO_INMUEBLE]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO_INMUEBLE](
	[idUsuInmu] [int] NOT NULL,
	[idUsuario] [int] NULL,
	[idInmueble] [int] NULL,
	[cantidadVisitas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuInmu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 4/11/2021 4:32:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[IDUsuario] [int] NOT NULL,
	[nombreUsuario] [varchar](50) NULL,
	[apellidoUsuario] [varchar](50) NULL,
	[nombreEmpresa] [varchar](50) NULL,
	[celularUsuario] [varchar](50) NULL,
	[correoUsuario] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (188312453, N'Alanson', N'Ousbie', N'aousbie4@samsung.com', N'0882 Upham Trail', N'811 417 1267', N'182 149 8903', N'Voomm', N'412 152 4294', N'Si')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (195733399, N'Marga', N'Lenoir', N'mlenoir1@cmu.edu', N'26144 Westend Park', N'261 845 9154', N'257 967 3922', N'Avavee', N'134 635 9768', N'Si')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (204515408, N'Tiffani', N'Cocozza', N'tcocozza0@spotify.com', N'64661 Sutherland Hill', N'234 584 5128', N'646 392 3684', N'Flipstorm', N'163 334 6595', N'No')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (382841423, N'Tremaine', N'Kinleyside', N'tkinleyside9@clickbank.net', N'9604 Muir Court', N'170 648 0233', N'445 446 4500', N'Zava', N'846 436 5157', N'Si')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (473055131, N'Ardath', N'Aishford', N'aaishford8@wired.com', N'67708 Eagle Crest Road', N'770 336 8274', N'363 395 2800', N'Photobean', N'524 790 4245', N'No')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (721437984, N'Hube', N'Hatherall', N'hhatherall6@nbcnews.com', N'7 Sloan Drive', N'212 654 6262', N'244 660 9298', N'Trupe', N'742 752 8147', N'Si')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (744752842, N'Mark', N'Foucard', N'mfoucard7@squidoo.com', N'31 Arizona Way', N'205 995 5032', N'744 937 8359', N'Eayo', N'864 139 4151', N'No')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (847016041, N'Karlee', N'Ousby', N'kousby2@1und1.de', N'6562 Larry Alley', N'586 761 9915', N'948 744 7882', N'Jetwire', N'758 939 6620', N'No')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (868003840, N'Ange', N'Colam', N'acolam3@mlb.com', N'1683 Talisman Hill', N'682 851 6354', N'429 251 1046', N'Blogtag', N'560 440 4539', N'No')
INSERT [dbo].[ARRENDATARIOS] ([idCedulaArrendatario], [nombreArrendatario], [apellidoArrendatario], [correoArrendatario], [direccionArrendatario], [celularArrendatario], [telefonoArrendatario], [nombreEmpresa], [telefonoEmpresa], [cartaLaboral]) VALUES (949203869, N'Sara-ann', N'Farrington', N'sfarrington5@ning.com', N'2 Twin Pines Place', N'879 209 7641', N'246 562 1589', N'Feednation', N'724 197 8830', N'No')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (245858956, N'Jennilee Eddy', N'102 Tomscot Drive', N'817 311 4609', N'rlandell4@youku.com', N'Raphael Landell', N'495 743 4782')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (248367564, N'Inness Roakes', N'079 Union Lane', N'750 741 3570', N'zvequaud3@bravesites.com', N'Zulema Vequaud', N'728 403 5074')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (315057798, N'Seward Skelton', N'76 Bunting Hill', N'353 988 0799', N'cdilliston2@jugem.jp', N'Correy Dilliston', N'456 274 0316')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (323467777, N'Rozalie Goldthorp', N'3017 Pierstorff Avenue', N'742 133 1326', N'znuccii0@disqus.com', N'Zorah Nuccii', N'146 834 9945')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (445706658, N'Lucienne Kennsley', N'09037 Westerfield Road', N'366 912 6313', N'ttiuit9@mozilla.org', N'Terza Tiuit', N'848 456 6130')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (472223383, N'Toma Ughini', N'315 Moose Parkway', N'828 473 3622', N'ncoyett7@vimeo.com', N'Noella Coyett', N'507 264 1968')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (476840658, N'Creight Leas', N'20036 Sommers Street', N'970 493 2451', N'jterbrugge5@amazon.de', N'Jillayne Terbrugge', N'100 535 9106')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (742246243, N'Randie Dudin', N'823 Hollow Ridge Road', N'676 386 2124', N'cabbis8@google.com.br', N'Carlo Abbis', N'629 116 1123')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (798334309, N'Debby Elster', N'2801 Bartillon Park', N'526 661 4245', N'kantonignetti6@diigo.com', N'Kristine Antonignetti', N'525 229 0916')
INSERT [dbo].[ASESORES] ([idCedulaAsesor], [nombreAsesor], [direccionAsesor], [celularAsesor], [correoAsesor], [nombreContacto], [telefonoContacto]) VALUES (849029947, N'Sisile Lavell', N'7568 Prairie Rose Drive', N'373 338 6933', N'buppett1@spiegel.de', N'Briny Uppett', N'137 594 0791')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (1, N'Dex', N'Partridge', N'Linkbuzz', N'125 980 7053', N'dpartridge0@kickstarter.com', CAST(4735619.00 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (2, N'Bettye', N'Parsley', N'Quinu', N'343 211 4904', N'bparsley1@sohu.com', CAST(2725185.57 AS Decimal(9, 2)), N'No')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (3, N'Sissy', N'Dixcey', N'Gigaclub', N'850 355 5869', N'sdixcey2@amazon.de', CAST(4688283.44 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (4, N'Fae', N'Dyball', N'Kaymbo', N'122 108 4381', N'fdyball3@last.fm', CAST(1972517.90 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (5, N'Ari', N'Rengger', N'Yotz', N'104 651 4132', N'arengger4@parallels.com', CAST(1806709.00 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (6, N'Dionne', N'Bristo', N'Livepath', N'455 628 8461', N'dbristo5@youtube.com', CAST(2462104.39 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (7, N'Adele', N'Pottberry', N'Trudeo', N'587 776 5801', N'apottberry6@about.com', CAST(3417740.43 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (8, N'Clemmie', N'Aland', N'Jaxbean', N'685 847 7098', N'caland7@redcross.org', CAST(4389350.28 AS Decimal(9, 2)), N'Si')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (9, N'Ulrike', N'Morales', N'Yadel', N'164 695 9564', N'umorales8@symantec.com', CAST(3688854.49 AS Decimal(9, 2)), N'No')
INSERT [dbo].[FIADORES] ([idCedulaFiador], [nombreFiador], [apellidoFiador], [nombreEmpresaFiador], [celularFiador], [correoFiador], [salarioFiador], [cartaLaboralFiador]) VALUES (10, N'Eugene', N'Mulroy', N'InnoZ', N'535 638 3527', N'emulroy9@prnewswire.com', CAST(4034552.52 AS Decimal(9, 2)), N'No')
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (1, 1, 1)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (2, 2, 2)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (3, 3, 3)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (4, 4, 4)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (5, 5, 5)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (6, 6, 6)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (7, 7, 7)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (8, 8, 8)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (9, 9, 9)
INSERT [dbo].[INMU_SEDE] ([idInmuSede], [idSede], [idInmueble]) VALUES (10, 10, 10)
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (1, 323467777, 908854893, 204515408, NULL, N'Apartamento', N'Semi Integral', 4, 2, 2, N'Si', N'Si', N'Si', N'Si', N'No', N'No', N'Robledo Pilarica', N'9639 Homewood Terrace', N'Arrendado', 2, N'No', N'Si', N'Si', CAST(70.22 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (2, 849029947, 831649143, 195733399, NULL, N'Casa', N'Semi Integral', 4, 2, 1, N'Si', N'Si', N'No', N'Si', N'No', N'No', N'Poblado', N'44 Haas Crossing', N'Arrendado', 4, N'No', N'No', N'No', CAST(104.65 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (3, 315057798, 474049097, 847016041, NULL, N'Casa', N'Semi Integral', 4, 2, 4, N'Si', N'Si', N'Si', N'No', N'No', N'No', N'Milagrosa', N'5 Nobel Terrace', N'Por Arrendar', 1, N'Si', N'Si', N'No', CAST(193.53 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (4, 248367564, 440975218, 868003840, NULL, N'Aparta Estudio', N'Integral', 5, 3, 4, N'No', N'Si', N'No', N'No', N'Si', N'Si', N'Rodeo Alto', N'65951 Michigan Trail', N'Arrendado', 3, N'No', N'No', N'Si', CAST(229.62 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (5, 245858956, 700563634, 188312453, NULL, N'Casa', N'Semi Integral', 4, 2, 1, N'No', N'Si', N'No', N'No', N'Si', N'No', N'Campo Valdez', N'0278 Oak Trail', N'Arrendado', 1, N'No', N'Si', N'Si', CAST(85.78 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (6, 476840658, 432530325, 949203869, NULL, N'Casa', N'Integral', 2, 3, 5, N'Si', N'Si', N'Si', N'Si', N'No', N'No', N'Belen San Bernardo', N'4273 Old Shore Junction', N'Arrendado', 2, N'Si', N'No', N'No', CAST(178.11 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (7, 798334309, 754029860, 721437984, NULL, N'Aparta Estudio', N'Semi Integral', 2, 1, 3, N'No', N'Si', N'No', N'Si', N'No', N'No', N'Milagrosa', N'72 Laurel Pass', N'Arrendado', 5, N'No', N'Si', N'Si', CAST(218.81 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (8, 472223383, 952905643, 744752842, NULL, N'Bodega', N'Semi Integral', 3, 1, 4, N'Si', N'No', N'No', N'No', N'Si', N'No', N'Milagrosa', N'70257 4th Plaza', N'Por Arrendar', 1, N'Si', N'Si', N'No', CAST(109.98 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (9, 742246243, 944928465, 473055131, NULL, N'Bodega', N'Integral', 3, 3, 3, N'No', N'No', N'No', N'No', N'No', N'Si', N'Robledo Aures', N'4 International Point', N'Por Arrendar', 5, N'Si', N'No', N'Si', CAST(282.03 AS Decimal(5, 2)))
INSERT [dbo].[INMUEBLES] ([idInmueble], [idAsesor], [idPropietario], [idArrendatario], [IdUsuario], [tipoInmueble], [tipoCocina], [numeroHabitaciones], [numeroPatios], [numeroBaños], [servicioAgua], [serviicioGas], [servicioLuz], [redTelecomunicaciones], [piscinaInmueble], [unidadCerrada], [barrioInmueble], [direccionInmueble], [estadoInmueble], [estratoInmueble], [garajeInmueble], [gymInmueble], [salonSocial], [areaInmueble]) VALUES (10, 445706658, 479646556, 382841423, NULL, N'Bodega', N'Semi Integral', 5, 3, 2, N'Si', N'No', N'No', N'No', N'No', N'No', N'Rodeo Alto', N'2 Quincy Way', N'Arrendado', 4, N'No', N'No', N'No', CAST(64.87 AS Decimal(5, 2)))
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (432530325, N'Othelia', N'Kloska', N'4 Pleasure Circle', N'286 876 1953', N'843 715 5271', N'okloska5@angelfire.com', 229108519, N'Ahorros', 586)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (440975218, N'Artemus', N'Romanetti', N'04 Jenna Court', N'924 996 3080', N'247 427 3841', N'aromanetti3@miitbeian.gov.cn', 15819674, N'Corriente', 628)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (474049097, N'Timoteo', N'Cescoti', N'5 Nelson Terrace', N'482 894 6507', N'548 970 7594', N'tcescoti2@ihg.com', 136211047, N'Corriente', 603)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (479646556, N'Melodie', N'Carnihan', N'439 Havey Center', N'794 381 2554', N'479 187 8719', N'mcarnihan9@howstuffworks.com', 417333049, N'Ahorros', 284)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (700563634, N'Petronella', N'Jaycox', N'52 Center Circle', N'288 783 3959', N'803 481 5741', N'pjaycox4@who.int', 668953536, N'Ahorros', 953)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (754029860, N'Herta', N'Rive', N'0718 Garrison Place', N'969 983 3815', N'109 928 4402', N'hrive6@microsoft.com', 328428451, N'Corriente', 858)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (831649143, N'Gilberta', N'Zolini', N'8 Schiller Center', N'987 584 8889', N'515 624 4666', N'gzolini1@ocn.ne.jp', 314536757, N'Corriente', 339)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (908854893, N'Reinwald', N'Skowcraft', N'9 Lawn Lane', N'246 510 9862', N'595 376 0216', N'rskowcraft0@unc.edu', 472357961, N'Ahorros', 873)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (944928465, N'Conrado', N'Swinfen', N'709 Dorton Avenue', N'396 469 9772', N'846 744 4967', N'cswinfen8@com.com', 342715151, N'Corriente', 503)
INSERT [dbo].[PROPIETARIOS] ([idCedulaPropietario], [nombrePropietario], [apellidoPropietario], [direccionPropietario], [telefonoPropietario], [celularPropietario], [correoPropietario], [numeroCuentaBancaria], [tipoCuenta], [matriculaCasa]) VALUES (952905643, N'Prentiss', N'Tivnan', N'40269 Crescent Oaks Parkway', N'375 924 1262', N'199 780 4116', N'ptivnan7@upenn.edu', 140772412, N'Corriente', 451)
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (1, N'SEDE 1', N'99 Holmberg Pass', N'190 978 2595', N'Belen', N'Vilma Shaefer')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (2, N'SEDE 2', N'309 Summit Trail', N'246 699 5465', N'Robledo', N'Rhea De Atta')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (3, N'SEDE 3', N'71321 Badeau Trail', N'910 449 3975', N'Poblado', N'Dorise Hedan')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (4, N'SEDE 4', N'3 Hanover Junction', N'997 502 7185', N'Manrique', N'Harlen Klos')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (5, N'SEDE 5', N'54 Magdeline Pass', N'349 544 9419', N'Laureles', N'Pooh Frith')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (6, N'SEDE 1', N'240 Buell Hill', N'240 617 9586', N'Belen', N'Glenden Smye')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (7, N'SEDE 2', N'1 Corscot Park', N'181 792 1621', N'Robledo', N'Nicolais Galpin')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (8, N'SEDE 3', N'01 Melvin Trail', N'950 275 6949', N'Poblado', N'Karmen Addicott')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (9, N'SEDE 4', N'0925 Beilfuss Avenue', N'846 658 7734', N'Manrique', N'Hannis Culshaw')
INSERT [dbo].[SEDES] ([idSede], [nombreSede], [direccionSede], [telefonoSede], [nombreBarrio], [nombreAdministrador]) VALUES (10, N'SEDE 5', N'80646 Lakeland Lane', N'154 872 8991', N'Laureles', N'Paige Dorling')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (1, 699609278, 1, 1, N'1', N'$707955.35', N'29hM-IL4b-20LE', N'11/09/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (2, 735706006, 2, 2, N'2', N'$1391414.58', N'49zA-AE5m-4171', N'03/11/2020')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (3, 927338113, 3, 3, N'3', N'$8956636.45', N'50rX-NZYt-54A0', N'14/07/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (4, 155595912, 4, 4, N'4', N'$8312612.66', N'32bA-CFGm-21N0', N'28/01/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (5, 126448440, 5, 5, N'5', N'$7864609.78', N'32xL-FKTg-35WY', N'03/06/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (6, 208438029, 6, 6, N'6', N'$9422152.53', N'09kB-UAeq-90CM', N'04/07/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (7, 529458490, 7, 7, N'7', N'$9268615.19', N'47pM-GZnv-228P', N'04/01/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (8, 969180679, 8, 8, N'8', N'$9139095.42', N'96lD-UZvx-6276', N'18/04/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (9, 369531145, 9, 9, N'9', N'$8479813.71', N'16aH-IDn5-59T5', N'28/02/2021')
INSERT [dbo].[SOLICITUDES] ([IdSolicitud], [IdUsuario], [IdInmueble], [IdCedulaFiador], [CartaLaboralUsuario], [SalarioUsuario], [CertificadoPropiedad], [FechaSolicitud]) VALUES (10, 293648893, 10, 10, N'10', N'$4700889.66', N'20nE-GWfb-83R3', N'31/03/2021')
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (1, 699609278, 1, 12)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (2, 735706006, 2, 37)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (3, 927338113, 3, 73)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (4, 155595912, 4, 5)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (5, 126448440, 5, 39)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (6, 208438029, 6, 16)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (7, 529458490, 7, 14)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (8, 969180679, 8, 3)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (9, 369531145, 9, 39)
INSERT [dbo].[USUARIO_INMUEBLE] ([idUsuInmu], [idUsuario], [idInmueble], [cantidadVisitas]) VALUES (10, 293648893, 10, 98)
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (126448440, N'Blair', N'Jorger', N'Topicstorm', N'899 551 1141', N'bjorger4@psu.edu')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (155595912, N'Dre', N'Vasilechko', N'Feedmix', N'976 776 3676', N'dvasilechko3@time.com')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (208438029, N'Emmerich', N'Pennock', N'Feedfire', N'749 728 8834', N'epennock5@gnu.org')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (293648893, N'Hewett', N'Ofener', N'Fatz', N'653 231 3515', N'hofener9@sourceforge.net')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (369531145, N'Ulla', N'Matton', N'Photobug', N'916 447 6848', N'umatton8@weibo.com')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (529458490, N'Raynell', N'Bockman', N'Edgeclub', N'936 382 3627', N'rbockman6@lulu.com')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (699609278, N'Benita', N'Horsewood', N'Wordpedia', N'139 155 0245', N'bhorsewood0@imgur.com')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (735706006, N'Ilaire', N'Aspital', N'Fivespan', N'281 195 5474', N'iaspital1@e-recht24.de')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (927338113, N'Glennie', N'Degnen', N'Voonix', N'144 348 2226', N'gdegnen2@zdnet.com')
INSERT [dbo].[USUARIOS] ([IDUsuario], [nombreUsuario], [apellidoUsuario], [nombreEmpresa], [celularUsuario], [correoUsuario]) VALUES (969180679, N'Lon', N'Bouchier', N'Wikizz', N'495 615 8403', N'lbouchier7@cloudflare.com')
ALTER TABLE [dbo].[CONTRATOS]  WITH CHECK ADD FOREIGN KEY([idSede])
REFERENCES [dbo].[SEDES] ([idSede])
GO
ALTER TABLE [dbo].[CONTRATOS]  WITH CHECK ADD FOREIGN KEY([idArrendatario])
REFERENCES [dbo].[ARRENDATARIOS] ([idCedulaArrendatario])
GO
ALTER TABLE [dbo].[CONTRATOS]  WITH CHECK ADD FOREIGN KEY([idFiador])
REFERENCES [dbo].[FIADORES] ([idCedulaFiador])
GO
ALTER TABLE [dbo].[INMU_SEDE]  WITH CHECK ADD FOREIGN KEY([idInmueble])
REFERENCES [dbo].[INMUEBLES] ([idInmueble])
GO
ALTER TABLE [dbo].[INMU_SEDE]  WITH CHECK ADD FOREIGN KEY([idSede])
REFERENCES [dbo].[SEDES] ([idSede])
GO
ALTER TABLE [dbo].[INMUEBLES]  WITH CHECK ADD FOREIGN KEY([idAsesor])
REFERENCES [dbo].[ASESORES] ([idCedulaAsesor])
GO
ALTER TABLE [dbo].[INMUEBLES]  WITH CHECK ADD FOREIGN KEY([idArrendatario])
REFERENCES [dbo].[ARRENDATARIOS] ([idCedulaArrendatario])
GO
ALTER TABLE [dbo].[INMUEBLES]  WITH CHECK ADD FOREIGN KEY([idPropietario])
REFERENCES [dbo].[PROPIETARIOS] ([idCedulaPropietario])
GO
ALTER TABLE [dbo].[SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([IdCedulaFiador])
REFERENCES [dbo].[FIADORES] ([idCedulaFiador])
GO
ALTER TABLE [dbo].[SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([IdInmueble])
REFERENCES [dbo].[INMUEBLES] ([idInmueble])
GO
ALTER TABLE [dbo].[SOLICITUDES]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[USUARIOS] ([IDUsuario])
GO
ALTER TABLE [dbo].[USUARIO_INMUEBLE]  WITH CHECK ADD FOREIGN KEY([idInmueble])
REFERENCES [dbo].[INMUEBLES] ([idInmueble])
GO
ALTER TABLE [dbo].[USUARIO_INMUEBLE]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[USUARIOS] ([IDUsuario])
GO
USE [master]
GO
ALTER DATABASE [AgenciaA] SET  READ_WRITE 
GO
