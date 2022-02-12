.mode columns
.headers on
.nullvalue NULL

-- Quais os atletas que participaram na melhor estafeta 4x100m e quais os seus percursos?

select nome, percurso from marca_tempo natural join atleta 
natural join percurso 
natural join estafeta order by cast(marca as double) limit 4;