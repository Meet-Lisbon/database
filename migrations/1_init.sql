CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE user_role AS ENUM ('admin', 'user');
CREATE CAST (character varying AS user_role) WITH INOUT AS ASSIGNMENT;

create table users (
    usr_id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT users_pkey PRIMARY KEY,
    usr_first_name varchar not null,
    usr_last_name varchar,
    usr_name varchar not null unique,
    usr_email varchar not null unique,
    usr_password_hash varchar not null,
    usr_email_verified boolean not null default false,
    usr_role user_role not null,
    usr_active boolean not null default true,
    usr_reset_code varchar,
    usr_register_code varchar,
    usr_reset_code_at timestamp with time zone not null default CURRENT_TIMESTAMP,
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
    cat_icon varchar not null,
    created_at timestamp with time zone default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone default CURRENT_TIMESTAMP
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
    place_latitude varchar not null,
    place_longitude varchar not null,
    place_address varchar,
    place_description varchar,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

-- Add places description
comment on column places.place_id is 'The place''s uuid';
comment on column places.place_name is 'The place''s name';
comment on column places.place_latitude is 'The place''s latitude';
comment on column places.place_longitude is 'The place''s longitude';
comment on column places.place_address is 'The place''s address';
comment on column places.place_description is 'The place''s description';
comment on column places.created_at is 'Creation date';
comment on column places.updated_at is 'Last updated date';

