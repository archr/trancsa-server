module.exports = (server) ->
  server.use "", require('./reports').reports
  server.use "/api", require('./api').api