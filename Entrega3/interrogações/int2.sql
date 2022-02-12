.mode columns
.headers on
.nullvalue NULL

-- Qual a média das marxas do ranking do peso do escalão sénior masculino

select round(avg(marca_distancia.marca), 2) as Media from atleta,evento,marca_distancia,escalao1,evento_escalao where atleta.id_atleta=marca_distancia.id_atleta and 
evento.id_evento=marca_distancia.id_evento and 
evento_escalao.id_evento = evento.id_evento and 
escalao1.id_escalao = evento_escalao.id_escalao and 
evento.tipo = 'PESO' and evento.genero='M'and escalao1.nome = 'SENIOR';