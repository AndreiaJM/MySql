create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(

id bigint(5) auto_increment,
nome varchar(20) not null,
cor varchar(20) not null,
categoria varchar(20) not null,
preco float,
primary key(id)

);

select * from tb_produtos;

insert into tb_produtos(nome, cor, categoria, preco) values ("Edredom", "verde", "cama", 550.00);
insert into tb_produtos(nome, cor, categoria, preco) values ("Toalha", "branca", "banho", 45.00);
insert into tb_produtos(nome, cor, categoria, preco) values ("Toalha Mesa", "rosa", "mesa", 199.00);
insert into tb_produtos(nome, cor, categoria, preco) values ("Coberdom", "vinho", "cama", 600.00);
insert into tb_produtos(nome, cor, categoria, preco) values ("Toalha", "preta", "banho", 34.00);


update tb_produtos set cor = "preto" where id = 3;

select * from tb_produtos;

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco <500.00;
