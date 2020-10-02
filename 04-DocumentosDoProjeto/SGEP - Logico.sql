/* SGEP - Logico: */

CREATE TABLE Funcionario (
    idFuncionario int(5) PRIMARY KEY,
    nome varchar(30),
    sobrenome varchar(70),
    cpf char(11),
    matricula varchar(20),
    idSetor int(5),
    privilegio int(1),
    idGestor int(5),
    idEscala int(5),
    idStatus Int(3),
    email varchar(100),
    senha varchar(30),
    idEmpresa int(3),
    diaFolga int(1),
    UNIQUE (idFuncionario, cpf, matricula, email)
);

CREATE TABLE Empresa (
    idEmpresa Int(3) PRIMARY KEY,
    razaoSocial varchar(100),
    cnpj char(14),
    UNIQUE (idEmpresa, razaoSocial, cnpj)
);

CREATE TABLE Setor (
    idSetor int(5) PRIMARY KEY UNIQUE,
    nomeSetor varchar(50),
    centroDeCusto varchar(30),
    fk_Funcionario_idFuncionario int(5)
);

CREATE TABLE Escalas (
    idEscala int(5) PRIMARY KEY,
    nomeEscala varchar(30),
    horaInicial time,
    horaFinal time,
    horaIntervalo time,
    limiteHorasBanco time,
    UNIQUE (idEscala, nomeEscala)
);

CREATE TABLE RegJornada (
    idRegistro int(10) PRIMARY KEY UNIQUE,
    idFuncionario int(5),
    data date,
    horaEntrada time,
    horaSaida time,
    horaExtraNormal time,
    horaExtraFeriado time,
    horaBanco time,
    Observacao varchar(100)
);

CREATE TABLE AprvHrExtra (
    idRegAprov int(10) PRIMARY KEY,
    idRegistro int(10),
    dataOcorrencia date,
    valorHora time,
    destinoHora int(1)
);

CREATE TABLE SituacaoFuncionario (
    idSituacaoFunc Int(3) PRIMARY KEY UNIQUE,
    idFuncionario int(5),
    dataInicioAfastamento date,
    diasAfastado Int(3)
);

CREATE TABLE StatusFuncionario (
    idStatus Int(3) PRIMARY KEY,
    motivo varchar(20),
    fk_Funcionario_idFuncionario int(5)
);

CREATE TABLE Funcionario_Possui_Gestor (
    fk_Funcionario_idFuncionario int(5),
    fk_Funcionario_idFuncionario_ int(5)
);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_3
    FOREIGN KEY (idEmpresa???, idSetor???, idEscala???, idStatus???)
    REFERENCES ??? (???);
 
ALTER TABLE Empresa ADD CONSTRAINT FK_Empresa_2
    FOREIGN KEY (fk_Funcionario_idFuncionario)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE RESTRICT;
 
ALTER TABLE Setor ADD CONSTRAINT FK_Setor_2
    FOREIGN KEY (fk_Funcionario_idFuncionario)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE CASCADE;
 
ALTER TABLE Escalas ADD CONSTRAINT FK_Escalas_2
    FOREIGN KEY (fk_Funcionario_idFuncionario)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE CASCADE;
 
ALTER TABLE RegJornada ADD CONSTRAINT FK_RegJornada_3
    FOREIGN KEY (idFuncionario???)
    REFERENCES ??? (???);
 
ALTER TABLE SituacaoFuncionario ADD CONSTRAINT FK_SituacaoFuncionario_2
    FOREIGN KEY (idFuncionario???)
    REFERENCES ??? (???);
 
ALTER TABLE StatusFuncionario ADD CONSTRAINT FK_StatusFuncionario_2
    FOREIGN KEY (fk_Funcionario_idFuncionario)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario_Possui_Gestor ADD CONSTRAINT FK_Funcionario_Possui_Gestor_1
    FOREIGN KEY (fk_Funcionario_idFuncionario)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE RESTRICT;
 
ALTER TABLE Funcionario_Possui_Gestor ADD CONSTRAINT FK_Funcionario_Possui_Gestor_2
    FOREIGN KEY (fk_Funcionario_idFuncionario_)
    REFERENCES Funcionario (idFuncionario)
    ON DELETE RESTRICT;