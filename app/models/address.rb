class Address < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :address
  attr_accessible :alternative_phone, :city, :hotel_info_id, :phone, :state_name, :street_address, :zipcode, :fax, :web, :google_map_url, :locate_in
end
