 drop trigger if exists MELHORMARCA;

delete from marca_distancia where marca_distancia.id_evento = 231;
delete from evento where evento.id_evento = 231;

insert into marca_distancia values(1,401,2.28,'01-02-2020',TRUE);