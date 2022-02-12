.mode columns
.headers on
.nullvalue NULL


-- Quais os atletas e suas respectivas marcas que estabeleceram recorde nacional nos 100 M Seniores? Ordenado por data.

select atleta.nome,marca_tempo.marca,marca_tempo.data1 as DATA from atleta,evento,marca_tempo,escalao1,evento_escalao where atleta.id_atleta=marca_tempo.id_atleta and 
evento.id_evento=marca_tempo.id_evento and 
evento_escalao.id_evento = evento.id_evento and 
escalao1.id_escalao = evento_escalao.id_escalao and 
evento.tipo = '100M' and evento.genero='M'and escalao1.nome = 'SENIOR' and marca_tempo.rn = 1 order by 3;