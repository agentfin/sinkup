class Dive < ActiveRecord::Base
  attr_accessible :comment, :dive_date, :dive_rating, :photo_link, :site_id, :user_id

  belongs_to :user
  belongs_to :site
end
