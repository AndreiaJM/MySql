create database db_escola;

use db_escola;

create table tb_estudantes(

id bigint(5) auto_increment,
nome varchar(20) not null,
serie int not null,
turma int not null,
nota float,
primary key(id)

);

select * from tb_estudantes;

insert into tb_estudantes(nome, serie, turma, nota) values ("Simba", 9, 2, 9);
insert into tb_estudantes(nome, serie, turma, nota) values ("Andreia", 9, 2, 10);
insert into tb_estudantes(nome, serie, turma, nota) values ("João", 8, 3, 6);
insert into tb_estudantes(nome, serie, turma, nota) values ("Maria", 7, 4, 7);
insert into tb_estudantes(nome, serie, turma, nota) values ("Joãozinho", 6, 5, 8);


update tb_estudantes set nota = 10 where id = 1;

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota <7;
