.mode columns
.headers on
.nullvalue NULL

-- Listagem de cada uma das provas e respetivas marcas, da melhor marca de decatlo.

select evento.tipo as PROVA,marca_distancia.marca from marca_distancia,evento where evento.id_evento = marca_distancia.id_evento and marca_distancia.id_evento in 
(select lancamento.id_evento from lancamento,decatlo where lancamento.id_decatlo = 
(select id_decatlo from marca_pontos,decatlo where marca = 
(select max(marca) from marca_pontos) and marca_pontos.id_evento = decatlo.id_evento) union select 
salto.id_evento from salto,decatlo where salto.id_decatlo = 
(select id_decatlo from marca_pontos,decatlo where marca = 
(select max(marca) from marca_pontos) and marca_pontos.id_evento = decatlo.id_evento)) union select 
evento.tipo,marca_tempo.marca from marca_tempo,evento where evento.id_evento = marca_tempo.id_evento and marca_tempo.id_evento in 
(select corrida.id_evento from corrida,decatlo where corrida.id_decatlo = 
(select id_decatlo from marca_pontos,decatlo where marca = (select max(marca) from marca_pontos) and marca_pontos.id_evento = decatlo.id_evento));