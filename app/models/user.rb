class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar, :avatar_delete
  
  # attr_accessible :title, :body
  
  
  has_many :dog_walks, :dependent => :destroy
  has_attached_file :avatar, styles: { medium: "640x480>", :thumb => "100x100>"}

  attr_accessor :avatar_delete
  before_validation { avatar.clear if avatar_delete == '1' }
end
