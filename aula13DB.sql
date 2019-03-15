select carga from cursos                   -- > AGRUPA OS VALORES DE CARGA NA TABELA CURSOS
group by carga;


select carga, count(nome) from cursos      -- > AGRUPA OS VALORES DE CARGA E CONTA QUANTOS TEM PARA CADA CARGA
group by carga;


select carga, count(nome) from cursos      -- > AGRUPA OS VALORES DE CARGA ONDE O TOTAULAS = 30 E CONTA QUANTOS TEM POR NOME
where totaulas = 30
group by carga;


select ano, count(*) from cursos           -- > AGRUPA OS VALORES DE ANO E CONTA QUANTO CADA UM POSSUI, DEPOIS OS ORDENA PELA QUANTIDADE DE MANEIRA INVERSA
group by ano
order by count(*) desc;


select carga, count(nome) from cursos      -- > AGRUPA OS VALORES DE CARGA E OS CONTA PELO NOME, MOSTRANDO APENAS OS QUE TEM MAIS DE 3
group by carga
having count(nome) > 3;



select ano, count(*) from cursos           -- > AGRUPA OS VALORES DE ANO E CONTA-OS, DEPOIS APENAS MOSTRA OS GRUPOS QUE POSSUI MAIS DE 3 E OS ORDENA DE MANEIRA INVERSA
group by ano
having count(ano) > 3
order by count(*) desc;


select ano, count(*) from cursos          -- > CONTA OS VALORES DE ANO E ONDE TOTAULAS > 10 É AGRUPADO, DEPOIS APENAS MOSTRA OS GRUPOS QUE POSSUI MAIS DE 1
where totaulas > 10                         -- E OS ORDENA DE MANEIRA INVERSA
group by ano
having count(ano) > 1
order by count(*) desc;


select carga, count(*) from cursos        -- > CONTA OS VALORES DE CARGA E ONDE O ANO > 2010 É AGRUPADO PELO ANO, DEPOIS APENAS MOSTRA OS GRUPOS QUE POSSUEM
where ano > 2010                            -- CARGA > QUE A MEDIA DAS CARGAS DA TABELA CURSOS
group by ano
having carga > (select avg(carga) from cursos);




--- EXERCICIOS ---


-- 1)
select prof, count(*) from pessoas
group by prof;

-- 2)
select sexo, count(*) from pessoas
where nascimento > '2005-01-01'
group by sexo;

-- 3)
select nacionalidade, count(nome) from pessoas
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nome) > 3;

-- 4)
select nome from pessoas
where peso > '70'
group by altura
having altura > (select avg(altura) from pessoas);
