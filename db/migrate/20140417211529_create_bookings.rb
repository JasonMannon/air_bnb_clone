class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :owner_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
