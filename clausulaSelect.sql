create database ClausulaSelect;
use ClausulaSelect;
show tables;
desc cliente;
desc setor;
desc colaborador;
desc pedido;
create table setor (cod_setor int auto_increment,
descricao_setor varchar (25) not null,
primary key (cod_setor));
create table colaborador (cod_colaborador int auto_increment,
nome_colaborador varchar (25),
sal_colaborador float (5.2),
cod_setor int,
CONSTRAINT fk_setor foreign key (cod_setor) REFERENCES setor (cod_setor),
primary key (cod_colaborador));
create table cliente (cod_cliente int auto_increment,
nome_cliente varchar (25),
sobrenome_cliente varchar (25),
primary key (cod_cliente));
create table pedido (cod_pedido int auto_increment,
valor_pedido float (5.2),
cod_cliente int,
CONSTRAINT fk_cliente foreign key (cod_cliente) REFERENCES cliente (cod_cliente),
primary key (cod_pedido));
insert into setor (cod_setor, descricao_setor) values (null, "Marketing");
insert into setor (cod_setor, descricao_setor) values (null, "Administrativo");
insert into setor (cod_setor, descricao_setor) values (null, "Vendas");
insert into setor (cod_setor, descricao_setor) values (null, "Finanças");
select * from setor;
insert into colaborador values (null, "Joao", 1400.52, 1);
insert into colaborador values (null, "Ana", 800.00, 1);
insert into colaborador values (null, "Maria", 500.00, 1);
insert into colaborador values (null, "Jose", 1200.52, 1);
insert into colaborador values (null, "Carlos", 1000.00, 2);
insert into colaborador values (null, "Aline", 7500.00, 3);
insert into colaborador values (null, "Sebastião", 1200.00, 4);
insert into colaborador values (null, "Matheus", 1200.52, 4);
select * from colaborador;
insert into cliente values (null, "Matheus", "Silva");
insert into cliente values (null, "Henrique", "Silva");
insert into cliente values (null, "Manoel", "Fernandes");
insert into cliente values (null, "Auxiliadora", "Aparecida");
insert into cliente values (null, "Andre", "Maia");
insert into cliente values (null, "Joao", "Silva");
insert into cliente values (null, "Maria", "Gonçalves");
insert into cliente values (null, "Carlos", "Nascimento");
select * from cliente;
insert into pedido values (null, 120.15, 2);
insert into pedido values (null, 2000.00, 4);
insert into pedido values (null, 1500.00, 5);
insert into pedido values (null, 1450.25, 2);
insert into pedido values (null, 1200.00, 3);
insert into pedido values (null, 2000.00, 7);
insert into pedido values (null, 1500.00, 3);
insert into pedido values (null, 1700.25, 2);
select * from pedido;
select * from cliente;
select nome_cliente, sobrenome_cliente from cliente;
select nome_cliente, sobrenome_cliente from cliente where cod_cliente = 1;
select * from cliente where cod_cliente <> 1; -- != --
select * from cliente order by nome_cliente asc;
select * from cliente order by nome_cliente desc;
select * from cliente where cod_cliente >= 5;
select * from cliente where nome_cliente > 'carlos';
select * from cliente where nome_cliente >= 'carlos';
select * from cliente where nome_cliente < 'carlos';
select * from cliente where nome_cliente <= 'carlos';
select * from cliente where nome_cliente between 'carlos' and 'maria'; -- comentario --
select * from cliente where cod_cliente between 5 and 7; /* comentario */
select * from cliente where nome_cliente not between 'carlos' and 'maria'; 
select * from cliente where cod_cliente  between 2 and 6;
select * from cliente where sobrenome_cliente like '%silva%';
select * from cliente where cod_cliente > 1 and cod_cliente < 7;
select * from cliente where cod_cliente > 1 or cod_cliente < 7;
select * from cliente where sobrenome_cliente like 'silva' and cod_cliente = 6;
select * from cliente where sobrenome_cliente like 'silva' or cod_cliente = 6;
select * from cliente where nome_cliente in ('carlos','maria', 'andre');
select * from cliente where nome_cliente not in ('carlos','maria');
select  mod(valor_pedido,2) from pedido; -- resto da divisão que pode ser o % --
select * from cliente where cod_cliente % 2 != 0;
select max(sal_colaborador) as maior_sal from colaborador;
select min(sal_colaborador) as menor_sal from colaborador;
select avg(sal_colaborador) as media_sal from colaborador;
select sum(sal_colaborador) as soma_sal from colaborador;
select count(sal_colaborador) as media from colaborador;
select  nome_colaborador, sal_colaborador, format((sal_colaborador *1.5),2) as aumento_sal from colaborador;
select format(avg(sal_colaborador),2) as 'media salario' from colaborador; 
select * from colaborador;
select * from setor;
