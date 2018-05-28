class Player < ApplicationRecord
  mount_uploader :file, PictureUploader
  has_many :pictures
  accepts_nested_attributes_for :pictures
end
