class AddListingId < ActiveRecord::Migration
  def change
    add_column :owners, :listing_id, :int
  end
end
