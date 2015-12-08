class CreditcardsController < ApplicationController
  before_action :set_creditcard, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creditcards = Creditcard.all
    respond_with(@creditcards)
  end

  def show
    respond_with(@creditcard)
  end

  def new
    @creditcard = Creditcard.new
    respond_with(@creditcard)
  end

  def edit
  end

  def create
    @creditcard = Creditcard.new(creditcard_params)
    @creditcard.save
    respond_with(@creditcard)
  end

  def update
    @creditcard.update(creditcard_params)
    respond_with(@creditcard)
  end

  def destroy
    @creditcard.destroy
    respond_with(@creditcard)
  end

  private
    def set_creditcard
      @creditcard = Creditcard.find(params[:id])
    end

    def creditcard_params
      params.require(:creditcard).permit(:secnumber, :ownername, :cctype, :ccaddress, :expdate)
    end
end
