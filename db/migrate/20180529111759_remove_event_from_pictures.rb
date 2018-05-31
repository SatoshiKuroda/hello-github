class RemoveEventFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :event_id, :reference
  end
end
