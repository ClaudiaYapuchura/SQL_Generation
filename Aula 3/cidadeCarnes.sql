create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint(3) auto_increment,
    tipo varchar(20) not null,
    categoria varchar(20) not null,
    promocao boolean,
    primary key(id)
);

create table tb_produto(
	id bigint(3) auto_increment,
    codigo int(3) not null,
    nome varchar(20) not null,
    peso decimal(5,2) not null,
    preco decimal(7,2) not null,
    estoque int(3) not null,
    categoria_id bigint(3) not null,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipo,categoria,promocao) values ("Bovinos","primeira",false);
insert into tb_categoria(tipo,categoria,promocao) values ("Bovinos","segunda",true);
insert into tb_categoria(tipo,categoria,promocao) values ("Suínos","primeira",true);
insert into tb_categoria(tipo,categoria,promocao) values ("Suínos","segunda",false);
insert into tb_categoria(tipo,categoria,promocao) values ("Aves","segunda",true);

insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (123,"Picanha",1.5,40.5,7,1);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (320,"Lombo",1.2,45.5,4,3);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (420,"Costela",1.5,22.96,9,4);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (232,"Coxão Mole",1.7,40.5,7,2);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (124,"Filet Mignon",1.7,62.86,5,1);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (321,"Pernil",1.12,29.96,3,3);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (233,"Alcatra",1.5,35.0,7,2);
insert into tb_produto(codigo,nome,peso,preco,estoque,categoria_id) values (123,"Peito de frango",3.1,36.77,12,5);

select nome,preco from tb_produto where preco > 50.00;

select nome,preco from tb_produto where preco between 3.00 and 60.00;

select nome from tb_produto where nome like "%C%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.tipo = "Bovinos";