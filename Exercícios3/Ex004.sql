create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(

id bigint auto_increment,
regiao varchar(255),
disponivel boolean,

primary key(id)

);

insert into tb_categoria (regiao, disponivel) values ("Norte", false);
insert into tb_categoria (regiao, disponivel) values ("Nordeste", true);
insert into tb_categoria (regiao, disponivel) values ("Sudeste",true);
insert into tb_categoria (regiao, disponivel) values ("Centro Oeste",true);
insert into tb_categoria (regiao, disponivel) values ("Sul",true);

create table tb_produto(

id bigint auto_increment,
nome varchar (255),
tipo varchar (255),
preco decimal,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);

insert into tb_produto (nome, tipo, preco, categoria_id) values ("Abacate", "doce", 15, 3);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Abacaxi do cerrado","acida",5, 4);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Banana ", "doce", 6, 3);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Cajá", "acida", 10, 2);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Cacau", "acida",20, 2);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Guaraná", "acida", 60, 1);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Jabuticaba", "semi-ácida", 49, 4);
insert into tb_produto (nome, tipo, preco, categoria_id) values ("Pinhão","semi-ácida",35, 5 );

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = categoria_id
where categoria_id=2;
