class HotelInfo < ActiveRecord::Base  
  attr_accessible :hotel_status, :latitude, :longitude, :when_built, 
                  :property_type, :segment, :category

  has_one :hotel_name, :dependent => :destroy, :inverse_of => :hotel_info    
  attr_accessible :hotel_name_attributes, :allow_destroy => true
  accepts_nested_attributes_for :hotel_name, :allow_destroy => true

  has_one :address, :dependent => :destroy, :inverse_of => :hotel_info
  attr_accessible :address_attributes, :allow_destroy => true
  accepts_nested_attributes_for :address, :allow_destroy => true
  
  has_one :contact, :dependent => :destroy, :inverse_of => :hotel_info
  attr_accessible :contact_attributes, :allow_destroy => true
  accepts_nested_attributes_for :contact, :allow_destroy => true

  has_many :seasons, :dependent => :destroy, :inverse_of => :hotel_info
  attr_accessible :seasons_attributes, :allow_destroy => true
  accepts_nested_attributes_for :seasons, :allow_destroy => true

    
	rails_admin do
		field  :hotel_name do
			help 'The full name of the hotel'
		end        		
		field  :address do
			help 'The address of the hotel'
		end 
		field  :contact do
			help 'The contact of the hotel'
		end 
#		configure :seasons do
#      inverse_of :hotel_infos
#      field :name
#    end
		
		field  :seasons do
			help 'The seasons of the hotel'
		end 		

		field :when_built do
		  help 'The full name of the hotel'
		end       		
		field :latitude do
		  help 'The full name of the hotel'
		end   
		field :longitude do
		  help 'The full name of the hotel'
		end   
	end
end
