class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :owner_id
      t.integer :photo_id
      t.string :description
      t.string :location
      t.timestamps
    end
  end
end
