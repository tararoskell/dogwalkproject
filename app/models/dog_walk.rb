class DogWalk < ActiveRecord::Base
  attr_accessible :county, :directions, :distance, :town
  validates :town, presence: true
  validates :county, presence: true
  validates :distance, presence: true
  validates :directions, presence: true
end
