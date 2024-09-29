CREATE TABLE public.__caravel_migrations (
    version text NOT NULL,
    hash text NOT NULL
);
CREATE TABLE public.books (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    info json,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE ONLY public.__caravel_migrations
    ADD CONSTRAINT __caravel_migrations_pkey PRIMARY KEY (version);
ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
