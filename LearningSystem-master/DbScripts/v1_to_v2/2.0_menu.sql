

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Ro__01D345B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Ro__01D345B0]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Ta__02C769E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Ta__02C769E9]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__03BB8E22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__03BB8E22]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__04AFB25B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__04AFB25B]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__05A3D694]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__05A3D694]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__0697FACD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__0697FACD]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_St__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_St__078C1F06]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Wi__0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Wi__0880433F]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Wi__09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Wi__09746778]
END

GO



/****** Object:  Table [dbo].[ManageMenu]    Script Date: 09/12/2022 21:13:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManageMenu]') AND type in (N'U'))
DROP TABLE [dbo].[ManageMenu]
GO




IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__Dep_Id__7BB05806]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__Dep_Id__7BB05806]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__EGrp_Id__7CA47C3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__EGrp_Id__7CA47C3F]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__Posi_Id__7D98A078]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__Posi_Id__7D98A078]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__MM_Id__7E8CC4B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__MM_Id__7E8CC4B1]
END

GO


/****** Object:  Table [dbo].[Purview]    Script Date: 09/12/2022 21:18:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Purview]') AND type in (N'U'))
DROP TABLE [dbo].[Purview]
GO



/****** Object:  Table [dbo].[Purview]    Script Date: 01/07/2023 16:51:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purview](
	[Pur_Id] [int] IDENTITY(1,1) NOT NULL,
	[Dep_Id] [int] NOT NULL,
	[EGrp_Id] [int] NOT NULL,
	[Posi_Id] [int] NOT NULL,
	[MM_UID] [nvarchar](50) NULL,
	[Pur_State] [nvarchar](50) NULL,
	[Pur_Type] [nvarchar](50) NULL,
	[Org_ID] [int] NOT NULL,
	[Olv_ID] [int] NOT NULL,
 CONSTRAINT [aaaaaPurview_PK] PRIMARY KEY NONCLUSTERED 
(
	[Pur_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Dep_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Dep_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EGrp_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EGrp_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Posi_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Posi_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2013/1/30 6:54:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2013/1/30 6:54:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'70' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
SET IDENTITY_INSERT [dbo].[Purview] ON
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2197, 0, 0, 0, N'a2d8c81ec24efe439b4c9b2d139e99fe', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2198, 0, 0, 0, N'f9b11e7920f6ab15ead04eeafb511830', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2199, 0, 0, 0, N'8546016f8e1c6e078b5dddd0eab7920d', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2200, 0, 0, 0, N'b50ea4a3ed65be9d39651c1f1ecf014c', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2201, 0, 0, 0, N'53774f25cbb2a6248bdc4b5783d1f842', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2202, 0, 0, 0, N'19c839b6968161696712b7e7b76c9772', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2203, 0, 0, 0, N'651397af8465c643284ff8e137fd8079', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2204, 0, 0, 0, N'606b87e461d6b43e1ff789ad9b1b11c2', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2205, 0, 0, 0, N'f2b59e41fb0d29f16707ad11b590e686', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2206, 0, 0, 0, N'5f81b3a13ce40cdc0525d3346bcdc682', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2207, 0, 0, 0, N'7505573f225da91c421b31e8e950aa16', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2208, 0, 0, 0, N'fdffc2a7aa807909b9c259169c70794d', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2209, 0, 0, 0, N'e3346bd15202ce654c42f126d2153a41', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2210, 0, 0, 0, N'5f8650559e67d7aee0865ab46abc57e5', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2211, 0, 0, 0, N'5f3a00f6661e44c530939cb7ad74845f', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2212, 0, 0, 0, N'1639834362028', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2213, 0, 0, 0, N'c68451aaa777687e559756c9f02f68d3', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2214, 0, 0, 0, N'8a539ecff79b6ede1b38b2a8380e86cd', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2215, 0, 0, 0, N'fc60823be11ec1b67cbc8865085928ca', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2216, 0, 0, 0, N'acc513b05fe589c27716631c54ef30f8', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2217, 0, 0, 0, N'1639658295720', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2218, 0, 0, 0, N'4be6e84aeacaec7514680b72499b7c19', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2219, 0, 0, 0, N'185d53f8d69610c63281766012d17a8d', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2220, 0, 0, 0, N'e99f9b903ccc0bdefdbca97abcc9f4b1', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2221, 0, 0, 0, N'df3455c4a980c841604b55dc6651a92f', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2222, 0, 0, 0, N'9bbdcbde47d569e6a9d5c59a8947a445', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2223, 0, 0, 0, N'5469dba2b4b8d54745500eea8c1ba089', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2224, 0, 0, 0, N'99e3c10a6ff4c0af38d4ad6551662222', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2225, 0, 0, 0, N'0df6f2c3642c081462a35f1f1ada550a', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2226, 0, 0, 0, N'caedac420273252de2dadfd450a98382', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2227, 0, 0, 0, N'1642663352817', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2228, 0, 0, 0, N'1641613171019', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2229, 0, 0, 0, N'7c5f1c92ee9e6c364a46c755df860b26', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2230, 0, 0, 0, N'22475af5e44f46286660708fb4f2c4c9', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2231, 0, 0, 0, N'1641735504763', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2232, 0, 0, 0, N'501e00e137aebb030d30b8de30edec06', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2233, 0, 0, 0, N'ca6c8e9988678ea4bc089a98d64dbe43', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2234, 0, 0, 0, N'02d9f63ce76365a7d986e0b0a0ea70e4', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2235, 0, 0, 0, N'b632ee17275095c13cfb8055129c59cd', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2236, 0, 0, 0, N'17ed5191fd4a3b9d3fc366a1cda5b4dc', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2237, 0, 0, 0, N'3ed08ea8c3a6dbbb0b14535e27357061', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2238, 0, 0, 0, N'3a108c8fbb70ddb57532149a214bc427', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2239, 0, 0, 0, N'1641640249725', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2240, 0, 0, 0, N'82809d1a369ab3c44c330c909a532866', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2241, 0, 0, 0, N'83f7721be4b7779ce3f097a59b81adb9', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2242, 0, 0, 0, N'6b83ad54dc5319393f4eaf23b6ae14c8', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2243, 0, 0, 0, N'cc6e884e86541560bddc33e539cfdbc7', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2244, 0, 0, 0, N'e32ff65ff0db40c9d569a80d95550c25', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2245, 0, 0, 0, N'1673081413592', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (2246, 0, 0, 0, N'b486c9a4eca4cc594585bd6639e281fe', NULL, N'orglevel', 0, 5)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1834, 0, 0, 0, N'99e3c10a6ff4c0af38d4ad6551662222', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1835, 0, 0, 0, N'9570d28a7c77d0137551fa4d499e9988', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1836, 0, 0, 0, N'e61b2ed6eed9cb98323eadfde84d1d99', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1837, 0, 0, 0, N'0df6f2c3642c081462a35f1f1ada550a', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1838, 0, 0, 0, N'caedac420273252de2dadfd450a98382', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1839, 0, 0, 0, N'1641613171019', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1840, 0, 0, 0, N'7c5f1c92ee9e6c364a46c755df860b26', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1841, 0, 0, 0, N'22475af5e44f46286660708fb4f2c4c9', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1842, 0, 0, 0, N'1641735504763', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1843, 0, 0, 0, N'501e00e137aebb030d30b8de30edec06', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1844, 0, 0, 0, N'ca6c8e9988678ea4bc089a98d64dbe43', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1845, 0, 0, 0, N'02d9f63ce76365a7d986e0b0a0ea70e4', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1846, 0, 0, 0, N'b632ee17275095c13cfb8055129c59cd', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1847, 0, 0, 0, N'17ed5191fd4a3b9d3fc366a1cda5b4dc', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1848, 0, 0, 0, N'3ed08ea8c3a6dbbb0b14535e27357061', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1849, 0, 0, 0, N'3a108c8fbb70ddb57532149a214bc427', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1850, 0, 0, 0, N'1641640249725', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1851, 0, 0, 0, N'82809d1a369ab3c44c330c909a532866', NULL, N'orglevel', 0, 1)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_UID], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (1852, 0, 0, 0, N'83f7721be4b7779ce3f097a59b81adb9', NULL, N'orglevel', 0, 1)
SET IDENTITY_INSERT [dbo].[Purview] OFF
/****** Object:  Table [dbo].[ManageMenu]    Script Date: 01/07/2023 16:51:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageMenu](
	[MM_Id] [int] IDENTITY(1,1) NOT NULL,
	[MM_Name] [nvarchar](100) NOT NULL,
	[MM_Type] [nvarchar](50) NULL,
	[MM_Root] [int] NOT NULL,
	[MM_Link] [nvarchar](255) NULL,
	[MM_Marker] [nvarchar](255) NULL,
	[MM_Tax] [int] NOT NULL,
	[MM_PatId] [nvarchar](255) NULL,
	[MM_Color] [nvarchar](50) NULL,
	[MM_Font] [nvarchar](50) NULL,
	[MM_IsBold] [bit] NOT NULL,
	[MM_IsItalic] [bit] NOT NULL,
	[MM_IcoS] [nvarchar](255) NULL,
	[MM_IcoB] [nvarchar](255) NULL,
	[MM_IsUse] [bit] NOT NULL,
	[MM_IsShow] [bit] NOT NULL,
	[MM_Intro] [nvarchar](255) NULL,
	[MM_IsChilds] [bit] NOT NULL,
	[MM_Func] [nvarchar](50) NULL,
	[MM_WinWidth] [int] NOT NULL,
	[MM_WinHeight] [int] NOT NULL,
	[MM_IcoX] [int] NOT NULL,
	[MM_IcoY] [int] NOT NULL,
	[MM_UID] [nvarchar](255) NULL,
	[MM_WinMin] [bit] NOT NULL,
	[MM_WinMax] [bit] NOT NULL,
	[MM_WinMove] [bit] NOT NULL,
	[MM_WinResize] [bit] NOT NULL,
	[MM_WinID] [nvarchar](255) NULL,
	[MM_AbbrName] [nvarchar](255) NULL,
	[MM_IsFixed] [bit] NOT NULL,
	[MM_Help] [nvarchar](1000) NULL,
	[MM_Complete] [int] NOT NULL,
 CONSTRAINT [aaaaaManageMenu_PK] PRIMARY KEY NONCLUSTERED 
(
	[MM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1080' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䏯꟮䕃鮪뗖䵲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2760' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'հ碱얚䤇劽ꉸ�늊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'戊恥䊻➇⥸惰玑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쓽�黫䛚ﲟᡴ覈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Root' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Root' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'턡ﾟᅗ䰡�ᩢ㳧泞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'቙跽⍠䳹ﾄ㨲㱢̿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Marker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Marker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'頢ꋭ㓰䨚㪵ⶵꫡ瘯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'蕾筍䣣잯稨俪' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_PatId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_PatId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⻚촫䳀ኳꓻ쪌⠋' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䙪쫔뉃䴐⍱䡍朙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ض㞝䑒늾覈ꗡ퀃' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㟳ᚴ䵒䊈跆躼ꗒ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsItalic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsItalic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'睛帞䘮䀿璷�꼆祡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IcoS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IcoS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'싟�䫣䴣﮸뗐믵뤻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IcoB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IcoB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'벓䉭咒ᙕ놩遢' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsUse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsUse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⌞艭뿱乞ẅ馲䈱敍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'팇퐏쮦䱉ꮤ鹰㶘쨾' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䐖鋖ꎩ䈢겒୙ᓥょ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsChilds'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㉶�駯䪀颦횮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Func' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Func' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'뻦�ᓭ争ꚓᇀ敚획' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_WinWidth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_WinWidth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'檧츘胖䨁玳叒拀⡤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_WinHeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_WinHeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2014/9/15 9:42:35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2014/9/15 9:42:35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统管理菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'242' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
SET IDENTITY_INSERT [dbo].[ManageMenu] ON
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6881, N'常规', N'item', 88, N'/manage/Platform/Platinfo', NULL, 0, N'651', NULL, NULL, 0, 0, N'a030', NULL, 1, 1, NULL, 0, N'func', 0, 0, 90, 101, N'6362b3b6a38c5c7b976fa64e40219e46', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (88, N'系统设置', N'item', 88, NULL, N'system', 3, N'0', NULL, NULL, 0, 0, N'a038', NULL, 1, 1, N'请不要轻易改动！', 0, N'func', 400, 300, 0, 0, N'88', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9957, N'注册协议', N'item', 651, N'/manage/Platform/Agreement', NULL, 0, N'88', NULL, NULL, 0, 0, N'a022', NULL, 1, 1, NULL, 1, N'func', 400, 300, 90, 101, N'69475b3d3dfff2e4470402686bbe9393', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9958, N'保留域名', N'item', 88, N'/manage/Platform/limitdomain', NULL, 1, N'88', NULL, NULL, 0, 0, N'e7d4', NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'70c20a152062c09c598384f35d9cde36', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9959, N'接口管理', N'item', 88, NULL, NULL, 2, N'88', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 1, N'func', 400, 300, 90, 101, N'742f03375a49149ef533668189ec0777', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9960, N'支付接口', N'item', 88, N'/manage/pay/list', NULL, 0, N'742f03375a49149ef533668189ec0777', NULL, NULL, 0, 0, N'e63c', NULL, 1, 1, NULL, 0, N'func', 400, 300, 58, 71, N'a19b1b08a06bac9d0adc044e0055a53b', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9961, N'第三方登录', N'item', 88, N'/manage/OtherLogin/setup', NULL, 1, N'742f03375a49149ef533668189ec0777', NULL, NULL, 0, 0, N'e645', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'6a47cb4dcaff0fe97b45c0347139f438', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9962, N'短信接口', N'item', 88, N'/manage/SMS/Setup', NULL, 2, N'742f03375a49149ef533668189ec0777', NULL, NULL, 0, 0, N'a01c', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'f4c77daf1be33a237f6e5ee64da40c63', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9963, N'单点登录', N'item', 88, N'/manage/Sso/Setup', NULL, 3, N'742f03375a49149ef533668189ec0777', NULL, NULL, 0, 0, N'e639', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'8b60275871e44251d0712030ec9a44e7', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9964, N'七牛云直播', N'item', 88, N'/manage/live/qiniuyun', NULL, 4, N'742f03375a49149ef533668189ec0777', NULL, NULL, 0, 0, N'e661', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'8d34c9389a5dd4ec6ab6c3bf50060b10', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9965, N'菜单管理', N'item', 88, NULL, NULL, 3, N'88', NULL, NULL, 0, 0, N'a009', NULL, 1, 1, NULL, 1, N'func', 0, 0, 0, 0, N'9e4d9f97f71fc3a076e9893449bea4be', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (2318, N'分支机构', NULL, 2318, NULL, N'organ', 2, N'0', NULL, NULL, 0, 0, N'a003', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'99171ec989452adea2c9d8d8b4a2c3a4', 0, 0, 0, 0, NULL, N'分校', 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9966, N'功能菜单', N'item', 88, N'/manage/Platform/menuroot', N'MenuTree', 0, N'9e4d9f97f71fc3a076e9893449bea4be', NULL, NULL, 0, 0, N'a00c', NULL, 1, 1, N'管理界面左侧的菜单', 0, N'func', 0, 0, 0, 0, N'33f1cd7ad494a32c5a061babf4d62599', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9967, N'系统菜单', N'item', 88, N'/manage/Platform/sysmenu', NULL, 1, N'9e4d9f97f71fc3a076e9893449bea4be', NULL, NULL, 0, 0, N'a024', NULL, 1, 1, N'位于管理界面左上方的下拉菜单', 0, N'func', 0, 0, 0, 0, N'26c139b82c6c9455864a56a4c8ba0f6f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9968, N'积分设置', N'item', 651, N'/manage/Platform/PointSetup', NULL, 4, N'88', NULL, NULL, 0, 0, N'e88a', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'2ad779650365a880c345016b15ed9401', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9969, N'系统日志', N'item', 88, NULL, NULL, 5, N'88', NULL, NULL, 0, 0, N'a025', NULL, 0, 1, NULL, 1, N'func', 0, 0, 0, 0, N'485d923c64b7a076861d2189d31bc52b', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9970, N'数据清理', N'item', 88, N'sys/dataclear.aspx', NULL, 0, N'485d923c64b7a076861d2189d31bc52b', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'ef5ed2135cec3915a022d5f8d6d91b45', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9971, N'系统参数', N'item', 88, N'/manage/Platform/SystemPara', NULL, 1, N'485d923c64b7a076861d2189d31bc52b', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'b918a2008b0d5adb9e852b6bb113cf9c', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9972, N'登录日志', N'item', 88, N'Sys/LogsLogin.aspx', NULL, 2, N'485d923c64b7a076861d2189d31bc52b', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'da544360c2d541f501758b826d1ca510', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (522, N'机构管理', N'item', 522, NULL, N'organAdmin', 4, N'0', NULL, NULL, 0, 0, N'a003', NULL, 1, 0, N'用于机构管理员操作', 0, N'func', 400, 300, 105, 69, N'522', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (547, N'学员的管理', N'item', 547, NULL, N'student', 5, N'0', NULL, NULL, 0, 0, N'e804', NULL, 1, 0, N'学员登录后看到的菜单项', 0, N'func', 0, 0, 0, 0, N'547', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9608, N'我的课程', N'item', 547, N'/student/course/index', NULL, 0, N'547', NULL, NULL, 0, 0, N'e813', NULL, 1, 0, N'已经选学的课程', 1, N'func', 400, 300, 32, 164, N'99e3c10a6ff4c0af38d4ad6551662222', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9609, N'学习回顾', N'item', 547, NULL, NULL, 1, N'547', N'rgb(1, 159, 200)', NULL, 0, 0, N'e6f1', NULL, 1, 0, NULL, 1, N'func', 400, 300, 58, 133, N'8f2fedf0d52426d8107380eb60af23cb', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9610, N'测试成绩', N'item', 547, N'/Student/Test/Archives', NULL, 0, N'8f2fedf0d52426d8107380eb60af23cb', NULL, NULL, 0, 0, N'e634', NULL, 0, 0, N'已经选学的课程', 0, N'func', 400, 300, 84, 7, N'e61b2ed6eed9cb98323eadfde84d1d99', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9611, N'专项考试', N'item', 547, N'/Student/exam/Results', NULL, 1, N'8f2fedf0d52426d8107380eb60af23cb', NULL, NULL, 0, 0, N'e810', NULL, 1, 0, N'已经选学的课程', 0, N'func', 400, 300, 125, 164, N'0df6f2c3642c081462a35f1f1ada550a', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9612, N'错题回顾', N'item', 547, N'/student/Question/errors', NULL, 2, N'8f2fedf0d52426d8107380eb60af23cb', NULL, NULL, 0, 0, N'e6b0', NULL, 1, 0, N'已经选学的课程', 0, N'func', 400, 300, 187, 101, N'caedac420273252de2dadfd450a98382', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9613, N'学习证明', N'item', 547, N'/student/study/certificate', NULL, 3, N'8f2fedf0d52426d8107380eb60af23cb', NULL, NULL, 0, 0, N'e667', NULL, 0, 0, NULL, 0, N'func', 400, 300, 101, 164, N'9570d28a7c77d0137551fa4d499e9988', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9614, N'学习证明', N'item', 547, N'/student/study/Certificate', NULL, 2, N'547', N'rgb(2, 128, 29)', NULL, 0, 0, N'e639', NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1642663352817', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9615, N'newnode-7407', N'hr', 547, NULL, NULL, 3, N'547', NULL, NULL, 0, 0, NULL, NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1641613171019', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9616, N'个人信息', N'node', 547, NULL, NULL, 4, N'547', NULL, NULL, 0, 0, N'e68f', NULL, 1, 0, N'已经选学的课程', 1, N'func', 400, 300, 106, 69, N'c1d2a8cba0766a36dafa91f43a581f18', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9617, N'基本信息', N'item', 547, N'/student/Self/info', NULL, 0, N'c1d2a8cba0766a36dafa91f43a581f18', NULL, NULL, 0, 0, N'a043', NULL, 1, 0, N'已经选学的课程', 0, N'func', 400, 300, 186, 132, N'7c5f1c92ee9e6c364a46c755df860b26', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (569, N'教师的管理', N'item', 569, NULL, N'teacher', 6, N'0', NULL, NULL, 0, 0, N'e647', NULL, 1, 0, N'教师进入教学管理时看到的菜单项', 0, N'func', 400, 300, 90, 101, N'569', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9618, N'联系方式', N'item', 547, N'/student/Self/link', NULL, 1, N'c1d2a8cba0766a36dafa91f43a581f18', NULL, NULL, 0, 0, N'e71a', NULL, 1, 0, N'已经选学的课程', 0, N'func', 400, 300, 210, 133, N'22475af5e44f46286660708fb4f2c4c9', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9619, N'个人介绍', N'item', 547, N'/student/Self/Intro', NULL, 2, N'c1d2a8cba0766a36dafa91f43a581f18', NULL, NULL, 0, 0, N'e669', NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1641735504763', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9621, N'在线时间', N'item', 547, N'/manage/student/online.aspx', NULL, 4, N'c1d2a8cba0766a36dafa91f43a581f18', NULL, NULL, 0, 0, N'a039', NULL, 0, 0, NULL, 0, N'func', 400, 300, 78, 164, N'4cbafbacb24a146eb1e03cca80d32db6', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9622, N'充值/资金', N'node', 547, NULL, NULL, 5, N'547', NULL, NULL, 0, 0, N'e81c', NULL, 1, 0, NULL, 1, N'func', 400, 300, 8, 134, N'f4c2e87c58a014d0eaaed7ba1a459314', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9623, N'充值', N'item', 547, N'/Student/Money/recharge', NULL, 0, N'f4c2e87c58a014d0eaaed7ba1a459314', NULL, NULL, 0, 0, N'e749', NULL, 1, 0, NULL, 0, N'func', 400, 300, 230, 133, N'ca6c8e9988678ea4bc089a98d64dbe43', 0, 0, 0, 0, NULL, NULL, 0, NULL, 60)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9624, N'资金', N'item', 547, N'/Student/Money/Details', NULL, 1, N'f4c2e87c58a014d0eaaed7ba1a459314', NULL, NULL, 0, 0, N'e824', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'02d9f63ce76365a7d986e0b0a0ea70e4', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9625, N'卡券', N'item', 547, N'/Student/Coupon/index', NULL, 2, N'f4c2e87c58a014d0eaaed7ba1a459314', NULL, NULL, 0, 0, N'e847', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'b632ee17275095c13cfb8055129c59cd', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9626, N'积分', N'item', 547, N'/Student/Point/index', NULL, 3, N'f4c2e87c58a014d0eaaed7ba1a459314', NULL, NULL, 0, 0, N'e88a', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'17ed5191fd4a3b9d3fc366a1cda5b4dc', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9627, N'收益', N'item', 547, N'/Student/Money/Profit', NULL, 4, N'f4c2e87c58a014d0eaaed7ba1a459314', NULL, NULL, 0, 0, N'e666', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'3ed08ea8c3a6dbbb0b14535e27357061', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9628, N'学习卡', N'node', 547, NULL, NULL, 6, N'547', NULL, NULL, 0, 0, N'e685', NULL, 1, 0, NULL, 1, N'func', 400, 300, 90, 101, N'dff9c491a3f3e5493cec04abf7244b69', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9629, N'我的学习卡', N'item', 547, N'/student/Learningcard/index', NULL, 0, N'dff9c491a3f3e5493cec04abf7244b69', NULL, NULL, 0, 0, N'e685', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'3a108c8fbb70ddb57532149a214bc427', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9630, N'newnode-6141', N'hr', 547, NULL, NULL, 7, N'547', NULL, NULL, 0, 0, NULL, NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1641640249725', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9631, N'分享', N'item', 547, NULL, NULL, 8, N'547', NULL, NULL, 0, 0, N'e690', NULL, 1, 0, NULL, 1, N'func', 400, 300, 7, 71, N'2a3233d51cbc815b00bce3e9d7788dbb', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9890, N'教务管理', N'item', 522, NULL, NULL, 0, N'522', NULL, NULL, 0, 0, N'e76b', NULL, 1, 0, N'gggg', 1, N'func', 400, 300, 230, 166, N'cba85fde312efe019f9acafe32038fe4', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9247, N'账户', N'item', 651, N'/manage/Platform/Accounts', NULL, 0, N'651', NULL, NULL, 0, 0, N'e67d', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'552b799487f974e4e2705254180ab16e', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9248, N'资金流水', N'item', 651, N'/manage/Capital/Records', NULL, 1, N'651', NULL, NULL, 0, 0, N'e746', NULL, 1, 1, NULL, 0, N'func', 400, 300, 6, 38, N'de1cfb2ccec3e0befab63d0957227213', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9891, N'课程.专业', N'node', 522, NULL, NULL, 0, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'e813', NULL, 1, 0, NULL, 1, N'func', 400, 300, 90, 101, N'a76471634c09b23347199ee23682d1ed', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9892, N'课程', N'item', 522, N'/orgadmin/course/list', NULL, 0, N'a76471634c09b23347199ee23682d1ed', NULL, NULL, 0, 0, N'e813', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'a2d8c81ec24efe439b4c9b2d139e99fe', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9249, N'学习卡', N'item', 0, N'/manage/Learningcard/cardset', NULL, 2, N'651', NULL, NULL, 0, 0, N'e60f', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'eab253f97e1b78feab00fc256047acd5', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9250, N'充值码', N'item', 651, N'/manage/Rechargecode/Codeset', NULL, 3, N'651', NULL, NULL, 0, 0, N'e62f', NULL, 1, 1, NULL, 1, N'func', 400, 300, 82, 69, N'9eb880dcf1d228e4e75f07429e0fe17a', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9251, N'考试管理', N'item', 0, NULL, NULL, 4, N'651', NULL, NULL, 0, 0, N'f008f', NULL, 0, 1, NULL, 1, N'func', 0, 0, 0, 0, N'71fd444a28f50e71f664761603daf63e', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9252, N'考试成绩', N'item', 0, N'/teacher/exam/results', NULL, 0, N'71fd444a28f50e71f664761603daf63e', NULL, NULL, 0, 0, N'e82e', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'9773958521dd3c6f46bbc424d26b9770', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9893, N'专业', N'item', 522, N'/orgadmin/Subject/list', NULL, 1, N'a76471634c09b23347199ee23682d1ed', NULL, NULL, 0, 0, N'e750', NULL, 1, 0, NULL, 0, N'func', 400, 300, 206, 6, N'f9b11e7920f6ab15ead04eeafb511830', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9894, N'题库', N'item', 522, N'/orgadmin/Question/list', NULL, 1, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'e75e', NULL, 1, 0, NULL, 0, N'func', 400, 300, 91, 102, N'8546016f8e1c6e078b5dddd0eab7920d', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9895, N'学员', N'node', 522, NULL, NULL, 2, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'a043', NULL, 1, 0, NULL, 1, N'func', 0, 0, 0, 0, N'fc20f555f70b93019964a391d33a14d5', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9896, N'学员管理', N'item', 522, N'/orgadmin/Student/list', NULL, 0, N'fc20f555f70b93019964a391d33a14d5', NULL, NULL, 0, 0, N'e804', NULL, 1, 0, NULL, 0, N'func', 400, 300, 156, 8, N'b50ea4a3ed65be9d39651c1f1ecf014c', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9897, N'学员组', N'item', 522, N'/orgadmin/Student/sort', NULL, 1, N'fc20f555f70b93019964a391d33a14d5', NULL, NULL, 0, 0, N'e67d', NULL, 1, 0, NULL, 0, N'func', 400, 300, 8, 71, N'53774f25cbb2a6248bdc4b5783d1f842', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9898, N'教师', N'node', 522, NULL, NULL, 3, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'e650', NULL, 1, 0, NULL, 1, N'func', 400, 300, 160, 71, N'bc07d10b0c411cab2e14f60328e8e4ad', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9899, N'教师信息', N'item', 522, N'/orgadmin/teacher/list', NULL, 0, N'bc07d10b0c411cab2e14f60328e8e4ad', NULL, NULL, 0, 0, N'e6a1', NULL, 1, 0, NULL, 0, N'func', 400, 300, 162, 132, N'19c839b6968161696712b7e7b76c9772', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (651, N'基础设置', N'item', 651, NULL, N'base', 0, N'0', NULL, NULL, 0, 0, N'e72f', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'651', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9900, N'教师职称', N'item', 522, N'/orgadmin/Teacher/titles', NULL, 1, N'bc07d10b0c411cab2e14f60328e8e4ad', NULL, NULL, 0, 0, N'e698', NULL, 1, 0, NULL, 0, N'func', 400, 300, 186, 133, N'651397af8465c643284ff8e137fd8079', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9901, N'专项考试', N'item', 522, NULL, NULL, 4, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'e816', NULL, 1, 0, NULL, 1, N'func', 0, 0, 0, 0, N'1665903171969', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9902, N'考试管理', N'item', 569, N'/teacher/exam/list', NULL, 0, N'1665903171969', NULL, NULL, 0, 0, N'e810', NULL, 1, 0, NULL, 0, N'func', 400, 300, 31, 132, N'606b87e461d6b43e1ff789ad9b1b11c2', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9632, N'分享链接', N'item', 547, N'/student/share/link', NULL, 0, N'2a3233d51cbc815b00bce3e9d7788dbb', NULL, NULL, 0, 0, N'e73e', NULL, 1, 0, NULL, 0, N'func', 400, 300, 34, 6, N'82809d1a369ab3c44c330c909a532866', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9903, N'考试成绩', N'item', 569, N'/teacher/exam/results', NULL, 1, N'1665903171969', NULL, NULL, 0, 0, N'e654', NULL, 1, 0, NULL, 0, N'func', 400, 300, 57, 132, N'f2b59e41fb0d29f16707ad11b590e686', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9975, N'分机构管理', N'item', 651, NULL, NULL, 0, N'99171ec989452adea2c9d8d8b4a2c3a4', NULL, NULL, 0, 0, N'e770', NULL, 1, 1, NULL, 1, N'func', 400, 300, 90, 101, N'dbda24c276292d3229c7df766a890ca1', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9976, N'机构列表', N'item', 651, N'/manage/Organs/list', NULL, 0, N'dbda24c276292d3229c7df766a890ca1', NULL, NULL, 0, 0, N'a02a', NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'a93acf4d1572ef78fa2d748a69b58738', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9977, N'机构审核', N'item', 651, N'/manage/Organs/Verify', NULL, 1, N'dbda24c276292d3229c7df766a890ca1', NULL, NULL, 0, 0, N'a042', NULL, 0, 1, NULL, 0, N'func', 400, 300, 0, 0, N'ee61424a18a1b5544124b197dad6142e', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9978, N'机构等级', N'item', 651, N'/manage/Organs/Level', NULL, 2, N'dbda24c276292d3229c7df766a890ca1', NULL, NULL, 0, 0, N'e85a', NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'3f9df262b89e46fa930b4369a5e239bd', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9979, N'分润设置', N'item', 651, N'/manage/Platform/ProfitSharing', NULL, 3, N'dbda24c276292d3229c7df766a890ca1', NULL, NULL, 0, 0, N'e699', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'9fba648f72cf773e0a560c421aae8420', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9980, N'当前机构', N'item', 88, NULL, NULL, 1, N'99171ec989452adea2c9d8d8b4a2c3a4', NULL, NULL, 0, 0, N'a003', NULL, 1, 1, NULL, 1, N'func', 400, 300, 0, 0, N'c251c17f570f77bf00728d8d8dd0ae9f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9981, N'机构信息', N'item', 88, N'/manage/Organs/organinfo', NULL, 0, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e6a2', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'7383d2425a17f4ce59cb13094c96118a', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9982, N'单位介绍', N'item', 88, N'/manage/Organs/about', NULL, 1, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e667', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'151c0f86093805fe0fcdda6be39bb007', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9983, N'管理员', N'item', 88, N'/manage/Platform/Employee', NULL, 2, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e645', NULL, 1, 1, NULL, 0, N'func', 400, 300, 90, 101, N'ff70834b1af658beaa1ba86dd2514880', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9984, N'部门信息', N'item', 88, N'sys/depart.aspx', N'purview', 3, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e68b', NULL, 0, 1, NULL, 0, N'func', 400, 300, 90, 101, N'887e1c3444208f98b12445e7a62e1c2f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9985, N'岗位设置', N'item', 88, N'/manage/Platform/Position', N'purview', 4, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e655', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'871a922530ef97717cbd6f5f61d5cafc', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9986, N'职务头衔', N'item', 88, N'/manage/Platform/EmpTitle', NULL, 5, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e804', NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'baa31535166ec9736c4ccf03a44a5dd9', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9904, N'统计分析', N'node', 522, NULL, NULL, 5, N'cba85fde312efe019f9acafe32038fe4', NULL, NULL, 0, 0, N'e6f1', NULL, 1, 0, NULL, 1, N'func', 400, 300, 57, 132, N'2b858af35952ad4106e1f97b10b20ff9', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9905, N'热门课程', N'item', 522, N'/orgadmin/Statis/CourseHot', NULL, 0, N'2b858af35952ad4106e1f97b10b20ff9', NULL, NULL, 0, 0, N'e856', NULL, 1, 0, N'选课最多的专业', 0, N'func', 400, 300, 83, 37, N'5f81b3a13ce40cdc0525d3346bcdc682', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9906, N'热门教师', N'item', 522, NULL, NULL, 1, N'2b858af35952ad4106e1f97b10b20ff9', NULL, NULL, 0, 0, N'e650', NULL, 0, 0, NULL, 0, N'func', 400, 300, 59, 39, N'ee0d5748fa5855398e9d2a0ba5ac5651', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9907, N'优秀教师', N'item', 522, N'/manage/teacher/order.aspx', NULL, 2, N'2b858af35952ad4106e1f97b10b20ff9', NULL, NULL, 0, 0, N'e8c9', NULL, 0, 0, NULL, 0, N'func', 400, 300, 162, 134, N'53308789bf582bb1e60583d0df808580', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9908, N'学员在线', N'item', 522, N'/manage/orgadmin/stonline.aspx', NULL, 3, N'2b858af35952ad4106e1f97b10b20ff9', NULL, NULL, 0, 0, N'e67d', NULL, 0, 0, NULL, 0, N'func', 400, 300, 90, 101, N'a24cbf78d35248503adfaa03ff60ca11', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9909, N'教师评价', N'item', 522, N'/manage/teacher/Comments.aspx', NULL, 4, N'2b858af35952ad4106e1f97b10b20ff9', NULL, NULL, 0, 0, N'e81b', NULL, 0, 0, NULL, 0, N'func', 400, 300, 90, 101, N'843c0827d3d2810782adda9aaa6f409a', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9910, N'平台管理', N'item', 522, NULL, NULL, 1, N'522', NULL, NULL, 0, 0, N'e834', NULL, 1, 0, NULL, 1, N'func', 400, 300, 132, 37, N'd42f434639edecdbd7f7f5919e6d086a', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9911, N'新闻.通知', N'node', 522, NULL, NULL, 0, N'd42f434639edecdbd7f7f5919e6d086a', NULL, NULL, 0, 0, N'e75c', NULL, 1, 0, NULL, 1, N'func', 400, 300, 32, 164, N'd001a8ab9566b79e46dc6d81fb7fa213', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9912, N'通知', N'item', 522, N'/orgadmin/notice/list', NULL, 0, N'd001a8ab9566b79e46dc6d81fb7fa213', NULL, NULL, 0, 0, N'e697', NULL, 1, 0, NULL, 0, N'func', 400, 300, 58, 6, N'7505573f225da91c421b31e8e950aa16', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9913, N'新闻发布', N'item', 522, N'/orgadmin/news/list', NULL, 1, N'd001a8ab9566b79e46dc6d81fb7fa213', NULL, NULL, 0, 0, N'e74a', NULL, 1, 0, N'在', 0, N'func', 400, 300, 180, 7, N'fdffc2a7aa807909b9c259169c70794d', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9914, N'新闻栏目', N'item', 522, N'/orgadmin/news/Columns', NULL, 2, N'd001a8ab9566b79e46dc6d81fb7fa213', NULL, NULL, 0, 0, N'e668', NULL, 1, 0, NULL, 0, N'func', 400, 300, 85, 8, N'e3346bd15202ce654c42f126d2153a41', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9915, N'管理员', N'node', 522, NULL, NULL, 1, N'd42f434639edecdbd7f7f5919e6d086a', NULL, NULL, 0, 0, N'e6ed', NULL, 1, 0, N'当前机构的管理人员', 1, N'func', 400, 300, 130, 70, N'76d02763628ceb20715ff8700f93d711', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9916, N'管理人员', N'item', 522, N'/orgadmin/admin/Employee', NULL, 0, N'76d02763628ceb20715ff8700f93d711', NULL, NULL, 0, 0, N'e812', NULL, 1, 0, NULL, 0, N'func', 400, 300, 7, 70, N'5f8650559e67d7aee0865ab46abc57e5', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9917, N'角色/岗位', N'item', 522, N'/orgadmin/admin/Position', N'purview', 1, N'76d02763628ceb20715ff8700f93d711', NULL, NULL, 0, 0, N'e635', NULL, 1, 0, NULL, 0, N'func', 400, 300, 135, 133, N'5f3a00f6661e44c530939cb7ad74845f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 89)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9918, N'职务', N'item', 522, N'/orgadmin/admin/EmpTitle', NULL, 2, N'76d02763628ceb20715ff8700f93d711', NULL, NULL, 0, 0, N'e645', NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1639834362028', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9987, N'工作组', N'item', 88, N'/manage/Platform/EmpGroup', N'purview', 6, N'c251c17f570f77bf00728d8d8dd0ae9f', NULL, NULL, 0, 0, N'e67d', NULL, 1, 1, NULL, 0, N'func', 400, 300, 0, 0, N'82757f86610edd41612051d8484dc6e9', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9919, N'友情链接', N'node', 522, NULL, NULL, 2, N'd42f434639edecdbd7f7f5919e6d086a', NULL, NULL, 0, 0, N'a029', NULL, 1, 0, NULL, 1, N'func', 400, 300, 133, 133, N'2f1359ccc50792dbf8c75483a6f508fb', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9920, N'友情链接', N'item', 522, N'/orgadmin/links/list', NULL, 0, N'2f1359ccc50792dbf8c75483a6f508fb', NULL, NULL, 0, 0, N'a029', NULL, 1, 0, NULL, 0, N'func', 400, 300, 33, 7, N'c68451aaa777687e559756c9f02f68d3', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9921, N'链接分类', N'item', 522, N'/orgadmin/links/sort', NULL, 1, N'2f1359ccc50792dbf8c75483a6f508fb', NULL, NULL, 0, 0, N'a015', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'8a539ecff79b6ede1b38b2a8380e86cd', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9922, N'组织机构', N'node', 522, NULL, NULL, 3, N'd42f434639edecdbd7f7f5919e6d086a', NULL, NULL, 0, 0, N'e711', NULL, 0, 0, NULL, 1, N'func', 400, 300, 230, 38, N'85c3ddb99d58e33f9e3637cfb6c2b298', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9923, N'部门信息', N'item', 522, N'/manage/sys/depart.aspx', N'purview', 0, N'85c3ddb99d58e33f9e3637cfb6c2b298', NULL, NULL, 0, 0, N'e687', NULL, 0, 0, NULL, 0, N'func', 400, 300, 160, 70, N'482695a528fb8f892b6dceb259bd40b3', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9924, N'工作组', N'item', 522, N'/manage/sys/empgroup.aspx', N'purview', 1, N'85c3ddb99d58e33f9e3637cfb6c2b298', NULL, NULL, 0, 0, N'e635', NULL, 0, 0, NULL, 0, N'func', 400, 300, 8, 198, N'8238df6e47c88762ba42a7995e547f3e', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9925, N'职务头衔', N'item', 522, N'/manage/sys/title.aspx', NULL, 2, N'85c3ddb99d58e33f9e3637cfb6c2b298', NULL, NULL, 0, 0, N'e639', NULL, 0, 0, NULL, 0, N'func', 400, 300, 108, 8, N'0dd1db3b35c9fe75e38edcdf738ebd2c', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9926, N'参数设置', N'node', 522, NULL, NULL, 4, N'd42f434639edecdbd7f7f5919e6d086a', NULL, NULL, 0, 0, N'a038', NULL, 1, 0, NULL, 1, N'func', 400, 300, 57, 70, N'503b5ac415940255ebd94a663bee476e', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9927, N'基础信息', N'item', 522, N'/orgadmin/setup/General', NULL, 0, N'503b5ac415940255ebd94a663bee476e', NULL, NULL, 0, 0, N'e6d8', NULL, 1, 0, NULL, 0, N'func', 400, 300, 57, 71, N'fc60823be11ec1b67cbc8865085928ca', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9928, N'功能设置', N'item', 522, N'/orgadmin/setup/function', NULL, 1, N'503b5ac415940255ebd94a663bee476e', NULL, NULL, 0, 0, N'a038', NULL, 1, 0, NULL, 0, N'func', 400, 300, 90, 101, N'acc513b05fe589c27716631c54ef30f8', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9929, N'二维码', N'item', 522, N'/orgadmin/setup/qrcode', NULL, 2, N'503b5ac415940255ebd94a663bee476e', NULL, NULL, 0, 0, N'a053', NULL, 0, 0, NULL, 0, N'func', 400, 300, 90, 101, N'95aca19ba38c02a7b9f3d2b7a7e0c7e5', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9930, N'学习证明', N'item', 522, N'/orgadmin/setup/Stamp', NULL, 3, N'503b5ac415940255ebd94a663bee476e', NULL, NULL, 0, 0, N'e68f', NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1639658295720', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9931, N'界面风格', N'item', 522, NULL, NULL, 2, N'522', NULL, NULL, 0, 0, N'a010', NULL, 1, 0, NULL, 1, N'func', 400, 300, 133, 38, N'abf085d525ccc320ed7b6d05cd02f161', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9932, N'Web端风格', N'node', 522, NULL, NULL, 0, N'abf085d525ccc320ed7b6d05cd02f161', NULL, NULL, 0, 0, N'e609', NULL, 1, 0, NULL, 1, N'func', 400, 300, 77, 164, N'65af6428b0ff12160d40e372ae5b8337', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9933, N'模板选择', N'item', 522, N'/orgadmin/template/select.web', NULL, 0, N'65af6428b0ff12160d40e372ae5b8337', NULL, NULL, 0, 0, N'a044', NULL, 1, 0, NULL, 0, N'func', 400, 300, 79, 164, N'4be6e84aeacaec7514680b72499b7c19', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9934, N'导航菜单', N'item', 522, N'/orgadmin/template/Navigation.web', NULL, 1, N'65af6428b0ff12160d40e372ae5b8337', NULL, NULL, 0, 0, N'a00c', NULL, 1, 0, NULL, 0, N'func', 400, 300, 33, 6, N'185d53f8d69610c63281766012d17a8d', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9935, N'轮播图片', N'item', 522, N'/orgadmin/template/ShowPicture.web', NULL, 2, N'65af6428b0ff12160d40e372ae5b8337', NULL, NULL, 0, 0, N'a045', NULL, 1, 0, NULL, 0, N'func', 400, 300, 32, 165, N'e99f9b903ccc0bdefdbca97abcc9f4b1', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9633, N'我的朋友', N'item', 547, N'/student/share/subordinates', NULL, 1, N'2a3233d51cbc815b00bce3e9d7788dbb', NULL, NULL, 0, 0, N'e67d', NULL, 1, 0, NULL, 0, N'func', 400, 300, 7, 72, N'83f7721be4b7779ce3f097a59b81adb9', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6038, N'首页', N'link', 103, N'/', NULL, 0, N'0', NULL, NULL, 0, 0, N'a020', NULL, 1, 1, N'系统首页', 0, N'sys', 0, 0, 0, 0, N'd9ffe1150602ac1fd987007396520189', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6039, N'源代码', N'item', 103, N'#', NULL, 1, N'0', NULL, NULL, 0, 0, N'a034', NULL, 1, 1, NULL, 1, N'sys', 0, 0, 0, 0, N'5f241cb3015f4e6ba505ae9243feef99', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6040, N'产品源码', N'link', 103, N'https://github.com/weishakeji/LearningSystem', NULL, 0, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, N'e691', NULL, 1, 1, N'支持二次开发', 0, N'sys', 400, 300, 0, 0, N'b6570c588539269c6de5ac06b7438e70', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6041, N'WebUI源码', N'link', 103, N'https://github.com/weishakeji/WebdeskUI', NULL, 1, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, N'a010', NULL, 1, 1, NULL, 0, N'sys', 640, 450, 0, 0, N'e680f05fce7d34c783286d98e2beeb97', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6042, N'国内镜像', N'link', 103, N'https://gitee.com/weishakeji', NULL, 2, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, N'e686', NULL, 1, 1, N'国内Gitee开源镜像', 0, N'sys', 0, 0, 0, 0, N'c834f537e216e4b529ef7d4449593524', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6043, N'null', N'hr', 103, NULL, NULL, 3, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'b6936694735702ccacb76f692444f547', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6044, N'开发文档', N'item', 103, NULL, NULL, 4, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, N'a022', NULL, 1, 1, NULL, 1, N'sys', 0, 0, 0, 0, N'36851ec244b58c6e893a788c049298e5', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6045, N'ViewData API 说明', N'link', 103, N'/help/api/', NULL, 0, N'36851ec244b58c6e893a788c049298e5', NULL, NULL, 0, 0, N'a01c', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'7bfaf2ad62853302824b625c926a5a2f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6046, N'数据字典', N'link', 103, N'/help/datas/', NULL, 1, N'36851ec244b58c6e893a788c049298e5', NULL, NULL, 0, 0, N'e6a4', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'd14c2127edbccdaf73490709d0cf78c2', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6047, N'WebUI 开发文档', N'link', 103, N'http://webdesk.weisha100.cn/', NULL, 2, N'36851ec244b58c6e893a788c049298e5', NULL, NULL, 0, 0, N'a010', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'5e4e303706b7d0583453a3ada7f267bf', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6048, N'newnode-7879', N'hr', 103, NULL, NULL, 3, N'36851ec244b58c6e893a788c049298e5', NULL, NULL, 0, 0, N'e600', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'0d73063295412838f39d31e015036d40', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6049, N'图标库', N'link', 103, N'/Utilities/Fonts/webdesk.html', NULL, 4, N'36851ec244b58c6e893a788c049298e5', NULL, NULL, 0, 0, N'e610', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'23f7e9cf86ce216020ab6251693d49b1', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6050, N'升级日志', N'link', 103, N'http://www.weishakeji.net/download.html', NULL, 5, N'5f241cb3015f4e6ba505ae9243feef99', NULL, NULL, 0, 0, N'e836', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'f268a63814cc7500123950307b3faa4f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6051, N'帮助', N'node', 103, NULL, NULL, 2, N'0', NULL, NULL, 0, 0, N'a026', NULL, 1, 1, NULL, 1, N'sys', 400, 200, 0, 0, N'83c860c6e6d9efc97c1d643a69562a0a', 0, 0, 0, 0, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6052, N'自述文件', N'link', 103, N'/readme.html', NULL, 0, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a022', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'4a0ba13c193afd931459fe4422fe2284', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6053, N'在线教程', N'link', 103, N'http://www.weisha100.net/', NULL, 1, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'e7d4', NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'f5383ee2e50f234d322ec3e6c6ab22ec', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6054, N'帮助', N'link', 103, N'/help', NULL, 2, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a026', NULL, 1, 1, N'在线学习教程', 0, N'sys', 0, 0, 0, 0, N'8eb4784b53887148a45bc80fc16a19c1', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6055, N'newnode-5338', N'hr', 103, NULL, NULL, 3, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'26de70c3a084bf45bba3d1108abf2144', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6056, N'开源协议', N'open', 103, N'/help/License.html', NULL, 4, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a034', NULL, 1, 1, NULL, 0, N'sys', 600, 400, 0, 0, N'a2980cfee1ad6268ab5a3af56b8b3b64', 0, 0, 1, 0, N'PublicLicense', NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6057, N'版权信息', N'open', 103, N'/manage/Platform/copyright', NULL, 5, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a027', NULL, 1, 1, NULL, 0, N'sys', 800, 600, 0, 0, N'60a81a51602ea583adc3d086d10a5424', 1, 1, 1, 1, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6058, N'newnode-7595', N'hr', 103, NULL, NULL, 6, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0, N'b39062b640c982317666591ac7481a2d', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6059, N'微厦科技', N'link', 103, N'http://www.weishakeji.net', NULL, 7, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a001', NULL, 0, 1, N'微厦科技官网', 0, N'sys', 0, 0, 0, 0, N'8fcb85b04376833dc6fb8a2fda5abab8', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (6060, N'关于', N'open', 103, NULL, NULL, 8, N'83c860c6e6d9efc97c1d643a69562a0a', NULL, NULL, 0, 0, N'a031', NULL, 1, 1, NULL, 0, N'sys', 600, 400, 0, 0, N'8b6bd638621686c382eb11d1d6759ad7', 0, 0, 1, 1, N'about', NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9988, N'课程管理', N'item', 569, N'/teacher/course/list', NULL, 0, N'569', NULL, NULL, 0, 0, N'e813', NULL, 1, 0, NULL, 1, N'func', 400, 300, 32, 164, N'6b83ad54dc5319393f4eaf23b6ae14c8', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9974, N'试题修复', N'item', 651, N'/manage/ques/itemrepeat', NULL, 6, N'651', NULL, NULL, 0, 0, N'e755', NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'1669172453942', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9989, N'课程交流', N'item', 569, N'/teacher/course/Messages', NULL, 1, N'569', NULL, NULL, 0, 0, N'e817', NULL, 1, 0, NULL, 0, N'func', 400, 300, 7, 71, N'cc6e884e86541560bddc33e539cfdbc7', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9990, N'我的学员', N'item', 569, N'/teacher/student/list', NULL, 2, N'569', NULL, NULL, 0, 0, N'e67d', NULL, 0, 0, NULL, 0, N'func', 400, 300, 7, 71, N'a4c7e947718555647d5c033409812101', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9991, N'测试/考试', N'item', 569, NULL, NULL, 3, N'569', NULL, NULL, 0, 0, N'e816', NULL, 1, 0, NULL, 1, N'func', 400, 300, 232, 100, N'ceef164ede5ac404041250eb01c46be3', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9992, N'试卷管理', N'item', 569, N'/teacher/testpaper/list', NULL, 0, N'ceef164ede5ac404041250eb01c46be3', NULL, NULL, 0, 0, N'e6b0', NULL, 1, 0, NULL, 0, N'func', 400, 300, 8, 133, N'e32ff65ff0db40c9d569a80d95550c25', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9993, N'专项考试成绩', N'item', 569, N'/teacher/exam/results', NULL, 1, N'ceef164ede5ac404041250eb01c46be3', NULL, NULL, 0, 0, N'e810', NULL, 1, 0, NULL, 0, N'func', 0, 0, 0, 0, N'1673081413592', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9994, N'个人信息', N'item', 569, N'/teacher/self/index', NULL, 4, N'569', NULL, NULL, 0, 0, N'e669', NULL, 1, 0, NULL, 1, N'func', 400, 300, 162, 133, N'b486c9a4eca4cc594585bd6639e281fe', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9620, N'安全管理', N'item', 547, N'/student/Self/safe', NULL, 3, N'c1d2a8cba0766a36dafa91f43a581f18', NULL, NULL, 0, 0, N'e76a', NULL, 1, 0, N'已经选学的课程', 0, N'func', 400, 300, 57, 199, N'501e00e137aebb030d30b8de30edec06', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9936, N'移动端风格', N'node', 522, NULL, NULL, 1, N'abf085d525ccc320ed7b6d05cd02f161', NULL, NULL, 0, 0, N'e66b', NULL, 1, 0, NULL, 1, N'func', 400, 300, 5, 39, N'bc979c4b488eaffbf119e6ab518f7689', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9937, N'模板选择', N'item', 522, N'/orgadmin/template/select.mobi', NULL, 0, N'bc979c4b488eaffbf119e6ab518f7689', NULL, NULL, 0, 0, N'e677', NULL, 1, 0, NULL, 0, N'func', 400, 300, 210, 100, N'df3455c4a980c841604b55dc6651a92f', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9938, N'导航按钮', N'item', 522, N'/orgadmin/template/Navigation.mobi', NULL, 1, N'bc979c4b488eaffbf119e6ab518f7689', NULL, NULL, 0, 0, N'e632', NULL, 1, 0, NULL, 0, N'func', 400, 300, 34, 7, N'9bbdcbde47d569e6a9d5c59a8947a445', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9939, N'轮播图片', N'item', 522, N'/orgadmin/template/ShowPicture.mobi', NULL, 2, N'bc979c4b488eaffbf119e6ab518f7689', NULL, NULL, 0, 0, N'a045', NULL, 1, 0, NULL, 0, N'func', 400, 300, 163, 100, N'5469dba2b4b8d54745500eea8c1ba089', 0, 0, 0, 0, NULL, NULL, 0, NULL, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_IsChilds], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY], [MM_UID], [MM_WinMin], [MM_WinMax], [MM_WinMove], [MM_WinResize], [MM_WinID], [MM_AbbrName], [MM_IsFixed], [MM_Help], [MM_Complete]) VALUES (9973, N'操作记录', N'item', 88, N'sys/LogsWork.aspx', NULL, 3, N'485d923c64b7a076861d2189d31bc52b', NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'func', 0, 0, 0, 0, N'4635221fa43b3a4f0a55e39cc0d5772c', 0, 0, 0, 0, NULL, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[ManageMenu] OFF
