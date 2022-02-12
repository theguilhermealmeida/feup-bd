-- Gatilho que verifica se o tipo de marca é o correto para o evento indicado

CREATE TRIGGER TIPO_DE_MARCA
BEFORE INSERT ON MARCA_DISTANCIA
FOR EACH ROW
WHEN (new.id_evento not in (select id_evento from lancamento union select id_evento from salto))
BEGIN
Select raise(abort, "Marca de tipo invalido");
END;