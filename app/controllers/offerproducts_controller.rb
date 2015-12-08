class OfferproductsController < ApplicationController
  before_action :set_offerproduct, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @offerproducts = Offerproduct.all
    respond_with(@offerproducts)
  end

  def show
    respond_with(@offerproduct)
  end

  def new
    @offerproduct = Offerproduct.new
    respond_with(@offerproduct)
  end

  def edit
  end

  def create
    @offerproduct = Offerproduct.new(offerproduct_params)
    @offerproduct.save
    respond_with(@offerproduct)
  end

  def update
    @offerproduct.update(offerproduct_params)
    respond_with(@offerproduct)
  end

  def destroy
    @offerproduct.destroy
    respond_with(@offerproduct)
  end

  private
    def set_offerproduct
      @offerproduct = Offerproduct.find(params[:id])
    end

    def offerproduct_params
      params.require(:offerproduct).permit(:product_id, :offerprice)
    end
end
