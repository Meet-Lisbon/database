-- Add users
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Francisco', 'Traquete', 'frant7', 'francisco@gmail.com', 'test123', 'user');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Maria', 'Martins', 'maria', 'maria@gmail.com', 'test123', 'admin');
insert into users (usr_first_name, usr_last_name, usr_name, usr_email, usr_password_hash, usr_role) values ('Mario', 'Nascimento', 'darkarp', 'mario@gmail.com', 'test123', 'user');

-- Add categories
insert into categories (cat_name, cat_icon) values ('Histórico','https://i.imgur.com/UvN5MuX.jpg');
insert into categories (cat_name, cat_icon) values ('Turístico', 'https://i.imgur.com/h0oaDeK.jpg');
insert into categories (cat_name, cat_icon) values ('Literatura', 'https://i.imgur.com/o0PGm6l.png');
insert into categories (cat_name, cat_icon) values ('Figuras Históricas', 'https://i.imgur.com/GpBWvp8.png');
insert into categories (cat_name, cat_icon) values ('Entretenimento', 'https://i.imgur.com/j2RXDPX.png');
insert into categories (cat_name, cat_icon) values ('Ensino', 'https://i.imgur.com/kRwB94k.png');


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
        Esta torre é um falso farol que nunca funcionou. <br>
        Sendo apenas um elemento turístico situado entre a Torre de Belém e o Padrão dos Descobrimentos. <br>
        Foi construído para a Exposição do Mundo Português em 1940 fazendo parte das histórias dos descobrimentos. <br>
        
    '
);

insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Timeout Market', 'https://i.imgur.com/gE5UNHa.jpg','38.70720006371532', '-9.145917302178974', 'Av. 24 de Julho 49, 1200-479 Lisboa',
    '
        Time Out Market Lisboa é um food hall. <br>
        O conceito passa por juntar os melhores chefs, restaurantes e projetos gastronómicos da capital portuguesa, com base nas recomendações dos críticos e colaboradores da revista Time Out. <br>
    '
);

insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Arco do Triunfo', 'https://i.imgur.com/PpQSuXD.jpg','38.708687470695565', '-9.136813573550741', 'R. Augusta 2, 1100-053 Lisboa',
    '
        A construção do Arco do Triunfo foi programada em 1759, no quadro da reconstrução pombalina após a destruição da baixa lisboeta pelo terramoto de 1755. <br>
        A obra do arco triunfal, que já estava fechado em 1862 por ocasião do casamento de D. Luís I, como se observa em fotografias da época, apenas foi concluída em 1873. <br>
    '
);

insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Estátua D. José I', 'https://i.imgur.com/X5okuwp.jpg','38.70747350697425', '-9.136330775948354', 'Praça do Comércio MB, 1100-148 Lisboa',
    '
        O monumento, de 14 m de altura, erguido para homenagear D. José I integra a sua estátua equestre em bronze. <br>
        De influência francesa e a primeira estátua em bronze fundida em Portugal é considerada uma das mais belas estátuas do género em toda a Europa. <br> 
        É também considerada a estátua pública mais antiga de Lisboa e do país. <br>
    '
);

insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'IADE', 'https://i.imgur.com/YzVHqOJ.jpg','38.70735444022605', '-9.152356849095387', 'Av. Dom Carlos i 4, 1200-649 Lisboa',
    '
        O IADE – Faculdade de Design Tecnologia e Comunicação da Universidade Europeia, tem sido um laboratório de criatividade, talento e liderança reconhecido por toda a sociedade.<br>
        É hoje uma referência no ensino da criatividade, escola pioneira no ensino do Design em Portugal e uma das melhores na Europa, além de estar entre as primeiras no ensino da Publicidade, do Marketing e da Fotografia. <br>
        Foi fundado, em Lisboa, em 1969, tendo sido pioneiro do ensino do design em Portugal. É, atualmente, a instituição que mais estudantes forma nesta área. <br>
    '
);

--! fix imagens e descrição
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Rua cor de Rosa', 'https://i.imgur.com/rK37VGk.jpg', '38.70738693564283', '-9.143750987043921', 'R. Nova do Carvalho, 1200-370 Lisboa',
    '
        O nome "Rua Cor de Rosa" surgiu após um projeto de intervenção urbana em 2011, que foi consolidado em 2013. <br>
        A sua pintura marcou o desejo de mudança e transformação desta região, que no passado não tinha uma fama muito simpática em Lisboa. <br>
    '
);

