describe "Pfm controllers", ->
  beforeEach module("pfm")

  describe "VendorIndexCtrl", ->
    it "should set vendors to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("VendorIndexCtrl",
        $scope: scope
      )
      expect(scope.vendors.length).toBe 0
    )
