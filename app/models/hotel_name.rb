class HotelName < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :hotel_name
  attr_accessible :hotel_info_id, :hotel_short_name, :name, :index_name, :permalink  
  rails_admin do
		field  :name
		field  :hotel_short_name				
		field  :index_name					
		field  :permalink					
	end	
end
