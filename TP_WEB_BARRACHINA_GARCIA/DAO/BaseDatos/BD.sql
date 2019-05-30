USE [PROMOCION_DB]
GO
/****** Object:  Table [dbo].[Premios]    Script Date: 05/30/2019 17:31:00 ******/
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
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'1         ', N'GUITARRA TAYLOR 110E', N'Este Taylor Dreadnought combina el dorso y los lados en capas de nogal con una cubierta de abeto macizo, que emite un tono de voz plena que responde a los rasguños y los aplanadores con bajos profundos, medios fuertes y notas agudas claras. Cuenta con el poderoso tono de acorazado que los recolectores de la vieja escuela esperan, con bajos profundos y agudos.', N'http://atlas-content-cdn.pixelsquid.com/stock-images/classical-guitar-acoustic-ex0MwJ8-600.jpg')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'2         ', N'BATERIA MAPEX PRODIGY', N'Lo que hace que el Blaster sea único es la combinación precisa de los materiales seleccionados, el diseño del borde de la carcasa y del cojinete, el perfil del contrahoque y la elección de la cabeza del tambor. El resultado es un sonido oscuro, concentrado y explosivo que permite que cada nota esté bellamente articulada y proyectada fuertemente.', N'http://atlas-content-cdn.pixelsquid.com/stock-images/drum-kit-z07Ek34-600.jpg')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'3         ', N'VIOLIN JAY HAIDE 100', N'Todos los violines Jay Haide están hechos a mano de arce y abeto sazonados de calidad y tienen una calidad de tono y mano de obra que normalmente se encuentran en instrumentos que cuestan mucho más. Este modelo es una excelente opción para jugadores principiantes o intermedios.  Están disponibles en tamaño completo y en fracciones; desde 3/4 violín hasta 1/8 violín.', N'http://atlas-content-cdn.pixelsquid.com/stock-images/cello-y1JkWaB-600.jpg')
INSERT [dbo].[Premios] ([CodigoProducto], [Nombre], [Descripcion], [Imagen]) VALUES (N'4         ', N'ROLAND VR 730', N'El V-Combo VR-730 ofrece sonidos de órgano, piano eléctrico, piano acústico y sintetizador de alta calidad en un instrumento listo para viajar con un teclado de cascada de 73 notas.  El V-Combo VR-730 es el instrumento perfecto para los artistas profesionales en movimiento, que brindan sonidos versátiles y listos para tocar en un paquete altamente móvil.', N'http://atlas-content-cdn.pixelsquid.com/stock-images/synthesizer-keyboard-8J5wnD3-600.jpg')
/****** Object:  Table [dbo].[Participantes]    Script Date: 05/30/2019 17:31:00 ******/
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
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'25354894', N'Beatriz', N'Lamas', N'beatriz.lamas@gmail.com', N'Av salvador del carril 2281', N'Buenos Aires', 7200)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'28746546', N'Lamas', N'Federico', N'federico.lamas@gmail.com', N'Guido 15', N'Buenos Aires', 1644)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'30524124', N'Regina', N'Falange', N'regina.falange@gmail.com', N'Central Perk 2234', N'Nueva York', 1644)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'34521771', N'Barrachina', N'Alejandra', N'alejandrabarrachina23@gmail.com', N'Maipu 2045', N'Buenos Aires', 1646)
INSERT [dbo].[Participantes] ([DNI], [Nombre], [Apellido], [Mail], [Direccion], [Ciudad], [CodigoPostal]) VALUES (N'34521779', N'Cosme', N'Fulanito', N'cosme.fulanito@gmail.com', N'Avenida Siempre Vivas 123', N'Springfield', 1634)
/****** Object:  Table [dbo].[Vouchers]    Script Date: 05/30/2019 17:31:00 ******/
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
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'AS468FG213', N'34521771', N'1         ', 1)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'OA458FS489', NULL, NULL, 0)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'PA548FG345', N'34521771', N'1         ', 1)
INSERT [dbo].[Vouchers] ([CodigoVoucher], [Participante], [CodigoProducto], [Estado]) VALUES (N'XA123LN112', NULL, NULL, 0)
/****** Object:  Default [DF_Vouchers_Estado]    Script Date: 05/30/2019 17:31:00 ******/
ALTER TABLE [dbo].[Vouchers] ADD  CONSTRAINT [DF_Vouchers_Estado]  DEFAULT ((0)) FOR [Estado]
GO
/****** Object:  ForeignKey [FK_Voucher_Productos]    Script Date: 05/30/2019 17:31:00 ******/
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Productos] FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[Premios] ([CodigoProducto])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Voucher_Productos]
GO
/****** Object:  ForeignKey [FK_Voucher_Usuarios]    Script Date: 05/30/2019 17:31:00 ******/
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Usuarios] FOREIGN KEY([Participante])
REFERENCES [dbo].[Participantes] ([DNI])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Voucher_Usuarios]
GO
