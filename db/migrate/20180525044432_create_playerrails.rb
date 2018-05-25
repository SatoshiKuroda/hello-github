class CreatePlayerrails < ActiveRecord::Migration[5.2]
  def change
    create_table :playerrails do |t|
      t.string :s

      t.timestamps
    end
  end
end
