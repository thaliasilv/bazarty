DROP DATABASE mvcd;
CREATE DATABASE mvcd;

USE mvcd;

CREATE TABLE IF NOT EXISTS `mvcd`.`usuario` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `papel` VARCHAR(100) NOT NULL DEFAULT 'usuario'
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8

INSERT INTO `mvcd`.`usuario` (`nome`, `senha`, `email`, `papel`) VALUES ('admin', '123', 'admin@admin', 'admin');
INSERT INTO `mvcd`.`usuario` (`nome`, `senha`, `email`, `papel`) VALUES ('usuario', '123', 'usuario@usuario', 'usuario');


 create table cliente(
        `id_cliente` integer unsigned not null auto_increment,
        nome varchar(100) not null,
        apelido varchar(50) not null,
        encereco varchar(70) not null,
        cpf varchar(11) not null,
        cidade varchar(35) not null,
        estado varchar(25) not null,
        aniversario varchar(40) not null,
        email varchar(50) not null,
        senha varchar(60) not null,
        primary key(id_cliente)
   );

 create table produto(
     nome varchar(60) not null,
     cod int(10) unsigned not null,
     categ varchar(15) not null,
     cod_fabri int(10) unsigned not null,
     descr varchar(100),
     quant int(3) unsigned not null,
     preco double(10,2) unsigned not null,
     primary key(cod)
     );


// aulinha de hoje


CREATE TABLE cupom(
	idcupom int (11) unsigned not null auto_increment,
	nomecupom varchar (60) not null,
	desconto int (11) not null,
	primary key (idcupom)
);

create table log_produto(
	id_log int(11) unsigned not null auto_increment,
	tabela varchar(45) not null,
	usuario varchar(45) not null,
	DATA_HORA DATETIME,
	ACAO varchar (45) not null,
	DADOS varchar (1000),
	primary key(id_log)
 );

create table produtos(
	id_produto int(11) unsigned not null auto_increment,
	preco double not null,
	nomeproduto varchar (30) not null,
	descricao varchar (60) not null,
	tamanho varchar (60) not null,
	imagem varchar (60) not null,
	sexo varchar (60) not null,
	categoria varchar (60) not null,
	estoque_minimo int (11) not null,
	estoque_maximo int (11) not null,
	primary key(id_produto)
);

create table estoque(
	idestoque int(11) unsigned not null auto_increment,
	id_produto int (11) not null,
	qtde int (11) not null,
	primary key(idestoque), 
	foreign key (id_produto) references produtos (id_produto) on delete cascade on update cascade 
	);

create table usuario(
	idusuario int(11) unsigned not null auto_increment,
	nomeusuario varchar (60) not null,
	email varchar (60) not null,
	senha varchar (60) not null,
	cpf varchar (60) not null,
	datadenascimento varchar (10) not null,
	sexo varchar (60) not null,
	tipousuario varchar (5) not null,
	primary key(idusuario)

);

create table endereco (
	idendereco int(11) unsigned not null auto_increment,
	idusuario int (11) not null,
	logradouro varchar (60) not null,
	numero varchar (7) not null,
	complemento varchar (60) not null,
	bairro varchar (60) not null,
	cidade varchar (60) not null,
	cep varchar (60) not null,
	primary key(idendereco), 
	foreign key (idusuario) references usuario (idusuario) on delete cascade on update cascade 
);
create table pedido_produto(
	idproduto int(11) unsigned not null auto_increment,
	idpedido (11) not null,
	quantidade int (11) not null,
	primary key(idendereco), 
	foreign key (idusuario) references usuario (idusuario) on delete cascade on update cascade 
);

create table pedido(
	idpedido int (11) unsigned not null auto_increment,
	idusuario (11) not null,
	idendereco(11) not null,
	datacompra date,
	
);