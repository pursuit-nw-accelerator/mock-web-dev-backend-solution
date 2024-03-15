const { Router } = require('express');
const { getAllMovies, getMovieById } = require('../queries/moviesQueries');
const { getAppearancesByMovieId } = require('../queries/appearancesQueries');

const moviesController = Router();

moviesController.get('/', async (request, response) => {
  try {
    const movies = await getAllMovies();
    response.status(200).json({ data: movies });
  } catch (err) {
    response.status(500).json({ error: err.message });
  }
});

moviesController.get('/:id/actors', async (request, response) => {
  try {
    const { id } = request.params;
    const movie = await getMovieById(id);
    if (!movie) {
      return response
        .status(404)
        .json({ error: `Could not find movie with id ${id}` });
    }

    const appearances = await getAppearancesByMovieId(id);
    response.status(200).json({ data: appearances });
  } catch (err) {
    response.status(500).json({ error: err.message });
  }
});

module.exports = moviesController;
