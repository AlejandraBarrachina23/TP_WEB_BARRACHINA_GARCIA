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
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'1         ', N'Auriculares Philips', N'Escucha m�sica todo el d�a sin interrupciones. Transmite de manera inal�mbrica mediante conexi�n BLUETOOTH� con un emparejamiento sencillo gracias a la tecnolog�a NFC� One-Touch y una bater�a duradera de hasta 20 horas de autonom�a.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'2         ', N'Parlantes Philips', N' El parlante port�til Bluetooth ShoqBox SB500 de Philips es un grandioso dispositivo para aquellos que llevan el ritmo a todas partes. La alta potencia extrema se combina con los graves explosivos, mientras las luces LED brillan al ritmo de la m�sica.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'3         ', N'Home Theater Sony', N'Da a tus canciones una potencia extra y observa c�mo destaca tu parlante con su elegante iluminaci�n. Conecta dos parlantes inal�mbricos para un sonido est�reo m�s amplio y reproduce m�sica todo el d�a con las 12 horas de duraci�n de la bater�a.')
INSERT [dbo].[Productos] ([CodigoProducto], [Nombre], [Descripcion]) VALUES (N'4         ', N'Microcomponente Edifier', N'Disfruta de sonido envolvente genuino a trav�s de entradas directas de seis canales con la tarjeta de sonido de tu equipo, o crea sonido envolvente est�reo 3D procedente de fuentes de dos canales, mediante una conexi�n de entrada de 3,5 mm o RCA.')
