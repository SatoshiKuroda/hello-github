class PlayerRegistrationController < ApplicationController
  protect_from_forgery except: :new


  # def upload
  #   @picture = Picture.new( params.require(:picture).permit(:name, :file) )
  #   @picture.save

  #   @player = Player.new( params.require(:player).permit(:name, :number, :tall, :weight, :position))
  #   @player.save
  #   redirect_to action: 'index'
    
    
  # end
  def new
    @player = Player.new
    @player.pictures.build
  end

  def create
    player = Player.new(player_params)
    player.save
  end


  private 
            # これは独特な書き方ですが、このように子要素のstrong parameterを書くことで
            # 自動で子要素に親要素のidもふられます。この場合だと、bookテーブルにあるuser_idにも
            # きちんとこの時作成される親要素のidがふられます。
        def player_params
            params.require(:player).permit(:name, :number, :tall, :weight, :position,players_attribute: [:name, :name])
            
        end
end
