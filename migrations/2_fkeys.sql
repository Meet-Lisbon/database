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

create table wishlist (
    users_id uuid REFERENCES users (usr_id) ON UPDATE CASCADE ON DELETE CASCADE,
    places_id uuid REFERENCES places (place_id) ON UPDATE CASCADE ON DELETE CASCADE,
    created_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    updated_at timestamp with time zone not null default CURRENT_TIMESTAMP,
    CONSTRAINT wishlist_pkey PRIMARY KEY (users_id, places_id)
);

-- Add wishlist description
comment on column wishlist.users_id is 'The user''s uuid';
comment on column wishlist.places_id is 'The place''s uuid';
comment on column wishlist.created_at is 'Creation date';
comment on column wishlist.updated_at is 'Last updated date';

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
