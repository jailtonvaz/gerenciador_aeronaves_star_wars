USE EstrelaDaMorte
GO

IF EXISTS(SELECT TOP 1 1 FROM sys.tables (NOLOCK) WHERE name = N'HistoricoViagens')
    DROP TABLE HistoricoViagens
GO

CREATE TABLE HistoricoViagens
(
    IdPiloto INT NOT NULL,
    IdNave INT NOT NULL,    
    DataSaida DATETIME NOT NULL,
    DataChegada DATETIME NULL
);
GO

ALTER TABLE HistoricoViagens ADD CONSTRAINT PK_HistoricoViagens PRIMARY KEY (IdPiloto, IdNave)
GO

ALTER TABLE HistoricoViagens ADD CONSTRAINT FK_HistoricoViagens_PilotosNaves FOREIGN KEY (IdPiloto, IdNave) REFERENCES PilotosNaves (IdPiloto, IdNave)
GO