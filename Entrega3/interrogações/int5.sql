.mode columns
.headers on
.nullvalue NULL

-- Quais os atletas com marcas na mesma modalidade em mais que um escalão? 

select Atleta from (select distinct atleta.nome as Atleta,escalao1.nome as Escalao 
from atleta,marca_distancia,marca_tempo,marca_pontos,evento,evento_escalao, escalao1 
where ((marca_distancia.id_atleta =atleta.id_atleta and
marca_distancia.id_evento = evento.id_evento)or
(marca_pontos.id_atleta =atleta.id_atleta and marca_pontos.id_evento = evento.id_evento)  
or(marca_tempo.id_atleta =atleta.id_atleta and marca_tempo.id_evento = evento.id_evento)) and 
evento_escalao.id_evento = evento.id_evento and escalao1.id_escalao = evento_escalao.id_escalao) group by 1 having count(*)>1;