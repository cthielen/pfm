@pfm.controller 'VendorIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.vendors = []
  $http.get('./vendors.json').success((data) ->
    $scope.vendors = data
  )

  $scope.viewVendor = (id) ->
    $location.url "/vendors/#{id}"
]
