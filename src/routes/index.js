const express = require('express');

const router = express.Router();

router.get('/test', function (req, res, next) {
    res.status(200).send({
        title: "TEST",
        version: "0.0.1",
    });
});


module.exports = router;