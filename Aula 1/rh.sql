create database rh_empresa;
use rh_empresa;

create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(30) not null,
    cpf varchar(11) not null,
    endereco varchar(30) not null,
    cargo varchar(30) not null,
    salario decimal(7,2) not null,
    primary key(id)
);

insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Claudia Yapuchura",12345678911,"Rua Nova OLinda","Estagiário",2000.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Cristina Steger",23456789112,"Rua das Flores","Gerente de Projetos",7000.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Lais Regina",32345678913,"Rua Maria Cândida","Programador Front-End",3500.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Bruna Bustamante",42345678914,"Rua Voluntários da Pátria","Desenvolvedor Full-Stack",4196.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("José Carlos",52345678915,"Rua Itamonte","Técnico de TI",1828.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Camila Souza",62345678916,"Rua Bertelli","Analista de BI",4196.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Alessandra Matos",62345678916,"Rua Bertelli","Analista de BI",7500.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Karol Silva",72345678917,"Rua das Promessas","Gerente de TI",9023.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Gabriel Silva",82345678918,"Rua Abílio","Analista Pleno",6532.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Daniela Pereira",92345678919,"Av. Júlio Buono","Analista Júnior",4674.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Carlos Edurado",22345678916,"Rua Campo Belo","Analista Sênior",8728.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Beatriz Carvalho",62345678916,"Rua Tito Flávio","Trainee",3285.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Carla Pereira",42375678946,"Rua ","Assistente Administrativo",2686.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Vinicius Araujo",92345678819,"Rua Dorali","Desenvolver Java Full Stack",5085.00);
insert into tb_funcionarios(nome,cpf,endereco,cargo,salario) values ("Isabela Coutinho",32385648216,"Rua Progresso","Suporte Técnico",1209.00);

select nome,salario from tb_funcionarios where salario > 2000.00;

select nome,salario from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 5796.00 where id=4;

select * from tb_funcionarios