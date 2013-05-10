class CreateDogWalks < ActiveRecord::Migration
  def change
    create_table :dog_walks do |t|
      t.string :town
      t.string :county
      t.integer :distance
      t.text :directions

      t.timestamps
    end
  end
end
