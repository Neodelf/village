class BuildingsController < ApplicationController
  def show
    @building = Building.find(params[:id])
    @images = @building.images.where(kind: 'Фото')
  end
end
