class Season < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :seasons
  attr_accessible :name
  has_many :range_dates, :dependent => :destroy, :inverse_of => :season 
  attr_accessible :range_date_ids    
  rails_admin do
		field  :name
		field  :range_dates		
	end	
end
