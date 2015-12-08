require 'test_helper'

class AppearsInsControllerTest < ActionController::TestCase
  setup do
    @appears_in = appears_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appears_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appears_in" do
    assert_difference('AppearsIn.count') do
      post :create, appears_in: { cart_id: @appears_in.cart_id, pricesold: @appears_in.pricesold, product_id: @appears_in.product_id, quantity: @appears_in.quantity }
    end

    assert_redirected_to appears_in_path(assigns(:appears_in))
  end

  test "should show appears_in" do
    get :show, id: @appears_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appears_in
    assert_response :success
  end

  test "should update appears_in" do
    patch :update, id: @appears_in, appears_in: { cart_id: @appears_in.cart_id, pricesold: @appears_in.pricesold, product_id: @appears_in.product_id, quantity: @appears_in.quantity }
    assert_redirected_to appears_in_path(assigns(:appears_in))
  end

  test "should destroy appears_in" do
    assert_difference('AppearsIn.count', -1) do
      delete :destroy, id: @appears_in
    end

    assert_redirected_to appears_ins_path
  end
end
