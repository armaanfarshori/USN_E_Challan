USE [eChallan]
GO

/****** Object:  Table [ERP].[TBL_Challan100]    Script Date: 07/06/2020 10:25:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [ERP].[TBL_Challan100](
	[ID] [int] NOT NULL,
	[FK_FYN100] [int] NOT NULL,
	[ReferenceNo] [int] NOT NULL,
	[ChallanDate] [datetime] NOT NULL,
	[VehRegNo] [varchar](100) NOT NULL,
	[FK_VehTypeID] [int] NOT NULL,
	[VehModel] [varchar](100) NOT NULL,
	[VehYearOfPurchase] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[FatherName] [varchar](100) NOT NULL,
	[Address] [varchar](3000) NOT NULL,
	[MobileNo] [varchar](20) NOT NULL,
	[FK_OffTypeID] [int] NOT NULL,
	[OffAmount] [int] NOT NULL,
	[OffDate] [datetime] NULL,
	[OffTIme] [time](7) NULL,
	[FK_PoliceThanaID] [int] NOT NULL,
	[FK_CameraID] [int] NOT NULL,
	[DocumentPath] [varchar](4000) NULL,
	[FK_ApprStatus] [int] NOT NULL,
	[IsChallanPaid] [bit] NOT NULL,
	[ReceiptBookNo] [varchar](20) NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ChallanAmount] [float] NOT NULL,
	[ReceiptDate] [datetime] NULL,
 CONSTRAINT [PK_TBL_Challan100] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  DEFAULT ((0)) FOR [FK_FYN100]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_ReferenceNo]  DEFAULT ((0)) FOR [ReferenceNo]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_FK_VehTypeID]  DEFAULT ((0)) FOR [FK_VehTypeID]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_FK_OffTypeID]  DEFAULT ((0)) FOR [FK_OffTypeID]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_OffAmount]  DEFAULT ((0)) FOR [OffAmount]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_FK_PoliceThanaID]  DEFAULT ((0)) FOR [FK_PoliceThanaID]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_FK_CameraID]  DEFAULT ((0)) FOR [FK_CameraID]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_FK_ApprStatus]  DEFAULT ((901)) FOR [FK_ApprStatus]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  CONSTRAINT [DF_TBL_Challan100_IsChallanPaid]  DEFAULT ((0)) FOR [IsChallanPaid]
GO

ALTER TABLE [ERP].[TBL_Challan100] ADD  DEFAULT ((0)) FOR [ChallanAmount]
GO


USE [eChallan]
GO

/****** Object:  Table [ERP].[TBL_Challan101]    Script Date: 07/06/2020 10:25:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ERP].[TBL_Challan101](
	[ID] [int] NOT NULL,
	[FK_Challan100] [int] NOT NULL,
	[FK_OffenceID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_TBL_Challan101] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [ERP].[TBL_Challan101] ADD  CONSTRAINT [DF_TBL_Challan101_FK_Challan100]  DEFAULT ((0)) FOR [FK_Challan100]
GO

ALTER TABLE [ERP].[TBL_Challan101] ADD  CONSTRAINT [DF_TBL_Challan101_FK_OffenceID]  DEFAULT ((0)) FOR [FK_OffenceID]
GO

ALTER TABLE [ERP].[TBL_Challan101] ADD  CONSTRAINT [DF_TBL_Challan101_Amount]  DEFAULT ((0)) FOR [Amount]
GO


