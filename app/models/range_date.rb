class RangeDate < ActiveRecord::Base
  belongs_to :season, :inverse_of => :range_dates  
  has_many :rates, :dependent => :destroy, :inverse_of => :range_date
  attr_accessible :rate_ids 
  attr_accessible :end, :start    
  rails_admin do
		field :start		
		field :end	
		field :rates	
	end	
end
