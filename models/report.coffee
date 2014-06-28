mongoose = require 'mongoose'
troop = require 'mongoose-troop'
moment = require 'moment'

Schema = mongoose.Schema

module.exports = ->
  revisionSchema = new Schema {
    tipo: String
    horasMaquina: String
    usuario: String
    maquina: String
    notas: String
    fechaRevision: Date
  }, {collection: 'revisiones'}


  revisionSchema.virtual('fecha').get ->
    fecha = moment(@fechaRevision)
    fecha.format('ll')


  mongoose.model 'Revision', revisionSchema