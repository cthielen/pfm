@pfm = angular.module('pfm', ['ngRoute'])

@pfm.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/vendors', {
      templateUrl: '../templates/vendors/index.html',
      controller: 'VendorIndexCtrl'
    }).
    when('/vendors/:id', {
      templateUrl: '../templates/vendors/show.html',
      controller: 'VendorShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/portfolio.html',
      controller: 'PortfolioCtrl'
    })
])
