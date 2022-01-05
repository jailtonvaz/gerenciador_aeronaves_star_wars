USE EstrelaDaMorte
GO

IF EXISTS(SELECT TOP 1 1 FROM sys.tables (NOLOCK) WHERE name = N'Naves')
    DROP TABLE Naves
GO

CREATE TABLE Naves
(
    IdNave INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(80) NOT NULL,    
    Modelo VARCHAR(50) NOT NULL,
    Passageiros INT NOT NULL,
    Carga FLOAT NOT NULL,
    Classe VARCHAR(30)
);
GO