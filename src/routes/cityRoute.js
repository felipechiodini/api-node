var express = require('express');
var app = express();

app.get('/cidades', (req, res) => {
    res.send([
        { nome: "Jaraguá do sul", Uf: "SC" }
    ])
})