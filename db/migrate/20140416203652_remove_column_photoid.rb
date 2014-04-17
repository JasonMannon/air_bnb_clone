class RemoveColumnPhotoid < ActiveRecord::Migration
  def change
    remove_column :listings, :photo_id
  end
end
