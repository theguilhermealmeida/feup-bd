select * from MARCA_DISTANCIA;

-- Marca possível de adicionar em marca do tipo distância (disco) 
insert into marca_distancia values(43,970,20.09,'23-02-2002',0);

-- Marca impossível de adicionar em marca do tipo distância (3000M)

insert into marca_distancia values(42,970,20.09,'23-02-2002',0);

select * from MARCA_DISTANCIA;
