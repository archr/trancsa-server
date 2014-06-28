express = require 'express'
mongoose = require 'mongoose'

Revision = mongoose.model 'Revision'

module.exports.reports = router = new express.Router

router.route("/")
.get (req, res) ->
  search = {}
  if req.query.busqueda
    search['$or'] = [{tipo: req.query.busqueda}, {maquina: req.query.busqueda}, {usuario: req.query.busqueda}, {horasMaquina: req.query.busqueda}]

  Revision.find(search).sort({createdAt:-1}).exec (err, reports) ->
    if err
      return res.send 500

    res.render 'reports/index',
      reports: reports,
      busqueda: req.query.busqueda