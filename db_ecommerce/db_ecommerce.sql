create database db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (6,2) not null,
descricao varchar (255) not null,
marca varchar (30) not null,
cor varchar (30) not null,
primary key (id)
);

select*from tb_produtos;

insert into tb_produtos (nome, preco, descricao, marca, cor) values ("camisa", 550.00, "Camisa Algodão 100%", "nike", "azul");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("camisa", 499.00, "Camisa dryfit", "adidas", "preto"); 
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("boné", 199.90, "Boné aba reta ", "nike", "verde, vermelho");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("calça", 299.00, "Moleton 100% Algodão", "adidas", "cinza");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Jaqueta", 750.00, "Modelo corta vento", "nike", "preto, branco"); 
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Tênis", 519.90, "Amortecimento médio", "adidas", "cinza");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Chuteira", 399.00, "costurada", "Penalty", "laranja"); 
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Mochila", 219.90, "100% Poliester", "adidas", "vermelho");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Mochila", 699.00, "Mochila grande 100% poliester", "nike", "roxo");
insert into tb_produtos (nome, preco, descricao, marca, cor) values ("Calça", 299.00, "Calça Moletom Algodão 100%", "nike", "preto");

select*from tb_produtos where preco > 500;
select*from tb_produtos where preco < 500;