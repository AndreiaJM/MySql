create database db_rh;

use db_rh;

create table tb_funcionaries(

id bigint(5) auto_increment,
nome varchar(20) not null,
cpf int,
cargo varchar(20) not null,
salario float,
primary key(id)

);

select * from tb_funcionaries;

insert into tb_funcionaries(nome, cpf, cargo, salario) values ("Jim", 123456789, "Vende papel", 3500.00);
insert into tb_funcionaries(nome, cpf, cargo, salario) values ("Pam", 987654321, "Recepcionista", 4500.00);
insert into tb_funcionaries(nome, cpf, cargo, salario) values ("Angela", 567894432, "Contabilidade", 1999.00);
insert into tb_funcionaries(nome, cpf, cargo, salario) values ("Michel", 123456654, "Gerente", 4500.00);
insert into tb_funcionaries(nome, cpf, cargo, salario) values ("Dwith", 987123765, "Assistente Gerente", 3400.00);


update tb_funcionaries set nome = "Philis" where id = 3;

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario <2000.00;
