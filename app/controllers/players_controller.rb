class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end
  
  def new
    @player = Player.new
    @player.pictures.build

  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to player_path(id: @player.id)
  end

  def show
    @player = Player.find(params[:id])

  end

  # def update
	# 	@player_registrations.update(player_param)
	# 	redirect_to root_path
	# end

  private 
            # これは独特な書き方ですが、このように子要素のstrong parameterを書くことで
            # 自動で子要素に親要素のidもふられます。この場合だと、pictureテーブルにあるuser_idにも
            # きちんとこの時作成される親要素のidがふられます。
        def player_params
            params.require(:player).permit( :id, :name, :number, :tall, :weight, :position, pictures_attributes: [:file])
            
        end
end
