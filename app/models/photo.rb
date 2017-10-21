class Photo < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validates :photo, presence: true

end
