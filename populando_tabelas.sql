/*Populando bases*/
USE OFICINA;

INSERT INTO SERVICOS
(
    descricao,
    valor
)
VALUES
("TROCA DE ÓLEO E FILTRO DE OLEO", 30),
("TROCA DE PASTILHA DE FREIO", 40),
("TROCA DE DISCO DE FREIO", 70),
("TROCA DE AMORTECEDOR DIANTEIRO - PAR", 140),
("TROCA DE AMORTECEDOR TRASEIRO - PAR", 100),
("TROCA DE VELA E DE CABO DE IGNICAO", 70),
("TROCA DE TENSOR E CORREIA DENTADA", 140),
("TROCA DE EMBREAGEM", 210),
("HIGIENIZAÇÃO DO AR CONDICIONADO", 30),
("SANGRIA DO OLEO DE FREIO", 70),
("LIMPEZA DO TBI", 70),
("RASTREAMENTO COM SCANNER", 80);

INSERT INTO PECAS
(
    descricao,
    valor
)
VALUES
("FILTRO DE ÓLEO", 15),
("PASTILHA DE FREIO", 29.90),
("DISCO DE FREIO", 265),
("AMORTECEDOR DIANTEIRO", 250),
("AMORTECEDOR TRASEIRO", 184),
("VELA DE IGNIÇÃO", 90.9),
("CABO DE IGNIÇÃO", 204),
("CORREIA DENTADA", 70),
("EMBREAGEM", 197.5);

INSERT INTO EQUIPE
(
    responsavel
)
VALUES
('JULIANO'),
('MARCIO'),
('ADRIANO');

INSERT INTO CLIENTE
(
	nome,
    cpf,
    endereco,
    telefone
)
VALUES
('MARIA', '12345678900', 'AV DAS PEDRAS, 150', '11123456789'),
('PAULO', '33345678900', 'AV DAS ROSAS, 1230', '11543216789'),
('LUIS', '35215678900', 'AV GUILHERME, 45', '11882216789'),
('MAGALI', '88715678900', 'RUA CANADA, 100', '11455416789');

INSERT INTO VEICULO
(
    tipo,
    marca,
    modelo,
    ano,
    idCliente
)
VALUES
('UTILITARIO', 'FIAT','STRADA ENDURANCE',2020, 2),
('PASSEIO', 'RENAULT','CLIO',2012, 1),
('PASSEIO', 'VOLKSWAGEN','GOL',2018, 3),
('PASSEIO', 'VOLKSWAGEN','GOL',2016, 4);

INSERT INTO ORDEMSERVICO
(
    idEquipe, 
    status,
    dataEmissao,
    dataConclusao,
    idCliente
)
VALUES
(2, 'Finalizado', '2021-05-05','2021-05-10',1),
(1, 'Em execução', '2022-09-22',null,1),
(2, 'Finalizado', '2015-07-05','2015-05-15',2),
(3, 'Finalizado', '2017-01-22','2017-01-27',2),
(2, 'Finalizado', '2019-05-05','2019-05-09',2),
(1, 'Em execução', '2022-09-22',null,2),
(1, 'Em execução', '2022-09-22',null,2),
(2, 'Novo', '2022-09-25', null, 3),
(2, 'Em execução', '2022-09-23', null, 4);

insert into ORDEMSERVICOS_TEM_SERVICOS
(
    idOrdemServicos,
    idServicos,
    quantidade,
    aprovadoEquipe,
	aprovadoCliente
)
VALUES
(1, 12, 1,1,1),
(2, 8, 1,1,1),
(3, 9, 1,1,1),
(4, 1, 1,1,1),
(5, 8, 1,1,1),
(6, 6, 1,1,1),
(7, 7, 1,1,1),
(8, 5, 1,0,0),
(1, 11, 1,1,1);

INSERT INTO ORDEMSERVICOS_TEM_PECAS
(
    idOrdemServicos,
    idPecas,
    quantidade,
    aprovadoEquipe,
	aprovadoCliente
)
VALUES
(2, 9, 1,1,1),
(4, 1, 1,1,1),
(5, 9, 1,1,1),
(6, 6, 1,1,1),
(6, 7, 1,1,1),
(7, 8, 1,1,1),
(8, 5, 1,0,0);

