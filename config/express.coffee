express = require 'express'
logger = require 'morgan'
bodyParser = require 'body-parser'
errorhandler = require 'errorhandler'

module.exports = (server) ->

  if GLOBAL.config.env is 'development'
    server.use errorhandler()


  server.use logger("dev")
  server.use express.static("#{config.root}/public")
  server.use bodyParser.urlencoded
    extended: true
  server.use bodyParser.json()


  server.set 'showStackError', true
  server.set 'views', "#{config.root}/views"
  server.set 'view engine', "jade"
  server.set 'view options',
    pretty: true


  return