.mode columns
.headers on
.nullvalue NULL

-- Qual o Local com maior número de marcas em rankings?

select cidade,pais, max(total) as total from (select cidade, pais, count(tipo) as total 
from local1, evento, evento_local where (local1.ID_LOCAL = evento_local.ID_LOCAL AND evento.ID_EVENTO = evento_local.ID_EVENTO) group by cidade);