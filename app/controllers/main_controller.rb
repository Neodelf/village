class MainController < ApplicationController
  def home
    @buildings = Building.limit(6).includes(:images)
    @order_call = OrderCall.new
  end
end