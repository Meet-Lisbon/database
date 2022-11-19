CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE user_role AS ENUM ('admin', 'user');

create table users (
    usr_id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT users_pkey PRIMARY KEY,
    usr_name varchar not null unique,
    usr_email varchar not null unique,
    usr_password_hash varchar not null,
    usr_email_verified boolean not null default false,
    usr_role user_role not null,
    usr_active boolean not null default true,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);


-- Add users descriptions
comment on column users.usr_id is 'The user''s uuid';
comment on column users.usr_name is 'The user''s username';
comment on column users.usr_email is 'The user''s email';
comment on column users.usr_password_hash is 'The user''s password';
comment on column users.usr_email_verified is 'If user''s email is verified (default as false)';
comment on column users.usr_role is 'The user''s role (user or admin)';
comment on column users.usr_active is 'If user is active (default as true)';
comment on column users.created_at is 'Creation date';
comment on column users.updated_at is 'Last updated date';


create table routes (
    route_id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT routes_pkey PRIMARY KEY,
    route_data bytea not null,
    route_name VARCHAR not null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add routes description
comment on column routes.route_id is 'The route''s uuid';
comment on column routes.route_data is 'The route''s data';
comment on column routes.route_name is 'The route''s name';
comment on column routes.created_at is 'Creation date';
comment on column routes.updated_at is 'Last updated date';


create table categories (
    cat_id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT categories_pkey PRIMARY KEY,
    cat_name varchar not null,
    cat_icon bytea not null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add categories description
comment on column categories.cat_id is 'The category''s uuid';
comment on column categories.cat_name is 'The category''s name';
comment on column categories.cat_icon is 'The category''s icon';
comment on column categories.created_at is 'Creation date';
comment on column categories.updated_at is 'Last updated date';


create table places (
    place_id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT places_pkey PRIMARY KEY,
    place_name varchar not null unique,
    place_latitude decimal(6,5 ) not null,
    place_longitude decimal(6,5 ) not null,
    place_address varchar,
    place_description varchar,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add places description
comment on column places.place_id is 'The placed''s uuid';
comment on column places.place_name is 'The place''s name';
comment on column places.place_latitude is 'The place''s latitude';
comment on column places.place_longitude is 'The place''s longitude';
comment on column places.place_address is 'The place''s address';
comment on column places.place_description is 'The place''s description';
comment on column places.created_at is 'Creation date';
comment on column places.updated_at is 'Last updated date';

--! Many to many tables

create table routes_places (
    routes_id uuid REFERENCES routes (route_id) ON UPDATE CASCADE ON DELETE CASCADE,
    places_id uuid REFERENCES places (place_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT routes_places_pkey PRIMARY KEY (routes_id, places_id)
);

-- Add routes_places description
comment on column routes_places.routes_id is 'The route''s uuid';
comment on column routes_places.places_id is 'The place''s uuid';
comment on column routes_places.created_at is 'Creation date';
comment on column routes_places.updated_at is 'Last updated date';

create table users_routes (
    user_id uuid REFERENCES users (usr_id) ON UPDATE CASCADE ON DELETE CASCADE,
    routes_id uuid REFERENCES routes (route_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT users_routes_pkey PRIMARY KEY (user_id, routes_id)
);

-- Add users_routes description
comment on column users_routes.user_id is 'The user''s uuid';
comment on column users_routes.routes_id is 'The route''s uuid';
comment on column users_routes.created_at is 'Creation date';
comment on column users_routes.updated_at is 'Last updated date';


create table routes_categories (
    routes_id uuid REFERENCES routes (route_id) ON UPDATE CASCADE ON DELETE CASCADE,
    categories_id uuid REFERENCES categories (cat_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT routes_categories_pkey PRIMARY KEY (routes_id, categories_id)

);

-- Add routes_categories description
comment on column routes_categories.routes_id is 'The route''s uuid';
comment on column routes_categories.categories_id is 'The category''s uuid';
comment on column routes_categories.created_at is 'Creation date';
comment on column routes_categories.updated_at is 'Last updated date';


create table places_categories (
    places_id uuid REFERENCES places (place_id) ON UPDATE CASCADE ON DELETE CASCADE,
    categories_id uuid REFERENCES categories (cat_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT questions_exams_pkey PRIMARY KEY (places_id, categories_id)
);

-- Add places_categories description
comment on column places_categories.places_id is 'The place''s uuid';
comment on column places_categories.categories_id is 'The category''s uuid';
comment on column places_categories.created_at is 'Creation date';
comment on column places_categories.updated_at is 'Last updated date';
