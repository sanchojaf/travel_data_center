class Room < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :rooms
  has_and_belongs_to_many :context_rates
  attr_accessible :hotel_info_id, :name  
  attr_accessible :context_rate_ids    
	rails_admin do
		field  :name
		field  :context_rates		
	end	
end
