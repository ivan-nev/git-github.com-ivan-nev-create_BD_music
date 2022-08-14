

CREATE table IF NOT EXISTS genres (
	id serial4 NOT NULL,
	ganre varchar NOT NULL,
	CONSTRAINT genres_pk PRIMARY KEY (id)
);



CREATE table IF NOT EXISTS artists (
	id serial4 NOT NULL,
	"name" varchar NOT NULL,
	CONSTRAINT artists_pk PRIMARY KEY (id)
);




CREATE table IF NOT EXISTS ganres_artists (
	id_ganre int4 NOT NULL,
	id_artist int4 NOT NULL,
	CONSTRAINT ganres_artists_fk FOREIGN KEY (id_ganre) REFERENCES genres(id),
	CONSTRAINT ganres_artists_fk1 FOREIGN KEY (id_artist) REFERENCES artists(id)
);




CREATE table IF NOT EXISTS artists_albums (
	id_artist int4 NOT NULL,
	id_album int4 NOT NULL,
	CONSTRAINT artists_albums_fk FOREIGN KEY (id_album) REFERENCES albums(id),
	CONSTRAINT artists_albums_fk_1 FOREIGN KEY (id_artist) REFERENCES artists(id)
);

CREATE table IF NOT EXISTS albums (
	id serial4 NOT NULL,
	"name" varchar(60) NOT NULL,
	yaer int4 NOT NULL,
	CONSTRAINT albums_pkey PRIMARY KEY (id)
);



CREATE table IF NOT EXISTS tracks (
	id serial4 NOT NULL,
	"name" varchar NOT NULL,
	id_album int4 NOT NULL,
	duration time NOT NULL,
	CONSTRAINT tracks_pk PRIMARY KEY (id),
	CONSTRAINT tracks_fk FOREIGN KEY (id_album) REFERENCES albums(id)
);



CREATE table IF NOT EXISTS collections (
	id serial4 NOT NULL,
	"name" varchar NOT NULL,
	yaer int4 NOT NULL,
	CONSTRAINT collections_pk PRIMARY KEY (id)
);

CREATE table IF NOT EXISTS tracs_collections (
	id_trak int4 NOT NULL,
	id_collection int4 NOT NULL,
	CONSTRAINT tracs1_collections_pk PRIMARY KEY (id_trak, id_collection),
	CONSTRAINT tracs1_collections_fk FOREIGN KEY (id_collection) REFERENCES collections(id),
	CONSTRAINT tracs_collections_fk FOREIGN KEY (id_trak) REFERENCES tracks(id)
);
