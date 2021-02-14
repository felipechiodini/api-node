const express = require('express')
const app = express()
const cors = require('cors')
const port = 3000

var corsOptions = {
    origin: 'http://localhost:3000',
    optionsSuccessStatus: 200
}

const cities = require('./routes/citiesRouter')

app.use(cors(corsOptions))
app.use('/', cities)

app.listen(port)