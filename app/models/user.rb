class User < ActiveRecord::Base
  
  validates_length_of :username, :in => 3..15
  validates_length_of :password, :in => 5..200
  validates_confirmation_of :password
  
  attr_accessor :password_confirmation

  def self.authenticate(username, password)
    user = User.find(:first, :conditions => [ "username = ? AND password = ?", username, password])
    raise ArgumentError.new("Login failed.") unless user
    return user
  end
  
end
