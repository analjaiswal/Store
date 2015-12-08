class ShippingaddressesController < ApplicationController
  before_action :set_shippingaddress, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @shippingaddresses = Shippingaddress.all
    respond_with(@shippingaddresses)
  end

  def show
    respond_with(@shippingaddress)
  end

  def new
    @shippingaddress = Shippingaddress.new
    respond_with(@shippingaddress)
  end

  def edit
  end

  def create
    @shippingaddress = Shippingaddress.new(shippingaddress_params)
    @shippingaddress.save
    respond_with(@shippingaddress)
  end

  def update
    @shippingaddress.update(shippingaddress_params)
    respond_with(@shippingaddress)
  end

  def destroy
    @shippingaddress.destroy
    respond_with(@shippingaddress)
  end

  private
    def set_shippingaddress
      @shippingaddress = Shippingaddress.find(params[:id])
    end

    def shippingaddress_params
      params.require(:shippingaddress).permit(:customer_id, :saname, :recepientname, :street, :snumber, :city, :zip, :state, :country)
    end
end
