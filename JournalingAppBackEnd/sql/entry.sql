USE [JournalDB]
GO

/****** Object:  Table [dbo].[Entry]    Script Date: 7/22/2022 12:02:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Entry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JournalId] [int] NOT NULL,
	[Text] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Entry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Entry]  WITH CHECK ADD  CONSTRAINT [FK_Entry_Journal] FOREIGN KEY([JournalId])
REFERENCES [dbo].[Journal] ([ID])
GO

ALTER TABLE [dbo].[Entry] CHECK CONSTRAINT [FK_Entry_Journal]
GO