const express = require('express')
const LoadIndexPageController = require('../controllers/LoadIndexPageController')
const routes = express.Router()

routes.get('/', LoadIndexPageController)

routes.get('/register', (req, res) => res.render('register'))
module.exports = routes

