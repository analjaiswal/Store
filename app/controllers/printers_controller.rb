class PrintersController < ApplicationController
  before_action :set_printer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @printers = Printer.all
    respond_with(@printers)
  end

  def show
    respond_with(@printer)
  end

  def new
    @printer = Printer.new
    respond_with(@printer)
  end

  def edit
  end

  def create
    @printer = Printer.new(printer_params)
    @printer.save
    respond_with(@printer)
  end

  def update
    @printer.update(printer_params)
    respond_with(@printer)
  end

  def destroy
    @printer.destroy
    respond_with(@printer)
  end

  private
    def set_printer
      @printer = Printer.find(params[:id])
    end

    def printer_params
      params.require(:printer).permit(:product_id, :printertype, :resolution)
    end
end
