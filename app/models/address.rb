class Address < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :address
  attr_accessible :city, :hotel_info_id, :state_name, :street_address, :zipcode, :locate_in
end
