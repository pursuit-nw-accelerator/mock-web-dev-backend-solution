const db = require('../db');

const getAppearancesByActorId = async (id) => {
  const movies = await db.any(
    `
  SELECT 
    actors_movies.*, 
    movies.title, 
    movies.release_date
  FROM actors_movies
  JOIN movies
  ON movies.id = actors_movies.movie_id
  WHERE actors_movies.actor_id = $1;
  `,
    [id]
  );
  return movies;
};

const getAppearancesByMovieId = async (id) => {
  const actors = await db.any(
    `
  SELECT 
    actors_movies.*, 
    actors.first_name, 
    actors.last_name
  FROM actors_movies
  JOIN actors
  ON actors.id = actors_movies.actor_id
  WHERE actors_movies.movie_id = $1;
  `,
    [id]
  );
  return actors;
};

module.exports = {
  getAppearancesByActorId,
  getAppearancesByMovieId,
};
