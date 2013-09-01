class Season < ActiveRecord::Base
  belongs_to :hotel_info,:dependent => :destroy, :inverse_of => :seasons
  attr_accessible :name
  has_many :range_dates, :dependent => :destroy, :inverse_of => :season 
  attr_accessible :range_date_ids  
end
