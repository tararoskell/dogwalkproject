class AddUserIdToDogWalks < ActiveRecord::Migration
  def change
    add_column :dog_walks, :user_id, :integer
    add_index :dog_walks, :user_id
  end
end
