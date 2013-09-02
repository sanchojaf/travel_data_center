class Contact < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :contact
  attr_accessible :alternative_phone, :email, :fax, :google_map_url, :hotel_info_id, :phone, :web  
  rails_admin do
		field  :phone
		field  :alternative_phone
		field  :fax		
		field  :email
		field  :web
		field  :google_map_url
	end	
end
