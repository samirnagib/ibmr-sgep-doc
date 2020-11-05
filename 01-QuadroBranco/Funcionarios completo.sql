SELECT razaoSocial, P.id , P.nome, P.sobrenome, P.cpf, P.matricula, nomesetor, P.id_gestor, nomeEscala, horaInicial, horaFinal
FROM Funcionario as P 
inner join Empresa On P.id_empresa = Empresa.id
inner Join Setor On P.id_setor = Setor.id  
inner Join Escalas On P.id_escala = Escalas.idEscala
Group By razaoSocial
Order By nome
;