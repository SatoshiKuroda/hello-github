class PlayerRegistrationController < ApplicationController
  def index
  end

  def form
  end

  def upload
    @picture = Picture.new( params.require(:picture).permit(:name, :file) )
    @picture.save
    redirect_to action: 'index'
  end

  def download
  end
end
