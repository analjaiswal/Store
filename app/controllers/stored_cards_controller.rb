class StoredCardsController < ApplicationController
  before_action :set_stored_card, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stored_cards = StoredCard.all
    respond_with(@stored_cards)
  end

  def show
    respond_with(@stored_card)
  end

  def new
    @stored_card = StoredCard.new
    respond_with(@stored_card)
  end

  def edit
  end

  def create
    @stored_card = StoredCard.new(stored_card_params)
    @stored_card.save
    respond_with(@stored_card)
  end

  def update
    @stored_card.update(stored_card_params)
    respond_with(@stored_card)
  end

  def destroy
    @stored_card.destroy
    respond_with(@stored_card)
  end

  private
    def set_stored_card
      @stored_card = StoredCard.find(params[:id])
    end

    def stored_card_params
      params.require(:stored_card).permit(:creditcard_id, :customer_id)
    end
end
