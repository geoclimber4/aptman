class Unit < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :property
  belongs_to :tenant
end
