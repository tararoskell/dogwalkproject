class RemoveDistanceFromDogWalks < ActiveRecord::Migration
  def up
    remove_column :dog_walks, :distance
  end

  def down
    add_column :dog_walks, :distance, :integer
  end
end
