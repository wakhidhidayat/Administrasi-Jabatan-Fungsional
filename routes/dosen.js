const express = require('express');
const dosenController = require('../controllers/dosen');

const router = express.Router();

router.get('/',dosenController.getIndex);
router.get('/profile/:nip', dosenController.getProfile);
router.get('/search', dosenController.getSearch);

module.exports = router;