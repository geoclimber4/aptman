class User < ActiveRecord::Base
	validates_presence_of :user_name, :email, :password
	validates :email, :user_name, uniqueness: true

  has_many :property_managers

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(user_name, password)
    user = User.find_by(user_name: user_name)
    if user.password == password
      user
    else
      nil
    end
  end
  
end
