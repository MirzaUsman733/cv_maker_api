const express = require('express');
const router = express.Router();
const cvController = require('../controllers/cvController');

// Route to GET all CVs
router.get('/cvs', cvController.getAllCVs);

// Route to GET a single CV by ID
router.get('/cvs/:id', cvController.getCVById);

// Route to POST a new CV
router.post('/cvs', cvController.createCV);

// Route to UPDATE a CV
router.put('/cvs/:id', cvController.updateCV);

// Route to DELETE a CV
router.delete('/cvs/:id', cvController.deleteCV);

module.exports = router;
