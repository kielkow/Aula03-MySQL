alter table pessoas               -- > ADD UMA COLUNA
add column profissao varchar(10);

alter table pessoas               -- > APAGAR UMA COLUNA
drop column profissao;

alter table pessoas               -- > ADD UMA COLUNA APÓS OUTRA COLUNA
add column profissao varchar(10) after nome;

alter table pessoas               -- > ADD UMA COLUNA EM PRIMEIRO
add column codigo int first;

alter table pessoas               -- > MODIFICA UMA COLUNA 
modify column profissao varchar(20) not null default '';

alter table pessoas               -- > MUDA O NOME DA COLUNA 
change column profissao prof varchar(20) not null default '';

alter table pessoas               -- > MUDA O NOME DA TABELA
rename to lista;


create table if not exists cursos (  -- > ADD A TABELA CASO ELA NÃO EXISTA
nome varchar(20) not null unique,    -- > NÃO PERMITE NOMES IGUAIS
descricao text,
carga int unsigned,                  -- > ECONOMIZA UM BIT TODA VEZ QUE SER SALVO
totaulas int unsigned, 
ano year default '2019'              -- > CASO NÃO SEJA DITO É ADD 2019
) default charset = utf8;


alter table cursos                   -- > ADD A COLUNA DO TIPO INT EM PRIMEIRO     
add column idcurso int first;

alter table cursos                   -- > ADD CHAVE PRIMARIA NA COLUNA
add primary key (idcurso);


drop table cursos;                   -- > APAGA TABELA
drop table if exists cursos          -- > APAGA TABELA CASO ELA EXISTA       

describe cursos;
describe pessoas;
select * from pessoas;
