class HotelName < ActiveRecord::Base
  belongs_to :hotel_info, :dependent => :destroy, :inverse_of => :hotel_name
  attr_accessible :hotel_info_id, :hotel_short_name, :name, :index_name, :permalink
end
