INSERT INTO actors (first_name, last_name, dob)
VALUES
    ('Emma', 'Stone', TIMESTAMPTZ '1988-11-06'),
    ('Margot', 'Robbie', TIMESTAMPTZ '1990-07-02'),
    ('Ryan', 'Gosling', TIMESTAMPTZ '1980-11-12'),
    ('Robert', 'Downey', TIMESTAMPTZ '1965-04-04'),
    ('Emily', 'Blunt', TIMESTAMPTZ '1983-02-23'),
    ('Mark', 'Ruffalo', TIMESTAMPTZ '1967-11-22');

INSERT INTO movies (title, release_date)
VALUES
    ('Poor Things', TIMESTAMPTZ '2023-09-02'),
    ('Oppenheimer', TIMESTAMPTZ '2023-07-21'),
    ('Barbie', TIMESTAMPTZ '2023-07-21'),
    ('La La Land', TIMESTAMPTZ '2016-02-25'),
    ('Avengers Endgame', TIMESTAMPTZ '2019-04-26'),
    ('The Fall Guy', TIMESTAMPTZ '2024-05-03');

/*
 You can expect the actors and movies to have these ids:
 Emma Stone: 1
 Margot Robbie: 2
 Ryan Gosling: 3
 Robert Downey: 4
 Emily Blunt: 5
 Mark Ruffalo: 6

 Poor Things: 1
 Oppenheimer: 2
 Barbie: 3
 La La Land: 4
 Avengers Endgame: 5
 The Fall Guy: 6
*/

INSERT INTO actors_movies (actor_id, movie_id, character_name)
VALUES
    (1, 1, 'Bella'),
    (1, 4, 'Mia'),
    (2, 3, 'Barbie'),
    (3, 3, 'Ken'),
    (3, 4, 'Sebastian'),
    (3, 6, 'Colt'),
    (4, 2, 'Lewis'),
    (4, 5, 'Tony'),
    (5, 2, 'Kitty'),
    (5, 6, 'Jody'),
    (6, 1, 'Duncan'),
    (6, 5, 'Bruce');