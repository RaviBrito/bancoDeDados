create database db_rh;
use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(35) not null,
d_nascimento date not null ,
genero varchar (20) not null ,
setor varchar (35) not null,
cargo varchar (35) not null,
primary key (id),
);
select*from tb_funcionarios;

insert into tb_funcionarios (nome, d_nascimento, genero,setor,cargo) 
values ("Raul Lee", "1988/01/01","homem cis", "financeiro", "gerente financeiro" ),
("Kau Majestic", "1995/02/25","homem trans", "comunicacao", "Influencer" ),
("Erika Hilton", "1992/12/09","mulher trans", "politicas publicas", "Lider" ),
("Rita von ruty", "1990/10/17","homem cis", "educacao", "professor" ),
("Dante Olivier", "1996/05/20","homem trans", "artes", "dancarino" );

alter table tb_funcionarios add salario decimal(8,2);

update tb_funcionarios set salario = 10000.00 where id=1;
update tb_funcionarios set salario = 16000.00 where id=2;
update tb_funcionarios set salario = 30000.00 where id=3;
update tb_funcionarios set salario = 15000.00 where id=4;
update tb_funcionarios set salario = 15500.00 where id=5;

update tb_funcionarios set nome = "Duda Salabert"  where id=1; 
update tb_funcionarios set genero = "mulher trans"  where id=1; 
update tb_funcionarios set d_nascimento = "1981/05/02"  where id=1; 
update tb_funcionarios set setor = "Educacao"  where id=1; 
update tb_funcionarios set cargo = "Professora"  where id=1; 
update tb_funcionarios set salario = 2000.00  where id=1; 

select*from tb_funcionarios where salario in (2000.00);
select*from tb_funcionarios where salario > 2000.00;

