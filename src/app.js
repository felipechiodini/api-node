const express = require('express');

const app = express();

app.get('/cidades', () => {
    res.send('cidade')
})
