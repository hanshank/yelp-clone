class Photos_controller < ApplicationRecord

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.create(place_params)
    if @photo.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

end
