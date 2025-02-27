
create table cursos	(
	id serial primary key,
	nome varchar(100) not null
)

-------------

drop table cursos
drop table professores

-------------

insert into cursos (nome) values ('Curso de Java')

-------------

select * from cursos

select * from professores

-------------

insert into professores (id, nome, especialidade, datanascimento, 
						dataadmissao, inativo, resumo, salario ) 
						values
						(2, 'kkkkk', 'Angular', '20/07/1992', '16/03/2018 16:10:00', false, 'Texto grande',
						2000.55)

-------------

alter table professores add primary key (id)

alter table professores alter column nome set not null

-------------

select * from professores where especialidade = 'Java';

select * from professores where inativo != true

select * from professores where dataadmissao > '01/01/2021 00:00:00';

select * from professores where salario <= 2500;

select * from professores where dataadmissao >= '01/01/2020' and dataadmissao <= '31/12/2020';

select * from professores where dataadmissao >= '01/01/2021' and dataadmissao <= '31/12/2021' and inativo = true;

select * from professores where especialidade = 'Java' or especialidade = 'Angular';

-------------

select * from professores where dataadmissao >= '01/01/2020' and dataadmissao <= '31/12/2020';

select * from professores where dataadmissao >= '01/01/2021' and dataadmissao <= '31/12/2021' and inativo = true;

select * from professores where especialidade = 'Java' or especialidade = 'Angular';

-------------

select * from professores where nome LIKE 'Fer%';

select * from professores where nome LIKE '%nda';	

select * from professores where nome LIKE '%an%';

select * from professores where lower(nome) LIKE 'fer%';

-------------

-- Fazer o backup antes

delete from professores where id = 2

delete from professores where inativo = true

-------------

update cursos
set nome = 'Curso PostgreSQL'
where id = 1;

update professores
set nome = 'Edipo Oliveira', especialidade = 'Banco de dados'
where id = 1;

	-- Aumentar o salario do professor em 10% que já trabalha a mais de 3 anos
update professores
set salario = salario * 1.1
where dataadmissao <= '31/12/2018';

-------------

	-- Chaves estrangeiras

create table professores	(
	id serial primary key,
	nome varchar(100) not null
);

create table cursos	(
	id serial primary key,
	nome varchar(100) not null,
	idprofessor integer,
	foreign key (idprofessor) references professores(id)
);

insert into professores (nome) values ('Edipo');

insert into cursos (nome, idprofessor) values ('PostgreSQL', 1);

select * from cursos




