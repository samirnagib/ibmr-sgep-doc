/*INSERIR VALORES DE EMRPESAS */

insert into Empresa values 
( null, 'MASTER EMPRESA CO', '99999999999999'),
( null, 'UNIVERSO MIDIAS LTDA', '11111111000001'),
( null, 'ESCOLA AMANHECER ME', '22222222000133');


insert into Setor values 
( null, 'MASTER SETOR', 'AA-99'),
( null, 'SETOR ADMINISTRATIVO', 'AA-0000'),
( null, 'TI', 'TI-0001'),
( null, 'RECURSOS HUMANOS', 'RH-0001'),
( null, 'JURIDICO', 'JU-0001'),
( null, 'ENSINO FUNDAMENTAL', 'PFE-0001'),
( null, 'ENSINO MEDIO', 'PFE-0002'),
( null, 'ENSINO SUPERIOR', 'PFE-0003');


INSERT INTO Escalas values ( null, 'Turno 0h as 09h', '000000', '090000', '010000', '500000'),
( null, 'Turno 9h as 18h', '090000', '180000', '010000', '500000'),
( null, 'Turno 18h as 03h', '180000', '030000', '010000', '500000'),
( null, 'Professores Manhã', '070000', '120000', '010000', '250000'),
( null, 'Professores Tarde', '130000', '180000', '010000', '250000'),
( null, 'Professores Noite', '180000', '220000', '010000', '250000');


/* PRIVILEGIO 

0 - ADMIN GERAL
1 - GESTOR
2 - SUB GESTOR
3 - FUNCIONARIO
*/

/* id, nome, sobrenome, cpf, matricula, setor, privilegio, id gestor, ,id escala, id status, email, senha, empresa, diafilga*/
INSERT INTO Funcionario values ( null, 'Master', 'Funcionario', '99999999999', 'A99', 1, 0, 1, 1, 1,'master.func@ADMIN.com','Admin@2020',1,8),
( null, 'Marcelo', 'Silva', '00000000001', 'AB01', 2, 1, 1, 1, 1,'marcelo.silva@email.com','Admin@2020',2,8),
( null, 'Ana', 'Mara', '09999999997', 'ab9', 3, 3, 2, 2, 1,'amara@email.com','Admin@2020',2,8),
( null, 'João', 'Don Valhao', '09999999397', 'ab7', 3, 3, 2, 3, 1,'jvalaho@email.com','Admin@2020',2,8),
( null, 'Joana', 'Dymm', '99999999988', 'CC-22011', 4, 1, 0, 2, 1,'jdymm@escola.edu','Admin@2020',3,8),
( null, 'Josenildo', 'Francisco Sá', '88009999900', 'CC-330011', 2, 0, 1, 2, 1,'chicosa@escola.edu','Admin@2020',3,8),
( null, 'Maria', 'Pia', '00112345688', 'CC-22011', 6, 3, 5, 4, 1,'maria.pia@escola.edu','Admin@2020',3,8),
( null, 'Zilda', 'Arns', '78965413211', 'CC-22011', 7, 3, 5, 5, 1,'zilda@escola.edu','Admin@2020',3,8),
( null, 'Bruno', 'Nogueira', '95555555559', 'CC-22011', 8, 3, 5, 6, 1,'bruno.nogueiea@escola.com','Admin@2020',3,8);