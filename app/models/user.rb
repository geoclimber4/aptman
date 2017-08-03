class User < ActiveRecord::Base
	validates_presence_of :user_name, :email, :password
	validates :email, :user_name, uniqueness: true


  has_many :property_managers
end
