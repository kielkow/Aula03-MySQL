                                                                     -- SELECT COM LIKE --
                                                                     

select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE O NOME SEJA PHP
where nome = 'PHP';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME COMECE COM A LETRA P
where nome like 'P%';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME TERMINE COM A LETRA A
where nome like '%a';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME TENHA A LETRA A EM QUALQUER LUGAR
where nome like '%a%';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME NÃO TENHA A LETRA EM LUGAR NENHUM
where nome not like '%a%';


update cursos set nome = 'PHP' where idcurso = '4';   -- > MODIFICA NOME DE IDCURSO = 4 PARA 'PHP'


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME COMECE COM PH E TERMINE COM P
where nome like 'PH%P';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME COMECE COM PH E TERMINE COM P MAIS ALGUM CARACTER
where nome like 'PH%P_';


select * from cursos     -- > SELECIONA LINHA DA TABELA ONDE NOME COMECE COM PH E TERMINE COM P MAIS QUALQUER COISA
where nome like 'PH%P%';


select * from cursos
where nome like '%p__t%';  -- > SELECIONA LINHA DA TABELA ONDE NOME COMECE COM P, TENHA 2 CARACTERES APÓS O P E TERMINE COM T MAIS QUALQUER COISA


---------------------------------------------------------------------------------------------------------------------------------------------------------------
                         
                                                                   -- SELECT COM DISTINCT --


select distinct carga from cursos;           -- > MOSTRA OS DIFERENTES TIPOS DE CARGAS NA TABELA


select distinct nacionalidade from pessoas   -- > MOSTRA DIFERENTES TIPOS DE NACIONALIDADE NA TABELA E OS ORDENA POR NACIONALIDADE
order by nacionalidade; 


select distinct carga from cursos            -- > MOSTRA DIFERENTES TIPOS DE CARGAS NA TABELA E OS ORDENA POR CARGA
order by carga;



---------------------------------------------------------------------------------------------------------------------------------------------------------------
                         
                                                                    -- SELECT COM COUNT/MAX/MIN/SUM/AVG --


select count(*) from pessoas;   -- > MOSTRA NUMERO DE PESSOAS NA TABELA


select count(*) from cursos where carga > '20';   -- > MOSTRA NUMERO DE CARGAS MAIORES QUE 20 NA TABELA


select count(nome) from cursos;   -- > MOSTRA NUMERO DE NOMES NA TABELA CURSOS


select max(carga) from cursos;    -- > MOSTRA A MAIOR CARGA ENTRE OS CURSOS DA TABELA


select max(totaulas) from cursos where ano = '2016';   -- > MOSTRA O MAIOR NUMERO DE AULAS DA TABELA CURSOS ONDE ANO = 2016


select nome, min(totaulas) from cursos  where ano = '2016';  -- > MOSTRA O CURSO COM MENOR VALOR DE AULAS E O NOME DELE ONDE ANO = 2016


select sum(totaulas) from cursos where ano = '2016';         -- > MOSTRA A SOMATORIA DO TOTAL DE AULAS ONDE ANO = 2016


select avg(totaulas) from cursos where ano = '2016';         -- > MOSTRA A MEDIA DO TOTAL DE AULAS ONDE ANO = 2016



---------------------------------------------------------------------------------------------------------------------------------------------------------------
                         
                                                                    -- RESPOSTA DOS EXERCICÍOS --

select * from pessoas;


-- 1) 
select * from pessoas where sexo = 'F';

-- 2)
select * from pessoas 
where nascimento between '2000-01-01' and '2015-12-31';

-- 3)
select * from pessoas
where sexo = 'M' and prof = 'Programador';

-- 4)
select * from pessoas
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%';

-- 5)
select nome, nacionalidade from pessoas 
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100';

-- 6)
select max(altura) from pessoas where sexo = 'M';

-- 7)
select avg(peso) from pessoas;

-- 8)
select min(peso) from pessoas 
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9)
select count(*) from pessoas
where sexo = 'F' and altura > '1.9';
