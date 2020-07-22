create database e_commerce;

use e_commerce;

create table tb_product(
	id bigint(5) auto_increment,
    produto varchar (20) not null,
    codigo varchar(20) not null,
    marca varchar(20) not null,
    preco decimal(7,2) not null,
    estoque bigint(5) not null,
    primary key(id)
);

insert into tb_product(produto,codigo,marca,preco,estoque) values ("Notebook","A11","HP",3500.00,5);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Celular","B22","iPhone",4602.57,7);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Smart TV","C33","LG",2562.05,4);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("DVD Player","D44","Philco",269.90,3);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Soundbar","E55","JBL",2232.41,6);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Computador","F66","Dell Inspiron",4179.00,3);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Impressora","G77","Epson",1169.10,4);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Pen Drive","H88","Kingston",84.70,20);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Tablets","I99","Multilaser",459.00,5);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("HD Externo","J12","Seagate",589.98,10);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("All In One","K23","Positivo",2899.00,7);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Roteador","L34","Tp-link",189.00,3);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Jogo Operation Flash","M45","Codemasters",189.99,9);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Scanner","N56","Epson",1994.05,11);
insert into tb_product(produto,codigo,marca,preco,estoque) values ("Câmera Digital","O67","Canon",6399.00,4);

select produto,preco from tb_product where preco > 500.00;

select produto,preco from tb_product where preco < 500.00;

update tb_product set preco = 179.00 where id=12;

select * from tb_product