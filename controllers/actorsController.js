const { Router } = require('express');
const { getAllActors, getActorById } = require('../queries/actorsQueries');
const { getAppearancesByActorId } = require('../queries/appearancesQueries');

const actorsController = Router();

actorsController.get('/', async (request, response) => {
  try {
    const actors = await getAllActors();
    response.status(200).json({ data: actors });
  } catch (err) {
    response.status(500).json({ error: err.message });
  }
});

actorsController.get('/:id/movies', async (request, response) => {
  try {
    const { id } = request.params;
    const actor = await getActorById(id);
    if (!actor) {
      return response
        .status(404)
        .json({ error: `Could not find actor with id ${id}` });
    }

    const appearances = await getAppearancesByActorId(id);
    response.status(200).json({ data: appearances });
  } catch (err) {
    response.status(500).json({ error: err.message });
  }
});

module.exports = actorsController;
