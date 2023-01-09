-- Add users
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', 'test123', 'user');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', 'test123', 'admin');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', 'test123', 'user');

-- Add categories
insert into categories (cat_name, cat_icon) values ('Histórico','https://i.imgur.com/UvN5MuX.jpg');
insert into categories (cat_name, cat_icon) values ('Turístico', 'https://i.imgur.com/h0oaDeK.jpg');
insert into categories (cat_name, cat_icon) values ('Literatura', 'https://i.imgur.com/o0PGm6l.png');

-- Add places 
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Padrão dos Descobrimentos', 'https://i.imgur.com/n7Q4HHM.jpg', '38.693684904994186','-9.205737120817991','Av. Brasília, 1400-038 Lisboa',
    '
        O Padrão dos Descobrimentos, com 56 metros de altura, é uma homenagem ao Infante d. Henrique que tem a sua própria estátua com um total de 9 metros. <br>
        Este monumento evoca a expansão ultramarina portuguesa com o seu formato de caravela, a figura do Infante e os seus companheiros de viagem. <br>
        Foi construído a primeira vez em 1940 e foi depois deitado a baixo e reconstruído em 1960, por ocasião dos 500 anos da morte do Infante. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Torre de Belém', 'https://i.imgur.com/KN7EF21.jpg','38.69166125982115','-9.215841104472132','Av. Brasília, 1400-038 Lisboa',
    '
        A principal função da Torre de Belém era defender a cidade dos ataques feitos pelo rio, que eram bastante frequentes. <br>
        Com o passar dos tempos passou a ter outras funções, como por exemplo, posto de sinalização telegráfico e um farol. <br>
        Foi ainda usada como masmorras para presos políticos. <br>
        Foi desta zona (da praia do Bom Sucesso) que partiram as primeiras naus portuguesas, para a Índia e para o Brasil, na época dos Descobrimentos. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Armazéns do Chiado', 'https://i.imgur.com/NXLLEv4.jpg','38.711178061135314','-9.139565130866167','R. do Carmo, 1200-094 Lisboa',
    '
        O Chiado ardeu em 1988 e teve depois de ser completamente reconstruído no que conhecemos hoje como "Os Armazéns do Chiado". <br>
        São um edifício de comércio composto por 55 lojas, incluindo 15 restaurantes. <br>
        As vistas do Chiado sobre a Baixa de Lisboa convertem-no num miradouro privilegiado para todos os que os visitam. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Casa dos Bicos / Fundação José Saramago', 'https://i.imgur.com/M7jq1qe.jpg','38.70916949370186','-9.13266612522021','R. dos Bacalhoeiros 10, 1100-135 Lisboa',
    '
        A Casa dos Bicos foi edificada em 1522 e é a mais importante residência lisboeta do tempo renascentista. <br>
        Em 2008, a os pisos superiores foram cedidos para a instalação da Fundação José Saramago, um escritor português que ganhou o prémio Nobel de literatura em 1998. <br>
        A Fundação José Saramago respeita a obra e a vida de José Saramago e pretende dar mais "anos de vida" ao escritor, não deixando que o mesmo seja esquecido. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Lisboa Story Centre', 'https://i.imgur.com/HQ28gm7.jpg','38.7080016959867','-9.135374845390922','Praça do Comércio 78, 1100-148 Lisboa',
    '
        O Lisboa Story Centre é um museu, inaugurado em 2012, que  mostra a história e desenvolvimento da cidade. <br>
        Através de equipamento interactivo conta-nos, do passado ao presente, os principais eventos da cidade. <br>
        Mostra-nos tudo, desde a mitologia da sua fundação por Ulisses, a história do sismo de Lisboa de 1755, e a reconstrução da cidade por Sebastião José de Carvalho e Melo, Marquês de Pombal e Conde de Oeiras. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Praça Luís de Camões', 'https://i.imgur.com/8NZp3Kf.jpg','38.710585946483796','-9.143475756094265','Largo Luís de Camões, 1200-243 Lisboa',
    '
        A Praça Luís de Camões, localizada no Chiado, tem este nome devido à estátua do poeta Luís de Camões que está no centro da praça. <br>
        Esta estátua foi inaugurada em 1867 e foi impulsionada pela votade de enaltecer o patriotismo como o poeta o faz no livro "Os Lusíadas". <br>
        A figura é de bronze e tem 4 metros de altura, assente sobre um pedestal octogonal, rodeado por oito estátuas: Fernão Lopes, Pedro Nunes, Gomes Eanes de Azurara, João de Barros, Fernão Lopes de Cantanhede, Vasco Mouzinho de Quevedo, Jerónimo Corte-Real e Francisco Sá de Menezes. <br>
    '
);
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Farol de Belém', 'https://i.imgur.com/OeB656k.jpg','38.69310423288588','-9.20900014390011','Av. Brasília, 1400-038 Lisboa',
    '
        Esta torre é um falso farol e que nunca funcionou. <br>
        Sendo apenas um elemento turístico situado entre a Torre de Belém e o Padrão dos Descobrimentos. <br>
        Foi construído para a Exposição do Mundo Português em 1940 fazendo parte das histórias dos descobrimentos. <br>
        
    '
);

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

