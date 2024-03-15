DROP TABLE IF EXISTS actors_movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies;

CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    dob timestamptz
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title varchar(255),
    release_date timestamptz
);

CREATE TABLE actors_movies (
    id SERIAL PRIMARY KEY,
    actor_id int REFERENCES actors(id) NOT NULL,
    movie_id int REFERENCES movies(id) NOT NULL,
    character_name varchar(255) NOT NULL
);
