require 'test_helper'

class OfferproductsControllerTest < ActionController::TestCase
  setup do
    @offerproduct = offerproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offerproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offerproduct" do
    assert_difference('Offerproduct.count') do
      post :create, offerproduct: { offerprice: @offerproduct.offerprice, product_id: @offerproduct.product_id }
    end

    assert_redirected_to offerproduct_path(assigns(:offerproduct))
  end

  test "should show offerproduct" do
    get :show, id: @offerproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offerproduct
    assert_response :success
  end

  test "should update offerproduct" do
    patch :update, id: @offerproduct, offerproduct: { offerprice: @offerproduct.offerprice, product_id: @offerproduct.product_id }
    assert_redirected_to offerproduct_path(assigns(:offerproduct))
  end

  test "should destroy offerproduct" do
    assert_difference('Offerproduct.count', -1) do
      delete :destroy, id: @offerproduct
    end

    assert_redirected_to offerproducts_path
  end
end
