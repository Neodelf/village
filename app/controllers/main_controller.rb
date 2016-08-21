class MainController < ApplicationController
  def home
    @buildings = Building.limit(6).includes(:images)
    @steads = Stead.order(:serial_number)
    @order_call = OrderCall.new
  end
end