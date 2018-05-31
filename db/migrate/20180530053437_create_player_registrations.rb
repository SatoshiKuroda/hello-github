class CreatePlayerRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :player_registrations do |t|

      t.timestamps
    end
  end
end
