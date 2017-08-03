class Tenant < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :unit

  def full_name
  	return self.first_name + " " + self.last_name
  end


end
