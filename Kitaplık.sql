USE [Kitaplık]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[KitapAd] [nvarchar](max) NULL,
	[KitapYazar] [nvarchar](max) NULL,
	[KitapSayfa] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap2]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap2](
	[KitapRenk] [nvarchar](max) NULL,
	[KitapBaskı] [nvarchar](max) NULL,
	[kitapadi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap3]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap3](
	[KitapTur] [nvarchar](max) NULL,
	[Fiyat] [nvarchar](max) NULL,
	[Kitapadi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap4]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap4](
	[KitapBasım] [nvarchar](max) NULL,
	[Fiyat] [nvarchar](max) NULL,
	[kitapAdi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplık5]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplık5](
	[KıtapAdı] [nvarchar](max) NOT NULL,
	[KıtapBasımi] [nvarchar](max) NULL,
	[KıtapResmi] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Final1]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Final1]

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Kitap3] ([KitapTur], [Fiyat], [kitapAdi])
	VALUES ('Roman', 120, 'Madonnanın Kürkü')
          

END
GO
/****** Object:  StoredProcedure [dbo].[Final2]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Final2]

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Kitap3] ([KitapTur], [Fiyat], [Kitapadi])
	VALUES ('Roman', 125, 'Kestane Şekeri')
          

END
GO
/****** Object:  StoredProcedure [dbo].[Final3]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Final3]

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Kitap2] ([KitapRenk], [KitapBaskı], [kitapadi])
	VALUES ('Yeşil', 11, 'Medcezir')
          

END
GO
/****** Object:  StoredProcedure [dbo].[Final4]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Final4]

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Kitap] ([KitapAd], [KitapYazar], [KitapSayfa])
	VALUES ('Çam Ağacı', 'Osman Parlak', 214)
          

END
GO
/****** Object:  StoredProcedure [dbo].[Final5]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Final5]

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [Kitaplık5] ([KıtapAdı], [KıtapBasımi], [KıtapResmi])
	VALUES ('Dağlarımız', 15, 'Dağ')
          

END
GO
/****** Object:  StoredProcedure [dbo].[kitapgetir]    Script Date: 22.01.2021 01:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[kitapgetir]
as
select KitapAd,kitaprenk from Kitap k1 inner join Kitap2 k2
on
k1.KitapAd=k2.kitapadi
GO
