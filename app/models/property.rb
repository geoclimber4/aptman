class Property < ActiveRecord::Base
	validates_presence_of :name
	validates :name, uniqueness: true
  # Remember to create a migration!
  has_many :property_managers
  has_many :units
  has_many :tenants, through: :units
end
