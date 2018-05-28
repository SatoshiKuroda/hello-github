class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :place
      t.string :home_team_name
      t.string :away_team_name
      t.integer :audience
      t.integer :home_team_goal
      t.integer :away_team_goal
      t.timestamps
    end
  end
end
