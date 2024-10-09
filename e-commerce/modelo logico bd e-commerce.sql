-- Criação do banco de dados para o cenário de e-commerc

create database ecommerce;

use ecommerce;

-- tabela Cliente.
create table Client(
	idCliente int auto_increment primary key,
    Fname varchar(20),
    Minit char(3),
    Lname varchar(20),
    CPF varchar(11) not null,
    Addres varchar(30),
    constraint unique_cpf_client unique (CPF)
);
-- tabela produto.
create table Product(
	idProdutct int auto_increment primary key,
    Pname varchar(10) not null,
    Classification_kids bool default false,
    Categoria enum('Eletronico','Vestimenta','Brinquedos','Alimentos', 'Móveis') not null,
    Avaliacao float default 0,
    size varchar(10),
    constraint unique_cpf_client unique (CPF)
);
