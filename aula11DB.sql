select * from cursos        -- > MOSTRA A TABELA ORDENADA PELO NOME
order by nome asc;          


select * from cursos        -- > MOSTRA A TABELA ORDENADA PELO NOME DE BAIXO PRA CIMA
order by nome desc;


select nome, carga, ano from cursos  -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS POR ORDEM ALFABÉTICA
order by nome;


select nome, carga, ano from cursos  -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS POR ANO E NOME
order by ano, nome;


select * from cursos
where ano = '2016'                  -- > ORDENA A TABELA ONDE O ANO É 2016 PELO NOME
order by nome;


select nome, carga from cursos
where ano = '2016'                  -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS ONDE ANO É 2016 PELO NOME
order by nome; 


select nome, carga, ano from cursos
where ano <= '2015'                 -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS ONDE ANO É MENOR OU IRGUAL A 2015 PELO ANO E NOME
order by ano, nome; 


select nome, ano from cursos
where ano between 2014 and 2016     -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS ONDE ANO ESTEJA ENTRE 2014 E 2016 
order by ano desc, nome asc;         --  PELO ANO DESCENDENTE E NOME ASCENDENTE


select nome, ano from cursos
where ano in (2014, 2016)          -- > ORDENA A TABELA COM AS COLUNAS SELECIONADAS ONDE ANO É IGUAL A 2014 E 2016 PELO ANO
order by ano;                     


select nome, carga, totaulas from cursos
where carga > 35 and totaulas <= 30  -- > ORDENA A TABELA ONDE A CARGA SEJA MAIOR QUE 35 E TOTAULAS SEJA MENOR/IGUAL A 30 PELO NOME
order by nome;
