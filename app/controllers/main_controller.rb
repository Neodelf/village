class MainController < ApplicationController
  caches_page :home
  #caches_action :home
  def home
    @buildings = Building.includes(:images).order(:position)
    @buildings_size = @buildings.size - 1
    @steads = Stead.order(:serial_number)
    @order_call = OrderCall.new
  end
end
