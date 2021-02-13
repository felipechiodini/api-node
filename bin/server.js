const express = require('express')
const app = express()
const port = 3000

const birds = require('../src/routes/birds.js')

app.use('/birds', birds)

app.listen(port, function () {
    console.log(`app listening on port ${port}`)
})