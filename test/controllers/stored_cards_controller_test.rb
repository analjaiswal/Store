require 'test_helper'

class StoredCardsControllerTest < ActionController::TestCase
  setup do
    @stored_card = stored_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stored_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stored_card" do
    assert_difference('StoredCard.count') do
      post :create, stored_card: { creditcard_id: @stored_card.creditcard_id, customer_id: @stored_card.customer_id }
    end

    assert_redirected_to stored_card_path(assigns(:stored_card))
  end

  test "should show stored_card" do
    get :show, id: @stored_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stored_card
    assert_response :success
  end

  test "should update stored_card" do
    patch :update, id: @stored_card, stored_card: { creditcard_id: @stored_card.creditcard_id, customer_id: @stored_card.customer_id }
    assert_redirected_to stored_card_path(assigns(:stored_card))
  end

  test "should destroy stored_card" do
    assert_difference('StoredCard.count', -1) do
      delete :destroy, id: @stored_card
    end

    assert_redirected_to stored_cards_path
  end
end
