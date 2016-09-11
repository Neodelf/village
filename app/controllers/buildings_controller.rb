class BuildingsController < ApplicationController
  protect_from_forgery except: :show
  def show
    @building = Building.find(params[:id])
    @images = @building.images.where(kind: 'Фото')
    render 'show.js.erb', layout: false
  end
end
