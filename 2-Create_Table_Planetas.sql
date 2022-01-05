USE EstrelaDaMorte
GO

IF EXISTS(SELECT TOP 1 1 FROM sys.tables (NOLOCK) WHERE name = N'Planetas')
    DROP TABLE Planetas
GO

CREATE TABLE Planetas
(
    IdPlaneta INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Rotacao FLOAT NOT NULL,
    Orbita FLOAT NOT NULL,
    Diametro FLOAT NOT NULL,
    Clima NVARCHAR(50) NOT NULL,
    Populacao INT NOT NULL
);
GO