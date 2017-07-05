
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/05/2017 16:08:35
-- Generated from EDMX file: C:\Users\marco\Desktop\ExemploModelFirst\ExemploModelFirst\ModeloBlogging.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirst.Blogging];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BlogPost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostSet] DROP CONSTRAINT [FK_BlogPost];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BlogSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BlogSet];
GO
IF OBJECT_ID(N'[dbo].[PostSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BlogSet'
CREATE TABLE [dbo].[BlogSet] (
    [BlogId] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Url] nvarchar(max)  NULL
);
GO

-- Creating table 'PostSet'
CREATE TABLE [dbo].[PostSet] (
    [PostId] int IDENTITY(1,1) NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Conteudo] nvarchar(max)  NOT NULL,
    [BlogId] int  NOT NULL
);
GO

-- Creating table 'UsuarioSet'
CREATE TABLE [dbo].[UsuarioSet] (
    [NomeUsuario] nvarchar(50)  NOT NULL,
    [MostraNome] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BlogId] in table 'BlogSet'
ALTER TABLE [dbo].[BlogSet]
ADD CONSTRAINT [PK_BlogSet]
    PRIMARY KEY CLUSTERED ([BlogId] ASC);
GO

-- Creating primary key on [PostId] in table 'PostSet'
ALTER TABLE [dbo].[PostSet]
ADD CONSTRAINT [PK_PostSet]
    PRIMARY KEY CLUSTERED ([PostId] ASC);
GO

-- Creating primary key on [NomeUsuario] in table 'UsuarioSet'
ALTER TABLE [dbo].[UsuarioSet]
ADD CONSTRAINT [PK_UsuarioSet]
    PRIMARY KEY CLUSTERED ([NomeUsuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BlogId] in table 'PostSet'
ALTER TABLE [dbo].[PostSet]
ADD CONSTRAINT [FK_BlogPost]
    FOREIGN KEY ([BlogId])
    REFERENCES [dbo].[BlogSet]
        ([BlogId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BlogPost'
CREATE INDEX [IX_FK_BlogPost]
ON [dbo].[PostSet]
    ([BlogId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------