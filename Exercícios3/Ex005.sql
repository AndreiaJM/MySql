create database db_meu_curso;

use db_meu_curso;

create table tb_categoria (

id bigint auto_increment,
areaAtuacao varchar (255),
disponivel boolean,

primary key (id)

);

insert into tb_categoria (areaAtuacao, disponivel) values ("Tecnologia", true);
insert into tb_categoria (areaAtuacao, disponivel) values ("Saude", true);
insert into tb_categoria (areaAtuacao, disponivel) values ("Engenharia", true);
insert into tb_categoria (areaAtuacao, disponivel) values ("Administração", true);
insert into tb_categoria (areaAtuacao, disponivel) values ("Direito", true);

select * from tb_categoria;

create table tb_curso(

id bigint auto_increment,
curso varchar (255),
valor int,
duracao int,
modulos int,

categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria(id)

);

insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Tecnologia da informação", 599, 4, 8, 1);
insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Biomedicina", 480, 4, 8, 2);
insert into tb_curso(curso, valor, duracao, modulos,categoria_id) values ("ADS", 280, 2, 4, 1);
insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Assistente administrativo", 180, 2, 4, 4);
insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Engenharia eletrica", 680, 5, 10, 3);
insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Advocacia", 550, 5, 10, 5);
insert into tb_curso(curso, valor, duracao, modulos,categoria_id) values ("Enfermagem", 499, 3, 6, 2);
insert into tb_curso(curso, valor, duracao, modulos, categoria_id) values ("Segurança da informacao", 399, 3, 6, 1);

select * from tb_curso;

select * from tb_curso where valor > 300;

select * from tb_curso where valor between 200 and 400;

select * from tb_curso where curso like "%j%";

select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where categoria_id=1;