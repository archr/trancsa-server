path = require 'path'
root = path.normalize("#{__dirname}/..")

module.exports = config = {}


config.development =
  port: 3000
  db: "mongodb://localhost/tracsa-dev"
  env: 'development'
  root: root