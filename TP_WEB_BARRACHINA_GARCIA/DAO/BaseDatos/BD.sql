USE [PROMOCION_DB]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 05/19/2019 23:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[CodigoVoucher] [nchar](10) NOT NULL,
	[Ganador] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Voucher] ([CodigoVoucher], [Ganador]) VALUES (N'V548S548A2', 0)
INSERT [dbo].[Voucher] ([CodigoVoucher], [Ganador]) VALUES (N'I845A489O1', 0)
INSERT [dbo].[Voucher] ([CodigoVoucher], [Ganador]) VALUES (N'B487A654Z2', 1)
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/19/2019 23:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[DNI] [nchar](8) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[CodigoPostal] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 05/19/2019 23:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[CodigoProducto] [nchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO