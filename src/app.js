const express = require('express');

const app = express();

app.get('/cidades', (req, res, next) => {
    res.send('tes')
})
