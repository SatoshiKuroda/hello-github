class RemoveNameFromPicture < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :name, :string
  end
end
