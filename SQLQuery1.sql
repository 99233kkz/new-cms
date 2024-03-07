CREATE TABLE [dbo].[Customer] (
    [CusPwd] INT NULL,
    [CusId]  INT NULL
);
CREATE TABLE [dbo].[Score] (
    [StudentId] INT        NULL,
    [CourseId]  NCHAR (10) NULL,
    [Score]     NCHAR (10) NULL
);
CREATE TABLE [dbo].[Student] (
    [StudentId] INT        NOT NULL,
    [Name]      NCHAR (10) NULL,
    [Dept]      NCHAR (10) NULL,
    [Class]     NCHAR (10) NULL
);
CREATE TABLE [dbo].[TeaClaInfo] (
    [Dept]       VARCHAR (255) NULL,
    [CourseId]   VARCHAR (255) NULL,
    [Teacher]    VARCHAR (255) NULL,
    [CourseName] VARCHAR (255) NULL
);
