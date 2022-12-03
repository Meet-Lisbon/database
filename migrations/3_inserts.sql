-- Add users
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', 'test123', 'user');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', 'test123', 'admin');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', 'test123', 'user');

-- Add categories
insert into categories (cat_name, cat_icon) values ('Histórico','https://i.imgur.com/UvN5MuX.jpg');
insert into categories (cat_name, cat_icon) values ('Turístico', 'https://i.imgur.com/h0oaDeK.jpg');
insert into categories (cat_name, cat_icon) values ('Literatura', 'https://i.imgur.com/o0PGm6l.png');

-- Add places 
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Padrão dos Descobrimentos','38.693684904994186','-9.205737120817991','Av. Brasília, 1400-038 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Torre de Belém','38.69166125982115','-9.215841104472132','Av. Brasília, 1400-038 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Armazéns do Chiado','38.711178061135314','-9.139565130866167','R. do Carmo, 1200-094 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Casa dos Bicos / Fundação José Saramago','38.70916949370186','-9.13266612522021','R. dos Bacalhoeiros 10, 1100-135 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Lisboa Story Centre','38.7080016959867','-9.135374845390922','Praça do Comércio 78, 1100-148 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Praça Luís de Camões','38.710585946483796','-9.143475756094265','Largo Luís de Camões, 1200-243 Lisboa');
insert into places (place_name, place_latitude, place_longitude, place_address) values ('Farol de Belém','38.69310423288588','-9.20900014390011','Av. Brasília, 1400-038 Lisboa');









