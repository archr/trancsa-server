module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    nodemon:
      dev:
        script: 'server.coffee'

    compass:
      dev:
        options:
          sassDir: 'lib/sass'
          importPath: ['public/vendor/bootstrap-sass/vendor/assets/stylesheets']
          imagesDir: 'public/images'
          cssDir: 'public/stylesheets'
          javascriptsDir: 'public/javascript'
          fontsDir: 'public/fonts'
          outputStyle: 'compact'
          noLineComments: true

    watch:
      compass:
        files: ['lib/sass/**/*.scss']
        tasks: ['compass:dev']


  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-nodemon'

  grunt.registerTask 'default', ['nodemon:dev']
  grunt.registerTask 'assets', ['watch:compass']