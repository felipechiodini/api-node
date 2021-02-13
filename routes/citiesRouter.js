const express = require('express')
const router = express.Router()
const cidades = require('../models/citiesModel')

router.use((req, res, next) => {
    console.log('Time: ', Date.now())
    next()
})

router.get('/cidades', (req, res) => {
    cidades.then(result => {
        res.send(result)
    })
})

router.get('/estados', (req, res) => {
    cidades.then(result => {
        res.send(result)
    })
})

module.exports = router