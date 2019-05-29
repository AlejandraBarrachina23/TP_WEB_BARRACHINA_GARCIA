USE [PROMOCION_DB]
GO
/****** Object:  Table [dbo].[Premios]    Script Date: 05/29/2019 02:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Premios](
	[CodigoProducto] [nchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Imagen] [text] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'1         ', N'Auriculares Philips', N'Escucha música todo el día sin interrupciones. Transmite de manera inalámbrica mediante conexión BLUETOOTH® con un emparejamiento sencillo gracias a la tecnología NFC™ One-Touch y una batería duradera de hasta 20 horas de autonomía.', N'http://casarimoldi.com.ar/Image/0/450_450-P02040020.jpg')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'2         ', N'Parlantes Philips', N' El parlante portátil Bluetooth ShoqBox SB500 de Philips es un grandioso dispositivo para aquellos que llevan el ritmo a todas partes. La alta potencia extrema se combina con los graves explosivos, mientras las luces LED brillan al ritmo de la música.', N'https://www.zona112.com/img/productos/parlantes-philips-mms-4040f-21-MH.1')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'3         ', N'Home Theater Sony', N'Da a tus canciones una potencia extra y observa cómo destaca tu parlante con su elegante iluminación. Conecta dos parlantes inalámbricos para un sonido estéreo más amplio y reproduce música todo el día con las 12 horas de duración de la batería.', N'https://http2.mlstatic.com/home-theater-sony-dav-dz810-cornetas-teatro-casero-cine-dvd-D_NQ_NP_767207-MLV29893200058_042019-F.jpg')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'4         ', N'Microcomponente Edifier', N'Disfruta de sonido envolvente genuino a través de entradas directas de seis canales con la tarjeta de sonido de tu equipo, o crea sonido envolvente estéreo 3D procedente de fuentes de dos canales, mediante una conexión de entrada de 3,5 mm o RCA.', N'https://http2.mlstatic.com/edifier-sistema-de-sonido-21-m1370-D_NQ_NP_862419-MLA29463311761_022019-F.jpg')
/****** Object:  Table [dbo].[Participantes]    Script Date: 05/29/2019 02:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participantes](
	[DNI] [nchar](8) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[CodigoPostal] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'28746546', N'Lamas', N'Federico', N'federico.lamas@gmail.com', N'Guido 15', N'Buenos Aires', 1644)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'30524124', N'Regina', N'Falange', N'regina.falange@gmail.com', N'Central Perk 2234', N'Nueva York', 1644)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'34521771', N'Cosme', N'Fulanito', N'cosme.fulanito@gmail.com', N'Avenida Siempre Vivas 123', N'Springfield', 1634)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'34521778', N'Barrachina', N'Alejandra', N'alejandrabarrachina@gmail.com', N'Maipu 2045', N'Buenos Aires', 1646)
/****** Object:  Table [dbo].[Vouchers]    Script Date: 05/29/2019 02:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[CodigoVoucher] [nchar](10) NOT NULL,
	[Participante] [nchar](8) NULL,
	[CodigoProducto] [nchar](10) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[CodigoVoucher] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'AS468FG213', N'34521778', N'2         ', 1)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'PA548FG345', NULL, NULL, 0)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'PE548DS285', NULL, NULL, 0)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'XA123LN112', NULL, NULL, 0)
/****** Object:  Default [DF_Vouchers_Estado]    Script Date: 05/29/2019 02:10:37 ******/
ALTER TABLE [dbo].[Vouchers] ADD  CONSTRAINT [DF_Vouchers_Estado]  DEFAULT ((0)) FOR [Estado]
GO
/****** Object:  ForeignKey [FK_Voucher_Productos]    Script Date: 05/29/2019 02:10:37 ******/
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Productos] FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[Premios] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Voucher_Productos]
GO
/****** Object:  ForeignKey [FK_Voucher_Usuarios]    Script Date: 05/29/2019 02:10:37 ******/
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Usuarios] FOREIGN KEY([Participante])
REFERENCES [dbo].[Participantes] ([DNI])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Voucher_Usuarios]
GO
