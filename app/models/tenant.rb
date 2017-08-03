class Tenant < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :unit
end
