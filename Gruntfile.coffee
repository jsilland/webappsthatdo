module.exports = (grunt) ->

  grunt.initConfig
    nodeunit:
      files: ['test/**/*_test.js']
    watch:
      coffee:
        files: ['**/*.coffee']
        tasks: ['compile']
    coffee:
      compile:
        expand: true
        src: ['app.coffee', 'bin/**/*.coffee', 'routes/**/*.coffee', 'assets/**/*.coffee']
        dest: 'build'
        ext: '.js'
    copy:
      components:
        files: [
          {expand: true, src: ['assets/components/**/*.html'], dest: 'build/', filter: 'isFile'}
        ]
      manifest:
        files: [
          {expand: false, src: ['assets/manifest.json'], dest: 'build/'}
        ]       
    execute:
      cotton:
        src: ['build/bin/www.js']
    clean:
      build:
        src: ['build']

  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-copy')
  grunt.loadNpmTasks('grunt-contrib-nodeunit')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-execute')
  grunt.loadNpmTasks('grunt-run')

  grunt.registerTask('default', ['nodeunit'])
  grunt.registerTask('build', ['coffee:compile', 'copy'])
  grunt.registerTask('run', ['build', 'execute'])
