create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint(3) auto_increment,
    categoria varchar(40) not null,
    promocao boolean,
    receita boolean,
    primary key(id)
);

create table tb_produto(
	id bigint(3) auto_increment,
    medicamento varchar(40) not null,
    codigo int(5) not null,
    marca varchar(30) not null,
    valor decimal(7,2) not null,
    estoque int(3) not null,
    categoria_id bigint(3) not null,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria,promocao,receita) values ("Alopáticos",true,false);
insert into tb_categoria(categoria,promocao,receita) values ("Controlados",false,true);
insert into tb_categoria(categoria,promocao,receita) values ("Referência",true,false);
insert into tb_categoria(categoria,promocao,receita) values ("Fitoterápicos",false,false);
insert into tb_categoria(categoria,promocao,receita) values ("Genérico",true,true);

insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Pastilha",123,"ESTOMAZIL",5.99,7,1);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Xarope",234,"PHITÓSS",15.99,12,4);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Comprimido",345,"EMS",10.31,18,2);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Líquido",456,"TEUTO",14.99,15,3);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Polivitamínico",567,"ACHÉ",15.36,6,1);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Comprimido",678,"CIMED",22.49,8,5);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Comprimido",789,"PASALIX MARJAN",38.99,10,4);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Comprimido",891,"EMS",13.65,20,2);
insert into tb_produto(medicamento,codigo,marca,valor,estoque,categoria_id) values ("Comprimido",678,"X",63.95,17,5);

select medicamento,valor from tb_produto where valor > 50.00;

select medicamento,valor from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where medicamento like "%A%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.categoria = "Alopáticos";