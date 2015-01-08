require 'test_helper'

class VendorAliasesControllerTest < ActionController::TestCase
  setup do
    @vendor_alias = vendor_aliases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendor_aliases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor_alias" do
    assert_difference('VendorAlias.count') do
      post :create, vendor_alias: { alias: @vendor_alias.alias }
    end

    assert_redirected_to vendor_alias_path(assigns(:vendor_alias))
  end

  test "should show vendor_alias" do
    get :show, id: @vendor_alias
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor_alias
    assert_response :success
  end

  test "should update vendor_alias" do
    patch :update, id: @vendor_alias, vendor_alias: { alias: @vendor_alias.alias }
    assert_redirected_to vendor_alias_path(assigns(:vendor_alias))
  end

  test "should destroy vendor_alias" do
    assert_difference('VendorAlias.count', -1) do
      delete :destroy, id: @vendor_alias
    end

    assert_redirected_to vendor_aliases_path
  end
end
