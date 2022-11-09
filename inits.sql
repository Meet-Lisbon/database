CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TYPE user_role AS ENUM ('admin', 'user');

create table users (
    id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT users_pkey PRIMARY KEY,
    username varchar not null unique,
    email varchar not null unique,
    password_hash varchar not null,
    email_verified boolean not null default false,
    role user_role not null,
    active boolean not null default true,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

create table routes (
    id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT routes_pkey PRIMARY KEY,
    poly POLYGON not null,
    name VARCHAR not null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

create table categories (
    id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT categories_pkey PRIMARY KEY,
    name varchar not null,
    icon bytea not null,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

create table places (
    id uuid DEFAULT uuid_generate_v4() NOT NULL CONSTRAINT places_pkey PRIMARY KEY,
    name varchar not null unique,
    latitude decimal(6,5 ) not null,
    longitude decimal(6,5 ) not null,
    address varchar,
    description varchar,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP
);

create table users_routes (
    user_id uuid REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    routes_id uuid REFERENCES routes (id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT users_routes_pkey PRIMARY KEY (user_id, routes_id)
);

create table routes_categories (
    routes_id uuid REFERENCES routes (id) ON UPDATE CASCADE ON DELETE CASCADE,
    categories_id uuid REFERENCES categories (id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT routes_categories_pkey PRIMARY KEY (routes_id, categories_id)

);

create table places_categories (
    places_id uuid REFERENCES places (id) ON UPDATE CASCADE ON DELETE CASCADE,
    categories_id uuid REFERENCES categories (id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT questions_exams_pkey PRIMARY KEY (places_id, categories_id)
);


-- Add users
insert into users (username, email, password_hash, role) values('Francisco', 'francisco@gmail.com', 'test123', 'user');
insert into users (username, email, password_hash, role) values('Maria', 'maria@gmail.com', 'test123', 'admin');
insert into users (username, email, password_hash, role) values('Mario', 'mario@gmail.com', 'test123', 'user');

-- Add descriptions
comment on column users.email is 'The user''s email';