﻿IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Cursos] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(100) NOT NULL,
    [ShortDescription] nvarchar(280) NOT NULL,
    [LongDescription] nvarchar(max) NOT NULL,
    [TargetAudiences] nvarchar(max) NOT NULL,
    [Objetivoes] nvarchar(max) NOT NULL,
    [requirements] nvarchar(max) NOT NULL,
    [CreatedBy] nvarchar(max) NOT NULL,
    [CreatedAt] datetime2 NOT NULL,
    [UpdatedBy] nvarchar(max) NOT NULL,
    [UpdatedAt] datetime2 NULL,
    [DeletedBy] nvarchar(max) NOT NULL,
    [DeleteddAt] datetime2 NULL,
    [IsDeleted] bit NOT NULL,
    CONSTRAINT [PK_Cursos] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230203193939_Creacion Tabla Curso 1.0', N'7.0.2');
GO

COMMIT;
GO

