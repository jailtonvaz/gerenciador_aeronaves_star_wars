USE master
GO

IF EXISTS (SELECT TOP 1 1 FROM sys.databases (NOLOCK) WHERE name = N'EstrelaDaMorte')
    DROP DATABASE EstrelaDaMorte

GO

CREATE DATABASE EstrelaDaMorte