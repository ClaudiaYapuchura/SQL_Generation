create  database registro_escola;

use registro_escola;

create table reg_alunos(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    sobrenome varchar(20) not null,
    matricula bigint(5) not null,
    curso varchar(30) not null,
    nota float(3,2) not null,
    primary key(id)
);

insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Claudia","Yapuchura",111,"Automação Indutrial",8.9);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Isabela","Duarte",111,"Análise e Desenv. de Sistemas",8.0);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Melissa","Castro",222,"Logística Aeroportuária",9.1);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Vanessa","Regina",123,"Análise e Desenv. de Sistemas",9.8);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Joice","Leal",321,"Engenharia de Energia",8.9);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Cristina","Steger",333,"Técnico em secretariado",8.6);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Bruna","Bustamante",456,"Licenciatura em Física",8.5);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Ligia","Silva",654,"Curso de Direito",7.1);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Fernanda","Prates",789,"Licenciatura em Matemática",6.8);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Karol","Matos",987,"Administração",6.5);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Isabelle","Martins",102,"Serviço Social",8.7);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Júlia","Lopes",113,"Biblioteconomia",8.3);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Esthefani","Santos",441,"Engenharia Civil",8.9);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Sara","Oliveira",749,"Enfermagem",7.9);
insert into reg_alunos(nome,sobrenome,matricula,curso,nota) values ("Manoela","Aragão",137,"Medicina",9.7);

select nome,nota from reg_alunos where nota > 7.00;

select nome, nota from reg_alunos where nota < 7.00;

update reg_alunos set matricula = 387 where id=2;

select * from reg_alunos