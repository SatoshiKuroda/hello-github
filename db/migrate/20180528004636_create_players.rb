class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.integer :tall
      t.integer :weight
      t.integer :position
      
      t.timestamps
    end
  end
end
