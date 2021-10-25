create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

id bigint(5) auto_increment,
tipo varchar(20),
disponivel boolean,

primary key(id)
);

insert into tb_categoria(tipo, disponivel)values("salgada", true);
insert into tb_categoria(tipo, disponivel)values("vegetariana", true);
insert into tb_categoria(tipo, disponivel)values("vegada", true);
insert into tb_categoria(tipo, disponivel)values("meio a meio", false);
insert into tb_categoria (tipo, disponivel) values ("doce", true);


select * from tb_categoria;

create table tb_pizza(

id bigint auto_increment,
sabor varchar(20),
preco decimal (2.2),
tamanho varchar(20),

categoria_id bigint,

primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Brigadeiro", 50.00, "Grande", 4);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Mussarela", 38.00, "media", 1);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Escarola", 35.00,"pequena", 2);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Romeu e Julieta", 49.00, "media", 4);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Frutos do mar", 70.00, "Grande", 1);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Abobora", 30.00, "pequena", 3);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Marguerita", 41.00, "media", 1);
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("Brocolis", 39.00, "pequena", 2);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.classe_id;

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id = 2;
