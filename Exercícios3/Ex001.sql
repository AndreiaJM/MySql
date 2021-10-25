create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

id bigint(5) auto_increment,
tribo varchar(20),
desbloqueado boolean,

primary key(id)
);

insert into tb_classe (tribo, desbloqueado) values ("agua", true);
insert into tb_classe(tribo, desbloqueado)values("fogo", true);
insert into tb_classe(tribo, desbloqueado)values("terra", true);
insert into tb_classe(tribo, desbloqueado)values("ar", false);

select * from tb_classe;

create table tb_personagem(

id bigint auto_increment,
nome varchar(20),
dominador boolean,
poderdefesa int,
poderataque int,
nivel varchar(20),
classe_id bigint,

primary key(id),
foreign key (classe_id)references tb_classe(id)
);

insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Katara", true, 5000, 6000, "intermediario", 1);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Zuco", true, 10000, 10000, "avançado", 2);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Sokka", false, 3000, 2500, "iniciante", 1);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Toph", true, 7500, 8000, "intermediario", 3);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Appa", false, 8000, 7500, "intermediario", 4);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Cora", true, 9000, 9500, "avançado", 1);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Tenzin", true, 9500, 10000, "avançado", 4);
insert into tb_personagem(nome, dominador, poderdefesa, poderataque, nivel, classe_id)values("Bolin", true, 8300, 8700, "avançado", 3);

select * from tb_personagem;

select * from tb_personagem where poderataque > 8000;

select * from tb_personagem where poderdefesa between 6000 and 8000;

select * from tb_personagem where nome like "c%";

select * from tb_personagem;

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where tb_classe.id = 3;