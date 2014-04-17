class AddColumnPrice < ActiveRecord::Migration
  def change
    add_column :listings, :price, :int
  end
end
