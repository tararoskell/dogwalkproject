class DogWalk < ActiveRecord::Base
  attr_accessible :county, :directions, :distance, :town, :image
  validates :town, presence: true
  validates :county, presence: true
  validates :distance, presence: true
  validates :directions, presence: true
  validates :user_id, presence: true
  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }       
  belongs_to :user
  has_attached_file :image, styles: { medium: "640x480>", :thumb => "100x100>"}

end
