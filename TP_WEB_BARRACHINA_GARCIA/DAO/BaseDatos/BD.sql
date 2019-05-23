USE [PROMOCION_DB]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 05/22/2019 21:51:19 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/22/2019 21:51:19 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 05/22/2019 21:51:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[CodigoProducto] [nchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'1         ', N'Auriculares Philips', N'Escucha música todo el día sin interrupciones. Transmite de manera inalámbrica mediante conexión BLUETOOTH® con un emparejamiento sencillo gracias a la tecnología NFC™ One-Touch y una batería duradera de hasta 20 horas de autonomía.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'2         ', N'Parlantes Philips', N' El parlante portátil Bluetooth ShoqBox SB500 de Philips es un grandioso dispositivo para aquellos que llevan el ritmo a todas partes. La alta potencia extrema se combina con los graves explosivos, mientras las luces LED brillan al ritmo de la música.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'3         ', N'Home Theater Sony', N'Da a tus canciones una potencia extra y observa cómo destaca tu parlante con su elegante iluminación. Conecta dos parlantes inalámbricos para un sonido estéreo más amplio y reproduce música todo el día con las 12 horas de duración de la batería.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'4         ', N'Microcomponente Edifier', N'Disfruta de sonido envolvente genuino a través de entradas directas de seis canales con la tarjeta de sonido de tu equipo, o crea sonido envolvente estéreo 3D procedente de fuentes de dos canales, mediante una conexión de entrada de 3,5 mm o RCA.')
