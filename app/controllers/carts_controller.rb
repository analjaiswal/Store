class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @carts = current_customer.carts
    respond_with(@carts)
  end

  def show
    respond_with(@cart)
  end

  def new
    @cart = Cart.new
    respond_with(@cart)
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    @cart.total = @cart.quantity.to_i * Product.find_by_id(@cart.product_id).pprice.to_i 
    @cart.save
    flash[:notice ] = "Product added successfully"
    redirect_to :back
    
  end

  def update
    @cart.update(cart_params)
    respond_with(@cart)
  end

  def destroy
    @cart.destroy
    respond_with(@cart)
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require(:cart).permit(:customer_id, :saname, :creditcard_id, :tstatus, :tdate , :product_id, :quantity , :total)
    end
end
