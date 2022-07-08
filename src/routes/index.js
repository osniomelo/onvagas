const express = require('express')
const LoadIndexPageController = require('../controllers/LoadIndexPageController')
const routes = express.Router()

routes.get('/register', (req, res) => res.render('register'))

routes.get('/', (req, res) => res.render('index'))

routes.get('/dashboard', LoadIndexPageController)

module.exports = routes

