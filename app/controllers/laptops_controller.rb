class LaptopsController < ApplicationController
  before_action :set_laptop, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @laptops = Laptop.all
    respond_with(@laptops)
  end

  def show
    respond_with(@laptop)
  end

  def new
    @laptop = Laptop.new
    respond_with(@laptop)
  end

  def edit
  end

  def create
    @laptop = Laptop.new(laptop_params)
    @laptop.save
    respond_with(@laptop)
  end

  def update
    @laptop.update(laptop_params)
    respond_with(@laptop)
  end

  def destroy
    @laptop.destroy
    respond_with(@laptop)
  end

  private
    def set_laptop
      @laptop = Laptop.find(params[:id])
    end

    def laptop_params
      params.require(:laptop).permit(:product_id, :btype, :weight)
    end
end
