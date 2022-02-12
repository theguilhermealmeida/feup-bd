-- Gatilho que verifica se a prova a inserir no decatlo já existe ou não é prova de decatlo

CREATE TRIGGER PROVAS_COMBINADAS
BEFORE INSERT ON CORRIDA 
FOR EACH ROW				
WHEN EXISTS( select * from corrida where new.id_decatlo = id_decatlo and 
((select tipo from evento where evento.id_evento = corrida.id_evento) = (select tipo from evento where evento.id_evento = new.id_evento) or 
((select tipo from evento where new.id_evento = evento.id_evento) not in (select tipo from evento where tipo = '100M' or tipo = '400M' or tipo = '110MB' or tipo = '1500M' ))))
   Begin 
	Select raise(abort, "Evento já existe no decatlo ou é invalido.");
  End;