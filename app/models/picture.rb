class Picture < ApplicationRecord
  mount_uploader :file, PictureUploader
  belongs_to :player,optional: true
end
