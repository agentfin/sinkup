class User < ActiveRecord::Base

	has_secure_password

	attr_accessible :age, :bio, :dive_count, :diver_level, :diver_type, :email, :hometown, :pic_url, :twitter_handle, :username, :email, :password, :password_confirmation

  has_many :dives

end
