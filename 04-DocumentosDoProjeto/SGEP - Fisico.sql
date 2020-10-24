/* SGEP - Logico: */

/* criando a base de homologação para produao retirar o _HLM */
CREATE SCHEMA `SGEP_HLM` DEFAULT CHARACTER SET utf8 ;
USE SGEP_HLM;


CREATE TABLE Funcionario (
    id int(5) PRIMARY KEY AUTO_INCREMENT,
    nome varchar(30),
    sobrenome varchar(70),
    cpf char(11),
    matricula varchar(20),
    id_setor int(5),
    privilegio int(1),
    id_gestor int(5),
    id_escala int(5),
    status int(1),
    email varchar(100),
    senha varchar(30),
    id_empresa Int(3),
    diafolga int(1),
    UNIQUE (id, cpf, matricula, email)
);

CREATE TABLE Empresa (
    id Int(3) PRIMARY KEY AUTO_INCREMENT,
    razaoSocial varchar(100),
    cnpj char(14),
    UNIQUE (id, razaoSocial, cnpj)
);

CREATE TABLE Setor (
    id int(5) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    nomesetor varchar(50),
    centrodecusto varchar(30)
);

CREATE TABLE Escalas (
    idEscala int(5) PRIMARY KEY AUTO_INCREMENT,
    nomeEscala varchar(30),
    horaInicial time,
    horaFinal time,
    horaIntervalo time,
    limiteHorasBanco time,
    UNIQUE (idEscala, nomeEscala)
);

CREATE TABLE RegJornada (
    id int(10) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    id_funcionario int(5),
    data date,
    horaentrada time,
    horasaida time,
    horaextra time,
    horabanco time,
    observacao varchar(100)
);

CREATE TABLE AprvHrExtra (
    id int(10) PRIMARY KEY AUTO_INCREMENT,
    id_registro int(10),
    dataocorrencia date,
    valorhora time,
    destinohora int(1)
);

CREATE TABLE SituacaoFuncionario (
    id Int(3) PRIMARY KEY UNIQUE AUTO_INCREMENT,
    id_funcionario int(5),
    datainicioafastamento date,
    diasafastado Int(3)
);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Emp_Func
    FOREIGN KEY (id_empresa)
    REFERENCES Empresa (id);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Setor_Func
    FOREIGN KEY (id_setor)
    REFERENCES Setor (id);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Escala_Func
    FOREIGN KEY (id_escala)
    REFERENCES Escalas (idEscala);
 
ALTER TABLE RegJornada ADD CONSTRAINT FK_RegJornada
    FOREIGN KEY (id_funcionario)
    REFERENCES Funcionario (id);
 
ALTER TABLE AprvHrExtra ADD CONSTRAINT FK_AprvHrExtra
    FOREIGN KEY (id_registro)
    REFERENCES RegJornada (id);
 
ALTER TABLE SituacaoFuncionario ADD CONSTRAINT FK_SituacaoFuncionario
    FOREIGN KEY (id_funcionario)
    REFERENCES Funcionario (id);