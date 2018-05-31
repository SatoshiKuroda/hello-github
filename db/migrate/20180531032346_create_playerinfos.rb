class CreatePlayerinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :playerinfos do |t|
      t.string :name
      t.integer :tall
      t.integer :weight
      t.string :position
      t.string :file

      t.timestamps
    end
  end
end
