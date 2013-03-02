class User < ActiveRecord::Base
  attr_accessible :age, :bio, :dive_count, :diver_level, :diver_type, :email, :hometown, :pic_url, :twitter_handle, :username

  has_many :dives

end
