module.exports = function(config) {
  config.set({
    basePath: '../..',

    frameworks: ['jasmine'],

    autoWatch: true,

    preprocessors: {
      '**/*.coffee': 'coffee'
    },

    files: [
    'vendor/assets/javascripts/angular.js',
    'vendor/assets/javascripts/angular-route.js',
    'vendor/assets/javascripts/angular-mocks.js',
    'app/assets/javascripts/main.coffee',
    'app/assets/javascripts/angular/controllers/VendorIndexCtrl.coffee',
    'app/assets/javascripts/angular/*',
    'spec/javascripts/*_spec.coffee'
    ]
  });
};
