class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment, :string
      t.column :user_id, :int
      t.timestamps
    end
  end
end
