class Unit < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :property
  has_many :tenants
end
