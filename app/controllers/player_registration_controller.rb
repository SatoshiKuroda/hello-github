class PlayerRegistrationController < ApplicationController
  protect_from_forgery with: :exception

  # def upload
  #   @picture = Picture.new( params.require(:picture).permit(:name, :file) )
  #   @picture.save

  #   @player = Player.new( params.require(:player).permit(:name, :number, :tall, :weight, :position))
  #   @player.save
  #   redirect_to action: 'index'
    
    
  # end


  def new
    @player_registration = PlayerRegistration.new
    @picture = Picture.new
    @player = Player.new
    @player.pictures.build

  end

  def create
    @player = Player.new(player_params)
    @player.save

  end

  def update
		@player_registrations.update(player_param)
		redirect_to root_path
	end

  private 
            # これは独特な書き方ですが、このように子要素のstrong parameterを書くことで
            # 自動で子要素に親要素のidもふられます。この場合だと、bookテーブルにあるuser_idにも
            # きちんとこの時作成される親要素のidがふられます。
        def player_params
            params.require(:picture).permit( :name, :number, :tall, :weight, :position,players_attribute: [:name, :name])
            
        end
end
