.mode columns
.headers on
.nullvalue NULL

-- Qual a diferença em cm entre a primeira e segunda melhor marca no salto em comprimento sénior masculino?

 select 100*round(max(marca)-min(marca), 2) as DIFERENÇA from evento, marca_distancia, escalao1, evento_escalao 
 where evento.id_evento = marca_distancia.id_evento and evento.tipo = 'COMPRIMENTO' and evento.genero = 'M' and 
 evento.id_evento = evento_escalao.id_evento and escalao1.id_escalao = evento_escalao.id_escalao order by 1 desc limit 2;