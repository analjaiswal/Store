class AppearsInsController < ApplicationController
  before_action :set_appears_in, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @appears_ins = AppearsIn.all
    respond_with(@appears_ins)
  end

  def show
    respond_with(@appears_in)
  end

  def new
    @appears_in = AppearsIn.new
    respond_with(@appears_in)
  end

  def edit
  end

  def create
    @appears_in = AppearsIn.new(appears_in_params)
    @appears_in.save
    respond_with(@appears_in)
  end

  def update
    @appears_in.update(appears_in_params)
    respond_with(@appears_in)
  end

  def destroy
    @appears_in.destroy
    respond_with(@appears_in)
  end

  private
    def set_appears_in
      @appears_in = AppearsIn.find(params[:id])
    end

    def appears_in_params
      params.require(:appears_in).permit(:cart_id, :product_id, :quantity, :pricesold)
    end
end
