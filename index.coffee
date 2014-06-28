express = require 'express'
mongoose = require 'mongoose'
fs = require 'fs'


server = express()

env = process.env.NODE_ENV || 'development'
GLOBAL.config = require('./config')[env]


# Configuración de la base de datos
mongoose.connect(config.db)
modelsDir = "#{config.root}/models"
fs.readdirSync(modelsDir).forEach (model) ->
  require("#{modelsDir}/#{model}")()


# Configuración de express
require("#{config.root}/config/express")(server)


# Configuración del enrutador
require("#{config.root}/routes")(server)


# Inicia express
server.listen config.port, ->
  console.log "Server en el puerto #{config.port}"