create database db_rh2;
use db_rh2;

create table tb_cargo(
	id bigint(5) auto_increment,
    profissao varchar(60) not null,
    salario decimal(7,2) not null,
    primary key(id)
);

create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    sobrenome varchar(20) not null,
    telefone int(12) not null,
    email varchar(30) not null,
    cargo_id bigint(5) not null,
    primary key(id),
    foreign key(cargo_id) references tb_cargo(id)
);

insert into tb_cargo (profissao,salario) values ("Gerente de Projetos",7000.00);
insert into tb_cargo (profissao,salario) values ("Técnico de TI",1828.00);
insert into tb_cargo (profissao,salario) values ("Desenvolvedor Full-Stack",4196.00);
insert into tb_cargo (profissao,salario) values ("Suporte Técnico",1209.00);
insert into tb_cargo (profissao,salario) values ("Analista Júnior",4674.00);

insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Claudia","Saire",29098812,"claudiasaire@generation.com.br",1);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Bruna","Silva",39098813,"brunasilva@generation.com.br",3);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Gabriela","Medeiros",49098814,"gabrielamed@generation.com.br",4);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Caroliny","Oliveira",59098815,"caroliveira@generation.com.br",3);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Danielle","Telles",69098816,"danitelles@generation.com.br",1);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Isabela","Matos",79098817,"isabelamatos@generation.com.br",2);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Hiago","Santos",89098818,"hiagosantos@generation.com.br",5);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Tiago","Souza",99098819,"tiagosouza@generation.com.br",3);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Victor","Hugo",19098811,"victorhugo@generation.com.br",5);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Melissa","Pink",29197813,"melissapink@generation.com.br",4);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Gabriel","Santos",70094416,"gabssantos@generation.com.br",3);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Thais","Costa",88129091,"thaiscosta@generation.com.br",5);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Natalia","Reis",19674512,"nataliareis@generation.com.br",3);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Luanne","Dias",39098387,"luannedias@generation.com.br",2);
insert into tb_funcionarios(nome,sobrenome,telefone,email,cargo_id) values ("Giselle","Guimarães",12563920,"giguimaraes@generation.com.br",3);

select tb_funcionarios.nome, tb_cargo.profissao, tb_cargo.salario
from tb_funcionarios
inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
where salario > 2000.00;

select tb_funcionarios.nome, tb_cargo.profissao, tb_cargo.salario
from tb_funcionarios
inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
where salario > 1000.00 and salario < 2000.00;

select * from tb_funcionarios where nome like "%C%";

select tb_funcionarios.nome, tb_cargo.profissao
from tb_funcionarios
inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
where tb_cargo.profissao = "Desenvolvedor Full-Stack"

