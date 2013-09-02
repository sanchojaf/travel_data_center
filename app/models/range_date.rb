class RangeDate < ActiveRecord::Base
  belongs_to :season,:inverse_of => :range_dates
  attr_accessible :end, :start    
  rails_admin do
		field  :start
		field  :end		
	end	
end
