CRIAR TABELA `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Titulo` varchar (255) NÃO NULO,
	`Texto` varchar (1000) NÃO NULO,
	`data` TIMESTAMP NOT NULL,
	`Temas_id` bigint NÃO NULO,
	`usuario_id` bigint NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` bigint NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`id`,` descricao`)
);

CRIAR TABELA `usuarios` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar (255) NÃO NULO,
	`usuario` varchar (255) NÃO NULO,
	`senha` varchar (255) NÃO NULO,
	CHAVE PRIMÁRIA (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT` Postagens_fk0` FOREIGN KEY (`Temas_id`) REFERÊNCIAS` Temas` (`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT` Postagens_fk1` FOREIGN KEY (`usuario_id`) REFERÊNCIAS` usuarios` (`id`);




