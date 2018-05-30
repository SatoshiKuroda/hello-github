class PlayerController < ApplicationController
  def index
  @players = Player.all
  end
  
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
