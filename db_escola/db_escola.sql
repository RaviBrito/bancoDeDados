create database db_escola;
create table tb_estudante(
id bigint auto_increment,
nome varchar (25) not null,
ano int not null,
nota decimal (3,2) not null,
ensino varchar (15) not null,
primary key (id)
);

alter table tb_estudante add column professor varchar (25) not null;

insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Afonso Silva", 1 , 7.0, "médio", "Rafaela Amaral");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Bruno Cardoso", 2 , 6.5, "médio", "Roberto Souza");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Camila Oliveira", 3 , 8.0, "médio", "Rafaela Amaral");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Sofia Matos", 5 , 9.0, "fundamental", "Rafaela Amaral");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Isaac Andrade", 6 , 5.0, "fundamental", "Roberto Souza");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Italo Rodrigues", 7 , 6.0, "fundamental", "Roberto Souza");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Valter Nascimento Junior", 7 , 7.0, "fundamental", "Roberto Souza");
insert into tb_estudante (nome, ano, nota, ensino, professor) values ("Kaê Gonçalves", 2 , 9.5, "médio", "Rafaela Amaral");
select*from tb_estudante;

select* from tb_estudante where nota < 7.0;
select* from tb_estudante where nota > 7.0;
