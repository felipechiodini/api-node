const express = require('express')
const app = express()
const port = 3000

const cities = require('./routes/citiesRouter')

app.use('/', cities)

app.listen(port)