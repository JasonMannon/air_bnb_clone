class DropUseridAddOwenerid < ActiveRecord::Migration
  def change
    remove_column :comments, :user_id
    add_column :comments, :owner_id, :int
  end
end
