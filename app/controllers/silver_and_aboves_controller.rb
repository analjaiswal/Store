class SilverAndAbovesController < ApplicationController
  before_action :set_silver_and_abofe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @silver_and_aboves = SilverAndAbove.all
    respond_with(@silver_and_aboves)
  end

  def show
    respond_with(@silver_and_abofe)
  end

  def new
    @silver_and_abofe = SilverAndAbove.new
    respond_with(@silver_and_abofe)
  end

  def edit
  end

  def create
    @silver_and_abofe = SilverAndAbove.new(silver_and_above_params)
    @silver_and_abofe.save
    respond_with(@silver_and_abofe)
  end

  def update
    @silver_and_abofe.update(silver_and_above_params)
    respond_with(@silver_and_abofe)
  end

  def destroy
    @silver_and_abofe.destroy
    respond_with(@silver_and_abofe)
  end

  private
    def set_silver_and_abofe
      @silver_and_abofe = SilverAndAbove.find(params[:id])
    end

    def silver_and_abofe_params
      params.require(:silver_and_abofe).permit(:customer_id, :creditline)
    end
end
