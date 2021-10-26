create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(

id bigint auto_increment,
decoracao varchar (255),
disponivel boolean,

primary key(id)

);

insert into tb_categoria (decoracao, disponivel) values ("Escritório", true);
insert into tb_categoria (decoracao, disponivel) values ("Sala", true);
insert into tb_categoria (decoracao, disponivel) values ("Cozinha", true);
insert into tb_categoria (decoracao, disponivel) values ("Quarto", true);
insert into tb_categoria (decoracao, disponivel) values ("Banheiro", true);

select * from tb_categoria;

create table tb_produto(

id bigint auto_increment,

nome varchar(255),
preco int,
peso int,
loja varchar (255),
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)

);


insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Abajou", 500, 2, "camicado", 4);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Tapete", 300,10, "torra torra", 1);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Sofá", 3000,90, "magalu", 2);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Fogão", 900, 30, "casas bahia", 3);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Cama", 2000,80, "marabraz", 4);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Televisão", 10,  3000,"magalu", 2);
insert into tb_produto (nome, preco, peso, loja, categoria_id) values ("Toalha", 100, 1, "torra torra",5);

select * from tb_produto;

select * from tb_produto where preco > 500;

select * from tb_produto where preco between 300 and 600;

select * from tb_produto where nome like "%a%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id = 2;


