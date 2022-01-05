USE EstrelaDaMorte
GO

IF EXISTS(SELECT TOP 1 1 FROM sys.tables (NOLOCK) WHERE name = N'PilotosNaves')
    DROP TABLE PilotosNaves
GO

CREATE TABLE PilotosNaves
(
    IdPiloto INT NOT NULL,
    IdNave INT NOT NULL,    
    FlagAutorizado BIT NOT NULL
);
GO

ALTER TABLE PilotosNaves ADD CONSTRAINT PK_PilotosNaves PRIMARY KEY (IdPiloto, IdNave)
GO

ALTER TABLE PilotosNaves ADD CONSTRAINT FK_PilotosNaves_Pilotos FOREIGN KEY (IdPiloto) REFERENCES Pilotos (IdPiloto)
GO

ALTER TABLE PilotosNaves ADD CONSTRAINT FK_PilotosNaves_Naves FOREIGN KEY (IdNave) REFERENCES Naves (IdNave)
GO

ALTER TABLE PilotosNaves ADD CONSTRAINT DF_PilotosNaves_FlagAutorizado DEFAULT (1) FOR FlagAutorizado
GO