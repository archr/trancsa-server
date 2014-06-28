express = require 'express'
mongoose = require 'mongoose'

Revision = mongoose.model 'Revision'

module.exports.api = router = new express.Router


router.route("/mantenimientos")
.get (req, res) ->
  query = req.query
  search = {}

  if query.usuario
    search['usuario'] = query.usuario

  if query.maquina
    search['maquina'] = query.maquina

  if query.dia
    search['dia'] = query.dia

  if query.desde
    search['desde'] = query.desde

  if query.hasta
    search['hasta'] = query.hasta

  if query.tipo
    search['tipo'] = query.tipo
  console.log search
  Revision.find(search).sort({createdAt:-1}).exec (err, reports) ->
    if err
      return res.send 500

    res.json reports