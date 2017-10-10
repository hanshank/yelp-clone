class PlacesController < ApplicationController

def index
  @places = Place.order(:name).page(params[:page])
  Place.page(1).limit_value
end

def new
  @place = Place.new
end

end
