require 'test_helper'

class ShippingaddressesControllerTest < ActionController::TestCase
  setup do
    @shippingaddress = shippingaddresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shippingaddresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shippingaddress" do
    assert_difference('Shippingaddress.count') do
      post :create, shippingaddress: { city: @shippingaddress.city, country: @shippingaddress.country, customer_id: @shippingaddress.customer_id, recepientname: @shippingaddress.recepientname, saname: @shippingaddress.saname, snumber: @shippingaddress.snumber, state: @shippingaddress.state, street: @shippingaddress.street, zip: @shippingaddress.zip }
    end

    assert_redirected_to shippingaddress_path(assigns(:shippingaddress))
  end

  test "should show shippingaddress" do
    get :show, id: @shippingaddress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shippingaddress
    assert_response :success
  end

  test "should update shippingaddress" do
    patch :update, id: @shippingaddress, shippingaddress: { city: @shippingaddress.city, country: @shippingaddress.country, customer_id: @shippingaddress.customer_id, recepientname: @shippingaddress.recepientname, saname: @shippingaddress.saname, snumber: @shippingaddress.snumber, state: @shippingaddress.state, street: @shippingaddress.street, zip: @shippingaddress.zip }
    assert_redirected_to shippingaddress_path(assigns(:shippingaddress))
  end

  test "should destroy shippingaddress" do
    assert_difference('Shippingaddress.count', -1) do
      delete :destroy, id: @shippingaddress
    end

    assert_redirected_to shippingaddresses_path
  end
end
