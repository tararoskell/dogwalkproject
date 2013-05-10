class AddDistanceToDogWalks < ActiveRecord::Migration
  def change
    add_column :dog_walks, :distance, :float
  end
end
