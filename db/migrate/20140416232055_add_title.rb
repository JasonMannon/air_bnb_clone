class AddTitle < ActiveRecord::Migration
  def change
    add_column :listings, :title, :string
  end
end
