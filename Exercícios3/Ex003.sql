create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment,
secao varchar(255),
disponivel boolean,

primary key(id)

);

insert into tb_categoria (secao, disponivel) values("Higiene Pessoal", true);
insert into tb_categoria (secao, disponivel) values("Drogaria", true);
insert into tb_categoria (secao, disponivel) values("Beleza", true);
insert into tb_categoria (secao, disponivel) values("Cuidados Kids", true);
insert into tb_categoria (secao, disponivel) values("Produtos naturais", false);

select * from tb_categoria;

create table tb_produto(

id bigint auto_increment,

nome varchar(255),
preco decimal (2.2),
dvalidade date,
categoria_id bigint,

primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto (nome, preco, dvalidade, categoria_id) values("dipirona sodica", 15.00, "2022-09-15", 2);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Sobra my beline", 60.00, "2022-08-07", 3);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Protetor Solar kids", 69.90,"2021-12-15", 4);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Shampoo seda", 11.99, "2022-11-23", 1);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Chá seca barriga", 9.99, "2021-11-15", 5);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Paracetamol", 12.80, "2023-10-11", 2);
insert into tb_produto (nome, preco, dvalidade, categoria_id) values("Batom vult", 29.99, "2022-05-01", 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 50;

select * from tb_produto where nome like "b%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3; 


