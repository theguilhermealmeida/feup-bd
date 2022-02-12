-- Gatilho que substitui a marca de um atleta caso a marca a inserir seja melhor

CREATE TRIGGER MELHORMARCA
   Before INSERT ON MARCA_DISTANCIA
   FOR EACH ROW
   when exists(select * from MARCA_DISTANCIA,evento where new.id_atleta = id_atleta and marca<new.marca and 
   ((select tipo from evento where evento.id_evento = marca_distancia.id_evento) = (select tipo from evento where evento.id_evento = new.id_evento)))
   Begin
Delete from MARCA_DISTANCIA where new.id_atleta = id_atleta and 
    ((select tipo from evento where evento.id_evento = marca_distancia.id_evento) = (select tipo from evento where evento.id_evento = new.id_evento));
   End;