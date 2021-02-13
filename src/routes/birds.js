const express = require('express')
const router = express.Router()
const connection = require('../../db-connection')

router.use((req, res, next) => {
    console.log('Time: ', Date.now())
    next()
})

router.get('/', (req, res) => {
    res.send('Birds home page')
})

router.get('/about', (req, res) => {
    try {
        connection.query('SELECT id, uf_code, name, uf, region FROM states', (err, rows, fields) => {
            if(err)
                throw err
            res.send(rows)
        })
    } catch (err) {
        console.log(err)
    }
    finally {
        connection.end()
    }

})

module.exports = router