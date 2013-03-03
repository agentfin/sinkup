class Site < ActiveRecord::Base
  attr_accessible :site_name, :depth, :description, :difficulty, :gps_lat, :gps_lon, :location, :sink_date, :site_type, :sub_type

  has_many :dives

end
