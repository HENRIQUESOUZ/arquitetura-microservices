--Insere os módulos
insert into modulo (id, nome, url, chave) values (1, 'Portal', 'http://localhost:8080/portal/token/', 'P0RT4LL');
insert into modulo (id, nome, url, chave) values (2, 'Cadastros', 'http://localhost:8080/cadastros/auth/', 'C4D4$TR0S');
insert into modulo (id, nome, url, chave) values (3, 'Pedidos', 'http://localhost:8080/pedidos/auth/', 'SACRSC1234');
insert into modulo (id, nome, url, chave) values (4, 'Relatórios', 'http://localhost:8080/relatorios/auth/', 'R3L4T0R10$');

--Insere usuário e seus módulos
insert into usuario (id, email, nome, senha, version) values (1, 'teste@gmail.com', 'Usuario 1', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1);
insert into usuario_modulo(id_usuario, id_modulo) values (1, 1);
insert into usuario_modulo(id_usuario, id_modulo) values (1, 2);
insert into usuario_modulo(id_usuario, id_modulo) values (1, 3);
insert into usuario_modulo(id_usuario, id_modulo) values (1, 4);

insert into usuario (id, email, nome, senha, version) values (2, 'ws@gmail.com', 'WS', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1);

--Insere configuração
INSERT INTO configuracao(id, nome_projeto) VALUES (1, 'Portal');
INSERT INTO configuracao_modulo(id_configuracao, id_modulo) VALUES (1,1);
INSERT INTO configuracao_modulo(id_configuracao, id_modulo) VALUES (1,2);

SELECT setval('modulo_id_seq', (select max(id) from modulo));
SELECT setval('usuario_id_seq', (select max(id) from usuario));
SELECT setval('configuracao_id_seq', (select max(id) from configuracao));

insert into cliente (id, nome, cpf_cnpj) values (nextval('cliente_id_seq'), 'Cliente 1', '9020930209320');
insert into cliente (id, nome, cpf_cnpj) values (nextval('cliente_id_seq'), 'Cliente 2', '0909278738738');
insert into cliente (id, nome, cpf_cnpj) values (nextval('cliente_id_seq'), 'Cliente 3', '8020930292887');
insert into cliente (id, nome, cpf_cnpj) values (nextval('cliente_id_seq'), 'Cliente 4', '1020967292882');
insert into cliente (id, nome, cpf_cnpj) values (nextval('cliente_id_seq'), 'Cliente 5', '2038730292890');

insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Cruze', 'CHEVROLET');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Camaro', 'CHEVROLET');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Malobu', 'CHEVROLET');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'A3', 'AUDI');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'A4', 'AUDI');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'TT', 'AUDI');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), '118', 'BMW');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), '320', 'BMW');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), '328', 'BMW');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Jetta', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Golf', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Passat', 'VOLKSWAGEN');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Bravo', 'FIAT');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Punto', 'FIAT');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Fusion', 'FORD');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Focus', 'FORD');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'New Fiesta', 'FORD');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Evoque', 'LAND_ROVER');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Range Rover Sport', 'LAND_ROVER');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Classe A', 'MERCEDES');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Classe B', 'MERCEDES');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Optima', 'KIA');
insert into modelo (id, nome, marca) values (nextval('modelo_id_seq'), 'Cadenza', 'KIA');

insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Cruze LTZ Aut', (select id from modelo where nome = 'Cruze'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Cruze LTZ Man', (select id from modelo where nome = 'Cruze'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Camaro SS', (select id from modelo where nome = 'Camaro'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'A3 1.8T Attraction', (select id from modelo where nome = 'A3'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'A3 1.4T', (select id from modelo where nome = 'A3'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'A4 Attraction', (select id from modelo where nome = 'A4'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'TT Attraction', (select id from modelo where nome = 'TT'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'TT Ambition', (select id from modelo where nome = 'TT'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), '118i', (select id from modelo where nome = '118'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), '320i', (select id from modelo where nome = '320'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Jetta TSI', (select id from modelo where nome = 'Jetta'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Jetta Comforline', (select id from modelo where nome = 'Jetta'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Golf Comforline', (select id from modelo where nome = 'Golf'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Golf GTI', (select id from modelo where nome = 'Golf'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Passat', (select id from modelo where nome = 'Passat'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Passat CC', (select id from modelo where nome = 'Passat'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Bravo Essence', (select id from modelo where nome = 'Bravo'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Bravo T-Jet', (select id from modelo where nome = 'Bravo'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Punto Attractive', (select id from modelo where nome = 'Punto'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Punto T-Jet', (select id from modelo where nome = 'Punto'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Fusion iVCT', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Fusion GTDi 4WD', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Fusion Hybrid', (select id from modelo where nome = 'Fusion'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Focus Powershift', (select id from modelo where nome = 'Focus'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Focus Titanium', (select id from modelo where nome = 'Focus'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'New Fiesta SE', (select id from modelo where nome = 'New Fiesta'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'New Fiesta Titanium', (select id from modelo where nome = 'New Fiesta'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Evoque Pure', (select id from modelo where nome = 'Evoque'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Evoque Dynamic', (select id from modelo where nome = 'Evoque'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Range Rover Sport', (select id from modelo where nome = 'Range Rover Sport'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Classe A', (select id from modelo where nome = 'Classe A'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Classe B', (select id from modelo where nome = 'Classe B'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Optima', (select id from modelo where nome = 'Optima'));
insert into veiculo (id, nome, id_modelo) values (nextval('veiculo_id_seq'), 'Cadenza', (select id from modelo where nome = 'Cadenza'));

