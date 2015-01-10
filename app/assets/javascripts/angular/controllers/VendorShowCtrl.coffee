@pfm.controller 'VendorShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./vendors/#{$routeParams.id}.json").success((data) ->
    $scope.vendor = data
  )
]
