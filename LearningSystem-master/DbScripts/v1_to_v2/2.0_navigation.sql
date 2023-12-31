
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Navigatio__Nav_I__72910220]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Navigation] DROP CONSTRAINT [DF__Navigatio__Nav_I__72910220]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Navigatio__Nav_I__73852659]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Navigation] DROP CONSTRAINT [DF__Navigatio__Nav_I__73852659]
END

GO


/****** Object:  Table [dbo].[Navigation]    Script Date: 09/12/2022 22:50:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Navigation]') AND type in (N'U'))
DROP TABLE [dbo].[Navigation]
GO

GO
/****** Object:  Table [dbo].[Navigation]    Script Date: 01/03/2023 10:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation](
	[Nav_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nav_PID] [nvarchar](255) NULL,
	[Nav_Name] [nvarchar](255) NULL,
	[Nav_EnName] [nvarchar](255) NULL,
	[Nav_Url] [nvarchar](1000) NULL,
	[Nav_Target] [nvarchar](255) NULL,
	[Nav_Event] [nvarchar](max) NULL,
	[Nav_Image] [nvarchar](255) NULL,
	[Nav_Color] [nvarchar](255) NULL,
	[Nav_Font] [nvarchar](255) NULL,
	[Nav_Child] [int] NOT NULL,
	[Nav_Tax] [int] NOT NULL,
	[Nav_Intro] [nvarchar](255) NULL,
	[Nav_Title] [nvarchar](255) NULL,
	[Nav_Type] [nvarchar](255) NULL,
	[Nav_Site] [nvarchar](255) NULL,
	[Nav_CrtTime] [datetime] NOT NULL,
	[Nav_IsShow] [bit] NOT NULL,
	[Nav_IsBold] [bit] NOT NULL,
	[Nav_Logo] [nvarchar](255) NULL,
	[Org_ID] [int] NOT NULL,
	[Org_Name] [nvarchar](255) NULL,
	[Nav_UID] [nvarchar](255) NULL,
	[Nav_Icon] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaNavigation_PK] PRIMARY KEY NONCLUSTERED 
(
	[Nav_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'帊ꪃ梫五Ⲹ麣Ꭱ䗫' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'촋鍠澷䱷ꖭᖮ콽쏀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_PID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_PID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_PID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䅑䙹䵔䎒⅐ꑂ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'祰任�万袀ᚵꠂ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_EnName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_EnName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_EnName'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'뚑�忦䐰⊁臋ಟ⎖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Url'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'龵⻅�䈮㢒滸硱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Target' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Target' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'镱�鬊䍲㮚錂吙堰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�檣杭䛩බ᧡䴾�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Image' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Image'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䪭幬২亝춠颏ǻ훕' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'୳訠腹䫾ꆓ炦䇣⚄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㭂⛓䛺ꖚ婮㼚' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Child' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Child' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Child'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'魴놏领俬슁䖠Ⴋ冰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䙛┶ἳ䓠ằⴡﴗ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'떣늨㺇䍯示౗✾' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Title' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Title' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Title'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'闢绶셥䪋ⶡ�뻦䧑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'빶醈䂭�詐譈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_Site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_Site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_Site'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'媸䲖묟䖄螌劔狔ɂ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_CrtTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_CrtTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_CrtTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'磼ꨂ䝻⺤䆌拡콭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'True/False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'�쐈䑃斟힓䤦' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'True/False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Nav_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Nav_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation', @level2type=N'COLUMN',@level2name=N'Nav_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2014/5/27 9:25:20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2014/6/19 10:01:29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Navigation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Navigation'
GO
SET IDENTITY_INSERT [dbo].[Navigation] ON
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (2, N'', N'首页', N'', N'/default.ashx', N'', NULL, NULL, N'', N'', 0, 1, N'', N'', N'main', N'web', CAST(0x0000A33C00B8ABC8 AS DateTime), 1, 0, N'201608240908032030.jpg', 3, NULL, N'2', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (6, N'', N'课程中心', N'', N'/Courses.ashx', N'', NULL, NULL, N'', N'', 0, 18, N'', N'课程中心', N'main', N'web', CAST(0x0000A33C00E8254C AS DateTime), 1, 0, NULL, 3, NULL, N'6', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (11, N'', N'通知公告', N'', N'/notices.ashx', N'', NULL, NULL, N'', N'', 0, 5, N'', N'', N'foot', N'web', CAST(0x0000A33D01140360 AS DateTime), 1, 0, NULL, 3, NULL, N'11', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (12, N'', N'新闻资讯', N'', N'/news.ashx', N'', NULL, NULL, N'', N'', 0, 6, N'', N'', N'foot', N'web', CAST(0x0000A33D011421D8 AS DateTime), 1, 0, NULL, 3, NULL, N'12', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (13, N'', N'机构管理', N'', N'/admin/index.ashx', N'_blank', NULL, NULL, N'#003562', N'', 0, 7, N'', N'', N'foot', N'web', CAST(0x0000A33D01143BA0 AS DateTime), 1, 1, NULL, 3, NULL, N'13', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (14, N'', N'友情链接', N'', N'/links.ashx', N'', NULL, NULL, N'', N'', 0, 8, N'', N'', N'foot', N'web', CAST(0x0000A33D01145694 AS DateTime), 1, 0, NULL, 3, NULL, N'14', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (15, N'', N'关于我们', N'', N'/about.ashx', N'', NULL, NULL, N'', N'', 0, 9, N'', N'', N'foot', N'web', CAST(0x0000A33D01147188 AS DateTime), 1, 0, NULL, 3, NULL, N'15', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (16, N'', N'联系我们', N'', N'/Contactus.ashx', N'', NULL, NULL, N'', N'', 0, 12, N'', N'', N'foot', N'web', CAST(0x0000A33D01148ED4 AS DateTime), 1, 0, NULL, 3, NULL, N'16', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (21, N'', N'教师', N'', N'/teacher/List.ashx', N'', NULL, NULL, N'', N'', 0, 19, N'', N'', N'main', N'web', CAST(0x0000A33D011EA5A4 AS DateTime), 0, 0, NULL, 3, NULL, N'21', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (22, N'', N'在线练习', N'', N'/Training.ashx', N'', NULL, NULL, N'', N'', 0, 20, N'', N'', N'main', N'web', CAST(0x0000A33D011EEBF4 AS DateTime), 1, 0, NULL, 3, NULL, N'22', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (26, N'', N'测试', N'', N'/test.ashx', N'', NULL, NULL, N'', N'', 0, 22, N'', N'', N'main', N'web', CAST(0x0000A33D01207104 AS DateTime), 0, 0, NULL, 3, NULL, N'26', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (27, N'', N'在线考试', N'', N'/exam.ashx', N'', NULL, NULL, N'', N'', 0, 21, N'', N'', N'main', N'web', CAST(0x0000A33D01207F14 AS DateTime), 1, 0, NULL, 3, NULL, N'27', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (47, N'', N'工作动态', NULL, N'/newslist.ashx?colid=5', N'', NULL, NULL, N'', N'', 0, 17, N'', N'', N'main', N'web', CAST(0x0000A67E00B20357 AS DateTime), 1, 0, NULL, 3, N'郑州市司法局网络培训学院', N'47', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (48, N'', N'新闻中心', NULL, N'/news.ashx', N'', NULL, NULL, N'', N'', 0, 4, N'', N'', N'main', N'web', CAST(0x0000A67E00B2112F AS DateTime), 1, 0, NULL, 3, N'郑州市司法局网络培训学院', N'48', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (49, N'', N'在线帮助', NULL, N'/newslist.ashx?colid=11', N'', NULL, NULL, N'', N'', 0, 23, N'', N'', N'main', N'web', CAST(0x0000A67E00B2209D AS DateTime), 0, 0, NULL, 3, N'郑州市司法局网络培训学院', N'49', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (50, N'', N'关于我们', NULL, N'/about.ashx', N'', NULL, NULL, N'', N'', 0, 24, N'', N'', N'main', N'web', CAST(0x0000A67E00B229ED AS DateTime), 1, 0, NULL, 3, N'郑州市司法局网络培训学院', N'50', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (51, N'', N'政策法规', NULL, N'/newslist.ashx?colid=6', N'', NULL, NULL, N'', N'', 0, 15, N'', N'', N'main', N'web', CAST(0x0000A67E00B2DC20 AS DateTime), 1, 0, NULL, 3, N'郑州市司法局网络培训学院', N'51', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (52, N'48', N'国内新闻', NULL, N'/newslist.ashx?colid=8', N'', NULL, NULL, N'', N'', 0, 0, N'', N'', N'main', N'web', CAST(0x0000A68D0158889E AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'52', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (53, N'48', N'省内新闻', NULL, N'/newslist.ashx?colid=9', N'', NULL, NULL, N'', N'', 0, 1, N'', N'', N'main', N'web', CAST(0x0000A68D0159EE63 AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'53', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (54, N'48', N'工作动态', NULL, N'/newslist.ashx?colid=5', N'', NULL, NULL, N'', N'', 0, 2, N'', N'', N'main', N'web', CAST(0x0000A68D015A05E6 AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'54', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (57, N'6', N'十八届五中全会精神', NULL, N'/Courses.ashx?sbjid=94', N'', NULL, NULL, N'', N'', 0, 0, N'', N'', N'main', N'web', CAST(0x0000A68F017DD18E AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'57', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (58, N'6', N'两学一做', NULL, N'/Courses.ashx?sbjid=92', N'', NULL, NULL, N'', N'', 0, 1, N'', N'', N'main', N'web', CAST(0x0000A68F017E0268 AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'58', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (59, N'', N'通知公告', NULL, N'/notices.ashx', N'', NULL, NULL, N'', N'', 0, 14, N'', N'', N'main', N'web', CAST(0x0000A68F017E5D11 AS DateTime), 1, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'59', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (60, N'52', N'司法资讯', NULL, N'', N'', NULL, NULL, N'', N'', 0, 0, N'', N'', N'main', N'web', CAST(0x0000A6900102A4E6 AS DateTime), 0, 0, NULL, 3, N'郑州市司法系统学法用法平台', N'60', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (61, N'', N'首页', NULL, N'/default.ashx', N'', NULL, NULL, N'', N'', 0, 0, N'', N'', N'main', N'web', CAST(0x0000A6CB00BB1D0E AS DateTime), 0, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'61', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (62, N'', N'课程', NULL, N'/Courses.ashx', N'', NULL, NULL, N'', N'', 0, 1, N'', N'课程中心', N'main', N'web', CAST(0x0000A6CB00BB5EF0 AS DateTime), 1, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'62', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (63, N'', N'新闻', NULL, N'/news.ashx', N'', NULL, NULL, N'', N'', 0, 2, N'', N'', N'main', N'web', CAST(0x0000A6CB00BC4016 AS DateTime), 1, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'63', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (646, N'', N'通知公告', NULL, N'/web/notice', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, N'foot', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'80', N'e697')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (635, N'', N'首页', NULL, N'/', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, NULL, N'8b6a174de0e1ecceede7106127e7d83a', N'a020')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (636, N'', N'课程中心', NULL, N'/web/Course', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'68', N'e813')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (637, N'', N'IT学院', NULL, N'/web/Course?sbjid=107', NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 0, 0, NULL, 4, N'云课堂网校平台', N'69', N'a003')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (638, N'69', N'三级菜单', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'76', N'e711')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (639, N'76', N'下拉菜单测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'75', N'a01f')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (640, N'69', N'自定义菜单项', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'77', N'a046')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (641, N'', N'直播', NULL, N'/live.ashx', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 0, 0, NULL, 4, N'郑州微厦计算机科技有限公司', N'110', N'e84a')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (642, N'', N'考务中心', NULL, N'/web/exam', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'72', N'e810')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (643, N'', N'新闻资讯', NULL, N'/web/news', NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'73', N'e75c')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (644, N'', N'通知公告', NULL, N'/web/notice', NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, NULL, N'8106f4b832995ffcd174b5274c85a40e', N'e697')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (645, N'', N'关于我们', NULL, N'/web/about', NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, NULL, N'main', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, NULL, N'f883521693b859158123f9bd9e835d99', N'e67d')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (647, N'', N'新闻资讯', NULL, N'/web/news', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, N'foot', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'81', N'e75c')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (91, N'', N'自定义菜单2', NULL, N'', N'', NULL, NULL, N'', N'', 0, 1, N'', N'', N'main', N'mobi', CAST(0x0000A72501177459 AS DateTime), 1, 0, N'201702250523350090.jpg', 2, N'郑州微厦计算机科技有限公司', N'91', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (92, N'', N'自定义菜单1', NULL, N'', N'', NULL, NULL, N'', N'', 0, 0, N'', N'', N'main', N'mobi', CAST(0x0000A72501178B61 AS DateTime), 1, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'92', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (93, N'', N'自定义菜单3', NULL, N'', N'', NULL, NULL, N'', N'', 0, 2, N'', N'', N'main', N'mobi', CAST(0x0000A725011AE68D AS DateTime), 1, 0, N'201702250524198570.jpg', 2, N'郑州微厦计算机科技有限公司', N'93', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (64, N'', N'教师', NULL, N'/teacher/List.ashx', N'', NULL, NULL, N'', N'', 0, 3, N'', N'', N'main', N'web', CAST(0x0000A6CB00BC5E35 AS DateTime), 0, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'64', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (65, N'', N'练习', NULL, N'/Training.ashx', N'', NULL, NULL, N'', N'', 0, 4, N'', N'', N'main', N'web', CAST(0x0000A6CB00BC75E7 AS DateTime), 0, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'65', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (66, N'', N'测试', NULL, N'/test.ashx', N'', NULL, NULL, N'', N'', 0, 5, N'', N'', N'main', N'web', CAST(0x0000A6CB00BC8EDB AS DateTime), 1, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'66', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (67, N'', N'考试', NULL, N'/exam.ashx', N'', NULL, NULL, N'', N'', 0, 6, N'', N'', N'main', N'web', CAST(0x0000A6CB00BCBB76 AS DateTime), 1, 0, NULL, 2, N'郑州微厦计算机科技有限公司', N'67', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (648, N'', N'机构管理', NULL, N'/orgadmin', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, NULL, N'foot', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'82', N'a038')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (649, N'', N'关于我们', NULL, N'/web/about', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, N'foot', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'83', N'e67d')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (650, N'', N'联系我们', NULL, N'/web/conn', NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, N'foot', N'web', CAST(0xFFFF2E4600000000 AS DateTime), 0, 0, NULL, 4, N'云课堂网校平台', N'84', N'e751')
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (634, N'', N'newnode-7713', NULL, N'11', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, N'11', N'foot', N'mobi', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, NULL, N'df133f5a9d69cae7809d5c35f141cc75', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (344, N'', N'教师风采', NULL, N'/mobile/teachers.ashx', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, N'main', N'mobi', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'云课堂网校平台', N'94', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (345, N'', N'精品推荐', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, N'main', N'mobi', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'郑州微厦计算机科技有限公司', N'104', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (346, N'', N'热门专业', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, NULL, N'main', N'mobi', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'郑州微厦计算机科技有限公司', N'108', NULL)
INSERT [dbo].[Navigation] ([Nav_ID], [Nav_PID], [Nav_Name], [Nav_EnName], [Nav_Url], [Nav_Target], [Nav_Event], [Nav_Image], [Nav_Color], [Nav_Font], [Nav_Child], [Nav_Tax], [Nav_Intro], [Nav_Title], [Nav_Type], [Nav_Site], [Nav_CrtTime], [Nav_IsShow], [Nav_IsBold], [Nav_Logo], [Org_ID], [Org_Name], [Nav_UID], [Nav_Icon]) VALUES (347, N'', N'软件开发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, NULL, N'main', N'mobi', CAST(0xFFFF2E4600000000 AS DateTime), 1, 0, NULL, 4, N'郑州微厦计算机科技有限公司', N'105', NULL)
SET IDENTITY_INSERT [dbo].[Navigation] OFF
