class Photos_controller < ApplicationRecord

  def new
    @photo = Photo.new
  end

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

end
