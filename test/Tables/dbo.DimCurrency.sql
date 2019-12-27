SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimCurrency] (
		[CurrencyKey]             [int] IDENTITY(1, 1) NOT NULL,
		[CurrencyLabel]           [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CurrencyName]            [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CurrencyDescription]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ETLLoadID]               [int] NULL,
		[LoadDate]                [datetime] NULL,
		[UpdateDate]              [datetime] NULL,
		[prueba]                  [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [AK_DimCurrency_CurrencyLabel]
		UNIQUE
		NONCLUSTERED
		([CurrencyLabel])
		ON [PRIMARY],
		CONSTRAINT [PK_DimCurrency_CurrencyKey]
		PRIMARY KEY
		CLUSTERED
		([CurrencyKey])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] SET (LOCK_ESCALATION = TABLE)
GO
