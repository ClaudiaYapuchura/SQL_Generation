create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint(3) auto_increment,
    categoria varchar(20) not null,
    ativo boolean,
    primary key(id)
);

create table tb_personagem(
	id bigint(3) auto_increment,
    nome varchar(20) not null,
	ataque int(5) not null,
    defesa int(5) not null,
    pontosVida varchar(10) not null,
    habilidade varchar(20) not null,
    classe_id bigint(3) not null,
    primary key(id),
    foreign key(classe_id) references tb_classe(id)
);

insert into tb_classe(categoria,ativo) values ("Paladino",true);
insert into tb_classe(categoria,ativo) values ("Guerreiro",true);
insert into tb_classe(categoria,ativo) values ("Mago",false);
insert into tb_classe(categoria,ativo) values ("Feiticeiro",true);
insert into tb_classe(categoria,ativo) values ("Druida",false);

insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Alan",1200,580,"1d8","Sabedoria",5);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Claudia",5000,780,"1d6","Carisma",4);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Alan",3600,320,"1d10","Força ou Destreza",2);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Laissa",5200,740,"1d6","Inteligência",3);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Pedro",800,180,"1d10","Força & Carisma",1);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Bruna",450,200,"1d6","Carisma",4);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Luiz",2300,500,"1d10","Força ou Destreza",2);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Sato",4200,800,"1d10","Força & Carisma",1);
insert into tb_personagem(nome,ataque,defesa,pontosVida,habilidade,classe_id) values ("Marley",200,1200,"1d6","Inteligência",3);

select nome,ataque from tb_personagem where ataque > 2000; 

select nome,defesa from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";
    
select * from tb_personagem 
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem 
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id 
	where tb_classe.categoria = "Feiticeiro";

