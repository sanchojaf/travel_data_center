class HotelInfo < ActiveRecord::Base  
  attr_accessible :hotel_status, :latitude, :longitude, :when_built, 
                  :property_type, :segment, :category, :chain, :check_in, :check_out

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
  attr_accessible :season_ids

  has_many :rooms, :dependent => :destroy, :inverse_of => :hotel_info
  attr_accessible :room_ids
      
end
