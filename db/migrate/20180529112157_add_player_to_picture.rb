class AddPlayerToPicture < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :player, foreign_key: true
  end
end
