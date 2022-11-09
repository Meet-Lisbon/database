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