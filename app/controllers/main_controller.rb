class MainController < ApplicationController
  def home
    @buildings = Building.includes(:images).order(:position)
    @steads = Stead.order(:serial_number)
    @order_call = OrderCall.new
  end
end