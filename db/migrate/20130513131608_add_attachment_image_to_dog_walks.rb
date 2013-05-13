class AddAttachmentImageToDogWalks < ActiveRecord::Migration
  def self.up
    change_table :dog_walks do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :dog_walks, :image
  end
end
