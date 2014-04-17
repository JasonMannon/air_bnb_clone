class AddOwnerBoolean < ActiveRecord::Migration
  def change
    add_column :owners, :owner, :boolean
  end
end
