desc pessoas;                          -- > MOSTRA A TABELA


alter table pessoas              
add column cursopreferido int;         -- > ADD NA TABELA A COLUNA CURSOPREFERIDO DO TIPO INT


alter table pessoas                    
add foreign key(cursopreferido)        -- > ADD CHAVE ESTRANGEIRA TENDO COMO REFERENCIA IDCURSO, FAZENDO COM QUE CURSOPREFERIDO SE LIGUE COM IDCURSO
references cursos(idcurso);


update pessoas set cursopreferido = '6'    -- > DIZ QUE A PESSOA DE ID = 1 PREFERE O CURSO DE ID = 6
where id = '1';


delete from cursos          -- > DELETA O CURSO COM DETERMINADO, LEMBRANDO QUE O CURSO SÓ SERA DELETADO SE NAO TIVER RELAÇÃO NENHUMA COM ALGUMA PESSOA
where idcurso = '7';


select p.nome, c.nome, c.ano
from pessoas as p inner join cursos as c        -- > MOSTRA AS PESSOAS E OS CURSOS QUE ESTÃO RELACIONADOS, APENAS OS QUE ESTÃO LIGADOS
on c.idcurso = p.cursopreferido
order by p.nome;                                -- > ORDENANDO PELO NOME DAS PESSOAS


select p.nome, c.nome, c.ano
from pessoas as p left outer join cursos as c   -- > MOSTRA TODAS AS PESSOAS E TODOS OS CURSOS COM OU SEM RELAÇÃO, DANDO PREFERENCIA PARA TEBELA PESSOAS
on c.idcurso = p.cursopreferido;


select p.nome, c.nome, c.ano
from pessoas as p right outer join cursos as c   -- > MOSTRA TODAS AS PESSOAS E TODOS OS CURSOS COM OU SEM RELAÇÃO, DANDO PREFERENCIA PARA TEBELA CURSOS
on c.idcurso = p.cursopreferido;
