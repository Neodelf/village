class MainController < ApplicationController
  def home
    @buildings = Building.limit(6).includes(:images)
  end
end