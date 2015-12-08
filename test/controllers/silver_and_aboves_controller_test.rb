require 'test_helper'

class SilverAndAbovesControllerTest < ActionController::TestCase
  setup do
    @silver_and_abofe = silver_and_aboves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:silver_and_aboves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create silver_and_abofe" do
    assert_difference('SilverAndAbove.count') do
      post :create, silver_and_abofe: { creditline: @silver_and_abofe.creditline, customer_id: @silver_and_abofe.customer_id }
    end

    assert_redirected_to silver_and_abofe_path(assigns(:silver_and_abofe))
  end

  test "should show silver_and_abofe" do
    get :show, id: @silver_and_abofe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @silver_and_abofe
    assert_response :success
  end

  test "should update silver_and_abofe" do
    patch :update, id: @silver_and_abofe, silver_and_abofe: { creditline: @silver_and_abofe.creditline, customer_id: @silver_and_abofe.customer_id }
    assert_redirected_to silver_and_abofe_path(assigns(:silver_and_abofe))
  end

  test "should destroy silver_and_abofe" do
    assert_difference('SilverAndAbove.count', -1) do
      delete :destroy, id: @silver_and_abofe
    end

    assert_redirected_to silver_and_aboves_path
  end
end
