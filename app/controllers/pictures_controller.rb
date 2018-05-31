class PicturesController < ApplicationController
  def create
    @picture = Picture.new
    @picture.save
  end
end
