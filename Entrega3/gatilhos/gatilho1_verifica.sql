select * from corrida where id_decatlo = 112;
-- prova 1500m já existe no decatlo
insert into evento values(1222,'M','1500M');
insert into corrida values(1222, 1222, 112, NULL);

-- prova 3000M não é uma prova válida do decatlo
insert into evento values(1223,'M','3000M');
insert into corrida values(1223, 1223, 112, NULL);

select * from corrida where id_decatlo = 112;
