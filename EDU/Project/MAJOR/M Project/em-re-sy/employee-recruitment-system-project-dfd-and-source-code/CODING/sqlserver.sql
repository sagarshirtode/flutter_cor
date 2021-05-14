SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[confirmationdetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[confirmationdetails](
	[mfrom] [varchar](50) NULL,
	[cmailid] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[subject] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companyjobdetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[companyjobdetails](
	[jobon] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[jobdesc] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[userregistration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[userregistration](
	[uanme] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[cno] [int] NULL,
	[mailid] [varchar](50) NULL,
	[quali] [varchar](50) NULL,
	[college] [varchar](50) NULL,
	[persentage] [varchar](50) NULL,
	[industry] [varchar](50) NULL,
	[keyskill] [varchar](50) NULL,
	[resume] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[postingdetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[postingdetails](
	[pif] [int] IDENTITY(1,1) NOT NULL,
	[jobon] [varchar](50) NULL,
	[com] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[jdesc] [varchar](max) NULL,
	[mail] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[userfeedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[userfeedback](
	[name] [varchar](50) NULL,
	[mailid] [varchar](50) NULL,
	[comments] [varchar](max) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[maildetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[maildetails](
	[mailid] [varchar](50) NULL,
	[cmailid] [varchar](50) NULL,
	[jobon] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[resume] [varchar](50) NULL,
	[subject] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[companylogin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[companylogin](
	[mailid] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[cname] [varchar](50) NULL,
	[place] [varchar](50) NULL
) ON [PRIMARY]
END
