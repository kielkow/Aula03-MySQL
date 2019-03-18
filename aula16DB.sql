create table pessoa_assiste_curso (
	
    id int not null auto_increment,
    data date,
    idpessoa int,                                            -- > TABELA CRIADA PARA RECEBER AS DUAS CHAVES ESTRAGEIRAS DA TABELA PESSOAS E CURSOS
    idcurso int,                            
    primary key (id),
    foreign key (idpessoa) references pessoas(id),           -- > CRIA UMA CHAVE ESTRANGEIRA FAZENDO REFERENCIA COM ID DA TABELA PESSOAS
    foreign key (idcurso) references cursos(idcurso)         -- > CRIA UMA CHAVE ESTRANGEIRA FAZENDO REFERENCIA COM IDCURSO DA TABELA CURSOS

) default charset = utf8;


insert into pessoa_assiste_curso values                      -- > INSERE VALORES NA TABELA
(default, '2019-01-01', '1', '2');


select p.nome, c.nome from pessoas p                         -- > MOSTRA A TABELA COM NOME DA PESSOA E NOME DO CURSO 
join pessoa_assiste_curso a                                        
on p.id = a.idpessoa                                         -- > IDPESSOA RECEBE O ID DA TABELA PESSOAS, RECEBENDO O VALOR DA CHAVE PRIMARIA DA TABELA PESSOAS
join cursos c
on c.idcurso = a.idcurso                                     -- > IDCURSO RECEBE O IDCURSO DA TABELA CURSOS, RECEBENDO O VALOR DA CHAVE PRIMARIA DA TABELA CURSOS
order by p.nome;
