USE EstrelaDaMorte
GO

IF EXISTS(SELECT TOP 1 1 FROM sys.tables (NOLOCK) WHERE name = N'Pilotos')
    DROP TABLE Pilotos
GO

CREATE TABLE Pilotos
(
    IdPiloto INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(80) NOT NULL,    
    AnoNascimento VARCHAR(10) NOT NULL,
    IdPlaneta INT NOT NULL FOREIGN KEY REFERENCES Planetas(IdPlaneta)
);
GO