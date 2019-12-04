const express = require('express');
const penelitianController = require('../controllers/penelitian');

const router = express.Router();

router.get('/:id', penelitianController.getDetail);

module.exports = router;