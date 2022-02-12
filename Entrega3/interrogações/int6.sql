.mode columns
.headers on
.nullvalue NULL

-- Qual o número de atletas que cada clube já teve no total?

select clube.nome, count(*) as NºATLETAS from clube, atleta, contrato where atleta.id_atleta = contrato.id_atleta and 
clube.id_clube = contrato.id_clube group by 1 order by 2 desc;