--! fix imagens e descrição
insert into places (place_name, place_image_url, place_latitude, place_longitude, place_address, place_description) values (
    'Teatro da Trindade INATEL', 'https://i.imgur.com/iV2dPdL.jpg','38.71202888351289', '-9.14248954471498','R. Nova da Trindade 9, 1200-301 Lisboa',
    '
        Em 1866, Francisco Palha, escritor e dramaturgo, decidiu construir o seu próprio teatro. <br>
        Escolheu aquela zona da cidade pela sua antiga vocação cultural e recreativa - aí funcionara, em meados do século XVIII, a Academia da Trindade, o primeiro Teatro Popular de Ópera.<br>
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
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT place_id from places where place_name = 'Lisboa Story Centre')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT place_id from places where place_name = 'Armazéns do Chiado')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT place_id from places where place_name = 'Armazéns do Chiado')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT place_id from places where place_name = 'Farol de Belém')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT place_id from places where place_name = 'Arco do Triunfo')
);

insert into wishlist (users_id, places_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT place_id from places where place_name = 'Estátua D. José I')
);

-- Insert routes
insert into routes (route_name, route_data) values ('Cais do Sodré', 'Test Data 3');
insert into routes (route_name, route_data) values ('Baixa/Chiado', 'Test Data 4');
insert into routes (route_name, route_data) values ('Belém', 'Test Data 1');
insert into routes (route_name, route_data) values ('Praça do Comércio', 'Test Data 2');
insert into routes (route_name, route_data) values ('Rua do Alecrim', 'Test Data 4');
-- Insert into routes_places

insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Cais do Sodré'),
    (SELECT place_id from places where place_name = 'IADE')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Cais do Sodré'),
    (SELECT place_id from places where place_name = 'Timeout Market')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Cais do Sodré'),
    (SELECT place_id from places where place_name = 'Rua cor de Rosa')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Cais do Sodré'),
    (SELECT place_id from places where place_name = 'Praça Luís de Camões')
);


insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Baixa/Chiado'),
    (SELECT place_id from places where place_name = 'Casa dos Bicos / Fundação José Saramago')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Baixa/Chiado'),
    (SELECT place_id from places where place_name = 'Armazéns do Chiado')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Baixa/Chiado'),
    (SELECT place_id from places where place_name = 'Praça Luís de Camões')
);


insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Belém'),
    (SELECT place_id from places where place_name = 'Padrão dos Descobrimentos')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Belém'),
    (SELECT place_id from places where place_name = 'Torre de Belém')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Belém'),
    (SELECT place_id from places where place_name = 'Farol de Belém')
);


insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Praça do Comércio'),
    (SELECT place_id from places where place_name = 'Arco do Triunfo')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Praça do Comércio'),
    (SELECT place_id from places where place_name = 'Estátua D. José I')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Praça do Comércio'),
    (SELECT place_id from places where place_name = 'Lisboa Story Centre')
);


insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Rua do Alecrim'),
    (SELECT place_id from places where place_name = 'Rua cor de Rosa')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Rua do Alecrim'),
    (SELECT place_id from places where place_name = 'Praça Luís de Camões')
);
insert into routes_places (routes_id, places_id) values (
    (SELECT route_id from routes where route_name = 'Rua do Alecrim'),
    (SELECT place_id from places where place_name = 'Teatro da Trindade INATEL')
);


-- Insert into users_routes
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT route_id from routes where route_name = 'Cais do Sodré')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT route_id from routes where route_name = 'Baixa/Chiado')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'maria'),
    (SELECT route_id from routes where route_name = 'Belém')
);


insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT route_id from routes where route_name = 'Cais do Sodré')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT route_id from routes where route_name = 'Baixa/Chiado')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'darkarp'),
    (SELECT route_id from routes where route_name = 'Rua do Alecrim')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT route_id from routes where route_name = 'Praça do Comércio')
);
insert into users_routes (user_id, routes_id) values (
    (SELECT usr_id from users where usr_name = 'frant7'),
    (SELECT route_id from routes where route_name = 'Baixa/Chiado')
);