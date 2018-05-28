class PlayerRegistrationController < ApplicationController
  protect_from_forgery except: :upload
  def index
  end

  def form

  end

  def upload
    @picture = Picture.new( params.require(:picture).permit(:name, :file) )
    @picture.save

    @player = Player.new( params.require(:player).permit( :number, :tall, :weight, :position))
    @player.save
    redirect_to action: 'index'
    
    
  end

  def create

  end
end
