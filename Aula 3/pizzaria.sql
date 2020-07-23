create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint(3) auto_increment,
    nome_Pizzaria varchar(20) not null,
    endereco varchar(30) not null,
    pontuacao int(3) not null,
    primary key(id)
);

create table tb_pizza(
	id bigint(3) auto_increment,
    nome_Pizza varchar(30) not null,
    tipo varchar(20) not null,
    tamanho varchar(10) not null,
    preco decimal(7,2) not null,
    categoria_id bigint(3) not null,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(nome_Pizzaria,endereco,pontuacao) values ("Forneria Rivello","Rua Padre Chico",5);
insert into tb_categoria(nome_Pizzaria,endereco,pontuacao) values ("Soggiorno V.Madalena","Rua Harmonia",5);
insert into tb_categoria(nome_Pizzaria,endereco,pontuacao) values ("Casale di Pizza","Alameda dos Tupiniquins",4);
insert into tb_categoria(nome_Pizzaria,endereco,pontuacao) values ("Pizzaria Do Angelo","Rua Sapucaia",3);
insert into tb_categoria(nome_Pizzaria,endereco,pontuacao) values ("Pizzaria São Pedro","Rua Javari",2);

insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Frango com Catupiry","salgada","grande",54.00,1);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Chocolate","doce","pequeno",23.95,3);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Morango com Chocolate","doce","médio",29.90,5);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Pizza Bellisima","salgada","pequeno",22.80,2);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Creme de Avelã com Chocolate","doce","grande",43.00,4);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Rosmarino","salgada","médio",42.80,2);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Romeu e Julieta","doce","pequeno",21.60,5);
insert into tb_pizza(nome_Pizza,tipo,tamanho,preco,categoria_id) values ("Mozzarela","salgada","médio",43.00,1);

select tb_categoria.nome_Pizzaria, tb_pizza.nome_Pizza, tb_pizza.preco
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where preco > 45.00;

select tb_categoria.nome_Pizzaria, tb_pizza.nome_Pizza, tb_pizza.preco
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where preco between 29 and 60;

select tb_categoria.nome_Pizzaria, tb_pizza.nome_Pizza, tb_pizza.preco
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.nome_Pizza like "%C%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

select tb_categoria.nome_Pizzaria, tb_pizza.nome_Pizza, tb_pizza.preco
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.tipo = "doce";

