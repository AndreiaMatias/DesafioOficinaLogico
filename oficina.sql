/*Projeto lógico oficina*/

CREATE DATABASE oficina;

USE oficina;

CREATE TABLE IF NOT EXISTS CLIENTE
(
	idCliente int primary key auto_increment,
	nome varchar(45) not null,
    cpf varchar(11) not null,
    endereco varchar(100) not null,
    telefone varchar(11),
    constraint fk_cpf unique(cpf)
);

CREATE TABLE IF NOT EXISTS VEICULO
(
	idVeiculo int primary key auto_increment,
    tipo varchar(45) not null,
    marca varchar(45) not null,
    modelo varchar(45) not null,
    ano int not null,
    idCliente int not null,
    constraint fk_cliente_veiculo foreign key (idCliente) references Cliente(idCliente)
);

CREATE TABLE IF NOT EXISTS EQUIPE
(
	idequipe int primary key auto_increment,
    responsavel varchar(45) not null
);

CREATE TABLE IF NOT EXISTS MECANICO
(
	idMecanico int primary key auto_increment,
    nome varchar(45) not null,
    endereco varchar(45) not null,
    especialidade varchar(45) not null,
    idEquipe int not null,
    constraint fk_mecanico_equipe foreign key (idEquipe) references Equipe(idEquipe)
);

CREATE TABLE IF NOT EXISTS SERVICOS
(
	idServicos int primary key auto_increment,
    descricao varchar(45) not null,
    valor double not null
);

CREATE TABLE IF NOT EXISTS PECAS
(
	idPecas int primary key auto_increment,
    descricao varchar(45) not null,
    valor double not null
);

CREATE TABLE IF NOT EXISTS ORDEMSERVICO
(
	idOrdemServico int primary key auto_increment,
    idEquipe int not null, 
    status enum('Novo', 'Em avaliação', 'Aprovado pela Equipe. Aguarda aprovação do cliente', 'Aprovado pelo cliente', 'Em execução', 'Aguardando pagamento', 'Finalizado')  not null,
    dataEmissao date not null,
    dataConclusao date,
    idCliente int not null,
    constraint fk_ordemservico_equipe foreign key (idEquipe) references Equipe(idEquipe),
    constraint fk_ordemservico_cliente foreign key (idCliente) references Cliente(idCliente)
);

CREATE TABLE IF NOT EXISTS ORDEMSERVICOS_TEM_SERVICOS
(
    idOrdemServicos int not null,
    idServicos int not null,
    quantidade int not null default 1,
    aprovadoEquipe boolean not null default 0,
	aprovadoCliente boolean not null default 0,
    primary key(idOrdemServicos, idServicos),
    constraint fk_ordemServicos foreign key (idOrdemServicos) references OrdemServico(idOrdemServico),
    constraint fk_servicos foreign key (idServicos) references Servicos(idServicos)
);

CREATE TABLE IF NOT EXISTS ORDEMSERVICOS_TEM_PECAS
(
    idOrdemServicos int not null,
    idPecas int not null,
    quantidade int not null default 1,
    aprovadoEquipe boolean not null default 0,
	aprovadoCliente boolean not null default 0,
    primary key(idOrdemServicos, idPecas),
    constraint fk_ordemServicos_pecas foreign key (idOrdemServicos) references OrdemServico(idOrdemServico),
    constraint fk_servicos_pecas foreign key (idPecas) references Pecas(idPecas)
);

