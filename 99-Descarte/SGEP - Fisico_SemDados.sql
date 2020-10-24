CREATE SCHEMA `SGEP_HLM` DEFAULT CHARACTER SET utf8 ;
USE SGEP_HLM;

CREATE TABLE Empresa (
    idEmpresa Int(3) PRIMARY KEY AUTO_INCREMENT,
    razaoSocial varchar(100) NOT NULL,
    cnpj char(14) NOT NULL,
    UNIQUE (idEmpresa, razaoSocial, cnpj)
);


CREATE TABLE Funcionario (
    idFuncionario int(5) PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    sobrenome varchar(70) NOT NULL,
    cpf char(11) NOT NULL,
    matricula varchar(20),
    idSetor int(5) NOT NULL,
    privilegio int(1) NOT NULL,
    idGestor int(5) NOT NULL,
    idEscala int(5) NOT NULL,
    idStatus Int(3) NOT NULL,
    email varchar(100) NOT NULL,
    senha varchar(30) NOT NULL,
    idEmpresa Int(3) NOT NULL,
    diaFolga int(1) NOT NULL,
    UNIQUE (idFuncionario, cpf, matricula, email)
);


CREATE TABLE Setor (
    idSetor int(5) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    nomeSetor varchar(50) NOT NULL,
    centroDeCusto varchar(30)
);


CREATE TABLE Escalas (
    idEscala int(5) PRIMARY KEY AUTO_INCREMENT,
    nomeEscala varchar(30) NOT NULL,
    horaInicial time NOT NULL,
    horaFinal time NOT NULL,
    horaIntervalo time NOT NULL,
    limiteHorasBanco time,
    UNIQUE (idEscala, nomeEscala)
);

CREATE TABLE RegJornada (
    idRegistro int(10) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    idFuncionario int(5) NOT NULL,
    data date NOT NULL,
    horaEntrada time NOT NULL,
    horaSaida time NOT NULL,
    horaExtraNormal time,
    horaExtraFeriado time,
    horaBanco time,
    Observacao varchar(100)
);

CREATE TABLE AprvHrExtra (
    idRegAprov int(10) PRIMARY KEY AUTO_INCREMENT,
    idRegistro int(10) NOT NULL,
    dataOcorrencia date,
    valorHora time,
    destinoHora int(1)
);

CREATE TABLE SituacaoFuncionario (
    idSituacaoFunc Int(3) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    idFuncionario int(5) NOT NULL,
    dataInicioAfastamento date,
    diasAfastado Int(3)
);

CREATE TABLE StatusFuncionario (
    idStatus Int(3) PRIMARY KEY AUTO_INCREMENT,
    motivo varchar(20) NOT NULL
);
 

 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Emp_Func
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa (idEmpresa);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Setor_Func
    FOREIGN KEY (idSetor)
    REFERENCES Setor (idSetor);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Escala_Func
    FOREIGN KEY (idEscala)
    REFERENCES Escalas (idEscala);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Status_Func
    FOREIGN KEY (idStatus)
    REFERENCES StatusFuncionario (idStatus);
 
ALTER TABLE RegJornada ADD CONSTRAINT FK_Func_RegJornada
    FOREIGN KEY (idFuncionario)
    REFERENCES Funcionario (idFuncionario);
 
ALTER TABLE AprvHrExtra ADD CONSTRAINT FK_Jornada_Extra
    FOREIGN KEY (idRegistro)
    REFERENCES RegJornada (idRegistro);
 
ALTER TABLE SituacaoFuncionario ADD CONSTRAINT FK_Func_Afastado
    FOREIGN KEY (idFuncionario)
    REFERENCES Funcionario (idFuncionario);
 
 