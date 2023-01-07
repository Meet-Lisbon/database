-- Add users
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', 'test123', 'user');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', 'test123', 'admin');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', 'test123', 'user');

-- Add categories
insert into categories (cat_name, cat_icon) values ('Histórico','https://i.imgur.com/UvN5MuX.jpg');
insert into categories (cat_name, cat_icon) values ('Turístico', 'https://i.imgur.com/h0oaDeK.jpg');
insert into categories (cat_name, cat_icon) values ('Literatura', 'https://i.imgur.com/o0PGm6l.png');

-- Add places 
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values ('Padrão dos Descobrimentos', 'https://i.imgur.com/n7Q4HHM.jpg', '38.693684904994186','-9.205737120817991','Av. Brasília, 1400-038 Lisboa', 'blahblah blahblah </br> blahblahblah blah');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Torre de Belém', 'https://i.imgur.com/KN7EF21.jpg','38.69166125982115','-9.215841104472132','Av. Brasília, 1400-038 Lisboa');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Armazéns do Chiado', 'https://i.imgur.com/NXLLEv4.jpg','38.711178061135314','-9.139565130866167','R. do Carmo, 1200-094 Lisboa');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Casa dos Bicos / Fundação José Saramago', 'https://i.imgur.com/M7jq1qe.jpg','38.70916949370186','-9.13266612522021','R. dos Bacalhoeiros 10, 1100-135 Lisboa');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Lisboa Story Centre', 'https://i.imgur.com/HQ28gm7.jpg','38.7080016959867','-9.135374845390922','Praça do Comércio 78, 1100-148 Lisboa');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Praça Luís de Camões', 'https://i.imgur.com/8NZp3Kf.jpg','38.710585946483796','-9.143475756094265','Largo Luís de Camões, 1200-243 Lisboa');
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address) values ('Farol de Belém', 'https://i.imgur.com/OeB656k.jpg','38.69310423288588','-9.20900014390011','Av. Brasília, 1400-038 Lisboa');

-- Add categories to the places
insert into places_categories (places_id, categories_id) values (
    (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos'),
    (SELECT cat_id from categories where cat_name = 'Histórico')
);

insert into places_categories (places_id, categories_id) values (
    (SELECT place_id from places where place_name = 'Torre de Belém'),
    (SELECT cat_id from categories where cat_name = 'Literatura')
);

-- Add places to wishlist
insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT place_id from places where place_name = 'Torre de Belém')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT place_id from places where place_name = 'Armazéns do Chiado')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos')
);

-- -- Insert routes
-- insert into routes (route_data, route_name) values ('Test Data','Test name');
-- insert into routes (route_data, route_name) values ('Test Data 2','Test name 2');

-- -- Insert into routes_places
-- insert into routes_places (routes_id, places_id) values (
--     (SELECT route_id from routes where route_name = 'Test name'),
--     (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos')
-- );

-- insert into routes_places (routes_id, places_id) values (
--     (SELECT route_id from routes where route_name = 'Test name'),
--     (SELECT place_id from places where place_name = 'Torre de Belém')
-- );

-- insert into routes_places (routes_id, places_id) values (
--     (SELECT route_id from routes where route_name = 'Test name'),
--     (SELECT place_id from places where place_name = 'Farol de Belém')
-- );


-- -- Insert into users_routes
-- insert into users_routes (user_id, routes_id) values (
--     (SELECT usr_id from users where usr_name = 'maria'),
--     (SELECT route_id from routes where route_name = 'Test name')
-- );

