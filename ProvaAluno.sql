create database AlunoProva;
use AlunoProva;

create table prova(
	codprova int(5),
    descprova varchar(15),
    dataprova date,
    primary key (codprova)
);

create table questoes(
	codquestao int(7),
    enunciado varchar(30),
    nivel int(2),
    primary key (codquestao)
);

create table itemProva(
	codprova int(5),
    codquestao int(7),
	foreign key (codprova) REFERENCES prova (codprova),
	foreign key (codquestao) REFERENCES questoes (codquestao)
);

show tables;