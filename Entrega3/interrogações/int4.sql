.mode columns
.headers on
.nullvalue NULL

-- Na prova de salto em altura no escalão sénior, quantas dessas marcas foram em pista coberta e quantas em ar livre?

select tipo_evento.nome as TipodeEvento,count(*) as Contagem  from atleta,evento,marca_distancia,escalao1,evento_escalao,tipo_evento,evento_tipo_evento where atleta.id_atleta=marca_distancia.id_atleta and 
evento.id_evento=marca_distancia.id_evento and 
evento_escalao.id_evento = evento.id_evento and 
escalao1.id_escalao = evento_escalao.id_escalao and 
evento_tipo_evento.id_evento = evento.id_evento and 
evento_tipo_evento.id_tipo_evento = tipo_evento.id_tipo_evento and 
evento.tipo = 'ALTURA' and evento.genero='M'and escalao1.nome = 'SENIOR' group by 1