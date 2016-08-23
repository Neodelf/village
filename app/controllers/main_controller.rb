class MainController < ApplicationController
  def home
    @buildings = Building.includes(:images).where(images: { kind: 'Фото' }).limit(6)
    @steads = Stead.order(:serial_number)
    @order_call = OrderCall.new
  end
end